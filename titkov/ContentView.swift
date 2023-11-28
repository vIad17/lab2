import SwiftUI

struct ContentView: View {
    let userScrum: UserScrum;
    let doctorScrum: DoctorScrum;
    let optionsScrum: [OptionsScrum];
    let doctorsListScrum: [DoctorsListScrum];
    var body: some View {
        NavigationView {
            ScrollView{
                VStack() {
                    Header(scrum: userScrum)
                    Spacer()
                        .frame(height: 32)
                    DoctorCard(scrum: doctorScrum)
                    Spacer()
                        .frame(height: 20)
                    Search()
                    Spacer()
                        .frame(height: 24)
                    OptionsList(scrums: optionsScrum)
                    Spacer()
                        .frame(height: 32)
                    DoctorCardsList(scrums: doctorsListScrum)
                }
                .padding()
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack(
                        spacing: 13,
                        content: {
                            FooterButton(isOpen: true,imageUrl: "home", caption: "Home")
                            FooterButton(isOpen: false,imageUrl: "calendar", caption: "Calendar")
                            FooterButton(isOpen: false,imageUrl: "message", caption: "Message")
                            FooterButton(isOpen: false,imageUrl: "profile", caption: "Profile")
                        }
                    )
                }
            }
                .background(Colors.white)
                .padding(.horizontal, 24)
                .padding(.vertical, 16)
            }
        }
    }
        
struct ContentView_Previews: PreviewProvider {
    static var userScrum = UserScrum.sampleData
    static var doctorScrum = DoctorScrum.sampleData
    static var optionsScrum = OptionsScrum.sampleData
    static var doctorsListScrum = DoctorsListScrum.sampleData
    static var previews: some View {
        ContentView(
            userScrum: userScrum,
            doctorScrum: doctorScrum,
            optionsScrum: optionsScrum,
            doctorsListScrum: doctorsListScrum
        )
    }
}

