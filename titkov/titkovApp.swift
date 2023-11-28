import SwiftUI

@main
struct titkovApp: App {
    var userScrum = UserScrum.sampleData
    var doctorScrum = DoctorScrum.sampleData
    var optionsScrum = OptionsScrum.sampleData
    var doctorsListScrum = DoctorsListScrum.sampleData
    var footerScrum = FooterScrum.sampleData

    var body: some Scene {
        WindowGroup {
                ContentView(
                userScrum: userScrum,
                doctorScrum: doctorScrum,
                optionsScrum: optionsScrum,
                doctorsListScrum: doctorsListScrum,
                footerScrum: footerScrum
            )
        }
    }
}
