//
//  UserService.swift
//  4th_Seminar
//
//  Created by 정은희 on 2022/05/07.
//

import Foundation

import Alamofire // ✅ 호출 필수 ! (여기서 통신 시작됨)

// 4. 통신 코드 (Request, Response) 를 담을 파일

class UserService {
    static let shared = UserService()   // 싱글턴으로 선언해, App 어디에서든 해당 객체에 접근할 수 있도록 해줌.
    /*
     Singleton 이란?
     1. 클래스가 App이 시작될 때 최초 한 번만 메모리를 할당해, 그 곳에 인스턴스를 만들어 사용하는 디자인 패턴
     2. 지정한 class의 인스턴스가 유일하게 존재하는 것을 보증하고 싶을 때
        단일 인스턴스로 제한하여 어느 지점에서나 객체를 변경시키고 싶을 때
        한 인스턴스에 여러 곳에서 접근 가능하도록 하고 싶을 때
     3. 환경설정, 네트워크 연결 처리 등에서 사용된다 ...
     */
    private init() { }
    
    func login(name: String,
               email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    {
        // ✅ 요청 항목 준비 (재료 준비)
        let url = APIConstants.loginURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        // ✅ 요청서 작성
        let dataRequest = AF.request(url,   // 통신할 API 주소
                                     method: .post, // HTTP Method
                                     parameters: body,  // 요청 방식!
                                     encoding: JSONEncoding.default,    // 인코딩 방식
                                     headers: header)   // 요청 헤더
        dataRequest.responseData { response in
            switch response.result {
            case .success:
                // 1. 통신 결과의 상태 코드와 값을 가져옴
                guard let statusCode = response.response?.statusCode,
                      let value = response.value
                else { return }
                
                // 2. 결과를 정제해줌
                let networkResult = self.judgeStatus(by: statusCode, value)
                
                // 3. 날림
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)    // 요청 자체가 실패했다고 날림
            }
        }
    }
    
    // 유효한 데이터인지 판단하는 함수
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200:
            return isValidData(data: data)
        case 400:
            return .pathErr
        case 500:
            return .serverErr
        default:
            return .networkFail
        }
    }
    
    // 유효한 데이터라면, 해독.
    private func isValidData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(LoginResponse.self, from: data) else { return .pathErr }
        return .success(decodedData.data as Any)
    }
}
