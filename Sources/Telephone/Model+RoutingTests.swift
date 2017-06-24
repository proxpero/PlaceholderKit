//
//  UserRoutingTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/23/17.
//

import XCTest
import Telephone
@testable import PlaceholderKit

class ModelRoutingTests: XCTestCase {

    func testUrlEndpointAll() {
        let route = Route(host: "example.com")
        let endpoint = Endpoint.users
        let url = route.url(for: endpoint)
        XCTAssertEqual(url, URL(string: "https://example.com/users"))
    }

    func testURLEndpointId() {
        let route = Route(host: "example.com")
        let endpoint = Endpoint.users
        let id = 1
        let url = route.url(for: endpoint, id: id)
        XCTAssertEqual(url, URL(string: "https://example.com/users/1"))
    }

    func testURLEndpointSubscript() {
        let baseUrl = URL(string: "https://example.com")!
        let fullUrl = baseUrl[Endpoint.users]
        XCTAssertEqual(fullUrl, URL(string: "https://example.com/users"))
    }

    func testURLIdSubscript() {
        let baseUrl = URL(string: "https://example.com")!
        let fullUrl = baseUrl[Endpoint.users]
        let id = 1
        let url = fullUrl[id]
        XCTAssertEqual(url, URL(string: "https://example.com/users/1"))
    }
}

class UserRoutingTests: XCTestCase {

    func testAllUsersResource() {

        let route = Route(host: "example.com")
        let allUsersResource = User.all(route: route)

        let expectation = Telephone.Resource(url: URL(string: "example.com")!) { data in
            return [User]()
        }
        XCTAssertEqual(allUsersResource.url, expectation.url)


    }


    
}
