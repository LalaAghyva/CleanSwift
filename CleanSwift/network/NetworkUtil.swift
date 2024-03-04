//
//  NetworkUtil.swift
//  AzApi
//
//  Created by Lala on 28.02.24.
//

import UIKit

class NetworkUtil: NSObject {

}

enum HTTPMethod : String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

enum NetworkError : Error {
    case invalidURL
    case noData
    case decodingError
    case httpResponseError(statusCode : Int)
    case unknown(Error)
}
