import SwiftUI

struct Header: View {
    let scrum: UserScrum;
    var body: some View {
            HStack{
                VStack(alignment: .leading, spacing: 6) {
                    Text("Hello,")
                        .font(.custom(Fonts.poppins, size: Sizes.h2))
                        .foregroundColor(Colors.grey)
                        
                    Text("Hi " + scrum.username)
                        .font(
                            .custom(Fonts.poppins, size: Sizes.h1)
                            .weight(.bold)
                        )
                        .foregroundColor(Colors.darkBlue)
                        .padding(0)
                }
                Spacer()
                Button(action: {}) {
                    Image(scrum.image)
                }

            }.padding(0)
//            .frame(width: 375, height: 812)
            .background(.white)
    }
        
    struct Header_Previews: PreviewProvider {
        static var scrum = UserScrum.sampleData
        static var previews: some View {
            Header(scrum: scrum)
        }
    }
}
