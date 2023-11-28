//
//  Search.swift
//  titkov
//
//  Created by  Student on 23.11.2023.
//

import SwiftUI

struct Search: View {
    @State private var searchText = ""
    var body: some View {
        HStack{
            Image("search-normal")
                .resizable()
                .frame(
                    width: 24, height: 24
                )
            TextField("Search doctor or health issue", text: $searchText,
                      prompt: Text("Search doctor or health issue")
                .font(.custom("Poppins-Regular", size:15))
                .foregroundColor(Colors.grey)
            )
            .foregroundColor(Colors.grey)
        }
        .padding(16)
        .background(Colors.lightGrey)
        .cornerRadius(12)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
