/// A User.
struct User: Codable {

    /// A user's address.
    struct Address: Codable {

        /// A representation of geographic coordinates.
        struct Geo: Codable {

            /// The latitude.
            let lat: String

            /// The longitude.
            let lng: String

        }

        /// The street name.
        let street: String

        /// The suite identifier.
        let suite: String

        /// The city.
        let city: String

        /// The zipcode.
        let zipcode: String

        /// The geographic coordinates of the address.
        let geo: Geo

    }

    /// A Company.
    struct Company: Codable {

        /// The name of the company.
        let name: String

        /// The catchphrase of the company.
        let catchPhrase: String

        /// Some bullshit description of the company's activity.
        let bs: String

    }

    /// The unique identifier of the user.
    let id: Int

    /// The name of the user.
    let name: String

    /// The username of the user.
    let username: String

    /// The email address of the user.
    let email: String

    /// The address of the user.
    let address: Address

    /// The phone number of the user.
    let phone: String
    
    /// The website of the user.
    let website: String
    
    /// The user's company.
    let company: Company
    
}

extension User: Equatable {

    public static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id &&
            lhs.name == rhs.name &&
            lhs.username == rhs.username &&
            lhs.email == rhs.email &&
            lhs.address == rhs.address &&
            lhs.phone == rhs.phone &&
            lhs.website == rhs.website &&
            lhs.company == rhs.company
    }

}

extension User.Address: Equatable {

    public static func ==(lhs: User.Address, rhs: User.Address) -> Bool {
        return lhs.street == rhs.street && lhs.suite == rhs.suite && lhs.city == rhs.city && lhs.zipcode == rhs.zipcode && lhs.geo == rhs.geo
    }

}

extension User.Address.Geo: Equatable {

    public static func ==(lhs: User.Address.Geo, rhs: User.Address.Geo) -> Bool {
        return lhs.lat == rhs.lat && lhs.lng == rhs.lng
    }

}

extension User.Company: Equatable {

    public static func ==(lhs: User.Company, rhs: User.Company) -> Bool {
        return lhs.name == rhs.name && lhs.catchPhrase == rhs.catchPhrase && lhs.bs == rhs.bs
    }

}

