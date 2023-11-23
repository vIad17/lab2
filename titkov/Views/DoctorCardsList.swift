import SwiftUI

struct DoctorCardsList: View {
    let scrums: [DoctorsListScrum]
    var body: some View {
        VStack(
            spacing: 16,
            content: {
                HStack{
                    Text("Near Doctor")
                    Spacer()
                }
                VStack(
                    spacing: 12,
                    content: {
                        ForEach(scrums, id: \.name) { scrum in
                            DoctorCardsElement(
                                image: scrum.image,
                                name: scrum.name,
                                distance: scrum.distance,
                                speciality: scrum.speciality,
                                rating: scrum.rating,
                                reviewsCount: scrum.reviewsCount,
                                openTime: scrum.openTime
                            )
                        }
                    }
                )
                
            }
        )
    }
}

struct DoctorCardsList_Previews: PreviewProvider {
    static var scrums = DoctorsListScrum.sampleData
    static var previews: some View {
        DoctorCardsList(scrums: scrums)
    }
}
