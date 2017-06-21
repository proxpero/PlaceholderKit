import Foundation

/// A photo album.
public struct Album: Codable {

    /// The `id` property of the `User` who owns this album.
    public let userId: Int

    /// The unique identifier of the album.
    public let id: Int

    /// The title of the album.
    public let title: String

}

extension Album: Equatable {
    public static func ==(lhs: Album, rhs: Album) -> Bool {
        return lhs.id == rhs.id && lhs.userId == rhs.userId && lhs.title == rhs.title
    }
}
