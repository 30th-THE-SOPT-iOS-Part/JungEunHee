//
//  LoginModel.swift
//  4th_Seminar
//
//  Created by 정은희 on 2022/05/07.
//

import Foundation

// 3. (요청 성공 시) 데이터를 받아올 모델 생성

/*
 {} : 객체 (Object) → struct, class 등
 []: 배열 (Array) → key:value 형태
 
 - 객체가 어느 부분인지 파악하는 것이 중요하다 !
 */

/*
 {
     "status": 200,
     "message": "로그인 성공",
     "data": {
         "name": "eunhee",
         "email": "bap4165@icloud.com"
     }
 }
 */

struct LoginResponse: Codable {
    let status: Int
    let message: String
    let data: LoginData?    // 서버통신 요청은 성공했지만, 데이터가 넘어오지 않을 경우를 대비하여 Optional로 처리. (ex - 비번 잘못쳐서 로그인 안됨)
}

struct LoginData: Codable {
    let name: String
    let emial: String
}
