//
//  APIConstants.swift
//  4th_Seminar
//
//  Created by 정은희 on 2022/05/07.
//

import Foundation

// 1. 자원(주소)을 모아놓은 파일 준비

struct APIConstants {
    // MARK: - Base URL
    static let baseURL = "http://13.124.62.236"
    
    // MARK: - Feature URL
    static let loginURL = baseURL + "/auth/signin"
}
