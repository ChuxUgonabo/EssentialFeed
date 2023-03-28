//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialFeedTests
//
//  Created by Chux Ugonabo MacBook on 2023-03-26.
//

import XCTest

extension XCTestCase {
    
    func trackForMemoryLeaks( _ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock{ [weak instance] in
            XCTAssertNil(instance, "INstance should have neen dealocated. Potential memory leak.", file: file, line: line)
        }
    }
    
}
