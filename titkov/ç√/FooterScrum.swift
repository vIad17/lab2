import Foundation

struct FooterScrum {
    
    var isOpen: Bool

    var imageUrl: String

    var caption: String
}

extension FooterScrum {

    static let sampleData: [FooterScrum] = [
        FooterScrum(
            isOpen: true,
            imageUrl: "home",
            caption: "Home"
        ),
        FooterScrum(
            isOpen: false,
            imageUrl: "calendar",
            caption: "Calendar"
        ),
        FooterScrum(
            isOpen: false,
            imageUrl: "message",
            caption: "Message"
        ),
        FooterScrum(
            isOpen: false,
            imageUrl: "profile",
            caption: "Profile"
        ),
    ]
}
