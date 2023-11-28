import Foundation

struct DoctorScrum {

    var name: String
    
    var speciality: String
    
    var visitDate: String
    
    var timeDuration: String

    var image: String
}



extension DoctorScrum {

    static let sampleData: DoctorScrum = DoctorScrum(
        name: "Dr. Imran Syahir",
        speciality: "General Doctor",
        visitDate: "Sunday, 12 June",
        timeDuration: "11:00 - 12:00 AM",
        image: "mainDoctor"
    
    )
}
