//
//  FeedLeader.swift
//  EssentialFeed
//
//  Created by Chux Ugonabo MacBook on 2023-03-06.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
