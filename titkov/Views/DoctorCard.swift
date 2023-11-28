import SwiftUI

struct DoctorCard: View {
    let scrum: DoctorScrum;
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 12){
                Button(action: {}) {
                    Image(scrum.image)
                        .resizable()
                        .frame(width: 58, height: 58)
                        .background(Colors.white)
                        .clipShape(Circle())
                }
                VStack(
                    alignment: .leading, spacing: 8
                ){
                    Text(scrum.name)
                        .font(
                            .custom(Fonts.poppins, size: Sizes.h2)
                            .weight(.bold)
                        	)
                        .foregroundColor(Colors.white)
                    Text(scrum.speciality)
                        .font(.custom(Fonts.poppins, size: Sizes.h4))
                        .foregroundColor(Colors.lightBlue)
                }
                Spacer()
                Button (action: {}){
                    Image("arrowRight")
                }
            }
            Divider()
                .background(Colors.white)
                .opacity(0.15)
            HStack(
                spacing: 30
            ){
                HStack{
                    Image("calendar")
                        .resizable()
                        .frame(
                            width: 16, height: 16
                        )
                        .foregroundColor(Colors.white)
                    Text(scrum.visitDate)
                        .font(.custom(Fonts.poppins, size:Sizes.h5))
                        .foregroundStyle(Colors.white)
                }
                HStack{
                    Image("clock")
                        .resizable()
                        .frame(
                            width: 16, height: 16
                        )
                        .foregroundStyle(Colors.white)
                    Text(scrum.timeDuration)
                        .font(.custom(Fonts.poppins, size:Sizes.h5))
                        .foregroundStyle(Colors.white)
                }
            }
        }
        .padding(20)
        .frame(width: 327, height: 138)
        .background(Colors.blue)
        .cornerRadius(12)
    }
    
        
    struct DoctorCard_Previews: PreviewProvider {
        static var scrum = DoctorScrum.sampleData
        static var previews: some View {
            DoctorCard(scrum: scrum)
        }
    }
}

