import SwiftUI

struct FooterButton: View {
    var isOpen = false;
    var imageUrl:String;
    var caption:String;
    
    var body: some View {
        HStack(
            spacing: 8, content: {
                Image(imageUrl)
                    .resizable()
                    .frame(
                        width: 24, height: 24
                    )
                    .foregroundColor(isOpen ? Colors.blue : Colors.grey)
                Text(isOpen ? caption : "")
                    .font(
                        .custom(Fonts.poppins, size: Sizes.h4)
                        .weight(.bold)
                    )
                    .foregroundColor(Colors.blue)
            }
        )
        .padding(12)
        .background(isOpen ? Colors.mediumBlue : Colors.white)
        .cornerRadius(12)
    }
}

struct FooterButton_Previews: PreviewProvider {
    static var previews: some View {
        FooterButton(isOpen: false,imageUrl: "home", caption: "Home")
    }
}
