
/// 
public struct Comment: Codable {

    /// A comment's unique id.
    public let id: Int

    /// A comment's postId.
    public let postId: Int

    /// A comment's name.
    public let name: String

    /// A comment's author's email address.
    public let email: String

    /// A comment's body.
    public let body: String
    
}

extension Comment: Equatable {
    public static func ==(lhs: Comment, rhs: Comment) -> Bool {
        return lhs.id == rhs.id && lhs.postId == rhs.postId && lhs.name == rhs.name && lhs.email == rhs.email && lhs.body == rhs.body
    }
}
