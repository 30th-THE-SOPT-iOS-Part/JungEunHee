//
//  NetworkResult.swift
//  4th_Seminar
//
//  Created by 정은희 on 2022/05/07.
//

import Foundation

// 2. 서버통신 결과를 담을 파일 준비

enum NetworkResult<T> {
    /*
     서버통신 결과값을 제네릭(= 타입 프로퍼티)으로 선언 → 지금 당장 타입을 정하지 않겠다는 의미
     (=> 다양한 타입을 이 자리에 받아오겠다)
     */
    case success(T) // 서버통신 성공
    case requestErr(T)  // 요청 오류 발생
    case pathErr    // 경로 오류
    case serverErr  // 서버 내부 오류
    case networkFail    // 네트워크 연결 실패
}
