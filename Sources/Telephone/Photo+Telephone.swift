
import Telephone

#if os(iOS) || os(tvOS)
    import UIKit
    typealias Image = UIImage
#elseif os(macOS)
    import AppKit
    typealias Image = NSImage
#endif

extension Photo {

    var thumbnailResource: Resource<Image> {
        let url = URL(string: thumbnailUrl)!
        return Resource<Image>(url: url) { data in
            return Image(data: data)
        }
    }

    var imageResource: Resource<Image> {
        let url = URL(string: self.url)!
        return Resource<Image>(url: url) { data in
            return Image(data: data)
        }
    }

}
