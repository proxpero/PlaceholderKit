//
//  UserTests.swift
//  PlaceholderKit
//
//  Created by Todd Olsen on 6/21/17.
//

import XCTest
@testable import PlaceholderKit

class UserCodingTests: XCTestCase {

    let json = """
        {
            "id": 1,
            "name": "Leanne Graham",
            "username": "Bret",
            "email": "Sincere@april.biz",
            "address": {
                "street": "Kulas Light",
                "suite": "Apt. 556",
                "city": "Gwenborough",
                "zipcode": "92998-3874",
                "geo": {
                    "lat": "-37.3159",
                    "lng": "81.1496"
                }
            },
            "phone": "1-770-736-8031 x56442",
            "website": "hildegard.org",
            "company": {
                "name": "Romaguera-Crona",
                "catchPhrase": "Multi-layered client-server neural-net",
                "bs": "harness real-time e-markets"
            }
        }
        """

    let object = User(
            id: 1,
            name: "Leanne Graham",
            username: "Bret",
            email: "Sincere@april.biz",
            address: User.Address(
                street: "Kulas Light",
                suite: "Apt. 556",
                city: "Gwenborough",
                zipcode: "92998-3874",
                geo: User.Address.Geo(
                    lat: "-37.3159",
                    lng: "81.1496"
                )
            ),
            phone: "1-770-736-8031 x56442",
            website: "hildegard.org",
            company: User.Company(
                name: "Romaguera-Crona",
                catchPhrase: "Multi-layered client-server neural-net",
                bs: "harness real-time e-markets"
            )
        )
    
    func testDecodeUser() {
        let item = Item(json: json, object: object)
        testDecode(item: item)
    }

    func testEncodeDecodeUser() {
        let item = Item(json: json, object: object)
        testEncodeDecode(item: item)
    }
}
