
/// A Post
public struct Post: Codable {

    /// The unique identifier for the post.
    public let id: Int

    /// The userId of the post.
    public let userId: Int

    /// The title of the post.
    public let title: String

    /// The body of the post.
    public let body: String 

}

extension Post: Equatable {
    public static func ==(lhs: Post, rhs: Post) -> Bool {
        return lhs.id == rhs.id && lhs.userId == rhs.userId && lhs.title == rhs.title
    }
}
