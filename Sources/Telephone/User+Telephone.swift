
import Telephone

extension User {

    public static func all(route: Route = Route.shared!) -> Telephone.Resource<[User]> {
        return Telephone.Resource<[User]>(url: route.url(for: .users))
    }

    public static func user(withId id: Int, route: Route = Route.shared!) -> Telephone.Resource<User> {
        return Telephone.Resource<User>(url: route.url(for: .users, id: id))
    }

    public func albums(route: Route = Route.shared!) -> Telephone.Resource<[Album]> {
        let url = route.url(for: .users, id: id)[.albums]
        return Telephone.Resource<[Album]>(url: url)
    }

    public func posts(route: Route  = Route.shared!) -> Telephone.Resource<[Post]> {
        let url = route.url(for: .users, id: id)[.posts]
        return Telephone.Resource<[Post]>(url: url)
    }

    public func todos(route: Route = Route.shared!) -> Telephone.Resource<[Todo]> {
        let url = route.url(for: .users, id: id)[.todos]
        return Telephone.Resource<[Todo]>(url: url)
    }

}
