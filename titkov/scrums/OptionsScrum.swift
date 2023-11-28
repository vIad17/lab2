import Foundation

struct OptionsScrum {

    var title: String
    
    var image: String
}



extension OptionsScrum {
    
    static let sampleData: [OptionsScrum] = [
        OptionsScrum(
            title: "Covid 19",
            image: "sun"
        ),
        OptionsScrum(
            title: "Doctor",
            image: "profile-add"
        ),
        OptionsScrum(
            title: "Medicine",
            image: "medicine"
        ),
        OptionsScrum(
            title: "Hospital",
            image: "hospital"
        )
    ]
}
