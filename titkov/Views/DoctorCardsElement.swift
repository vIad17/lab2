import SwiftUI

struct DoctorCardsElement: View {
    
    var image:String;
    var name:String;
    var distance:Double;
    var speciality:String;
    var rating:Double;
    var reviewsCount:Int
    var openTime:String
    
    var body: some View {
        VStack(
            spacing: 20
        ){
            HStack() {
                HStack{
                    Image(image)
                        .resizable()
                        .frame(width: 53, height: 53)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(
                        alignment: .leading, spacing: 8, content: {
                            Text(name)
                                .font(
                                    .custom(Fonts.poppins, size: Sizes.h2)
                                    .bold()
                                )
                                .foregroundColor(Colors.darkBlue)
                            Text(speciality)
                                .font(.custom(Fonts.poppins, size: Sizes.h4))
                                .foregroundColor(Colors.grey)
                        }
                    )
                }
                Spacer()
                HStack{
                    Image("location")
                    Text("\(String(format: "%.1f", distance)) KM")
                        .font(.custom(Fonts.poppins, size: Sizes.h4))
                        .foregroundColor(Colors.grey)
                }
            }
            Divider()
            HStack(
                spacing: 6
            ){
                HStack{
                    Image("clock")
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Colors.yellow)
                    Text("\(String(format: "%.1f", rating)) (\(reviewsCount) Reviews)")
                        .font(.custom(Fonts.poppins, size: Sizes.h5))
                        .foregroundColor(Colors.yellow)
                }
                Spacer()
                HStack(
                    spacing: 6
                ){
                    Image("clock")
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Colors.blue)
                    Text("Open at \(openTime)")
                        .font(.custom(Fonts.poppins, size:Sizes.h5))
                        .foregroundColor(Colors.blue)
                }
                Spacer()
            }
            
        }
        .padding(.horizontal,16)
        .padding(.vertical, 20)
        .cornerRadius(12)
    }
}

struct DoctorCardsElement_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCardsElement(
            image: "mainDoctor",
            name: "Dr. Joseph Brostito",
            distance: 1.2,
            speciality: "Dental Specialist",
            rating: 4.8,
            reviewsCount: 120,
            openTime: "17:00"
       )
    }
}
