//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Chux Ugonabo MacBook on 2023-03-07.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
