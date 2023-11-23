//
//  OptionsList.swift
//  titkov
//
//  Created by  Student on 23.11.2023.
//

import SwiftUI

struct OptionsList: View {
    let scrums: [OptionsScrum]
    var body: some View {
        HStack(
            spacing: 13, content: {
                ForEach(scrums, id: \.title) { scrum in
                    Option(title:scrum.title, image: scrum.image)
                }
            }
        )
    }
}

struct OptionsList_Previews: PreviewProvider {
    static var scrums = OptionsScrum.sampleData
    static var previews: some View {
        OptionsList(scrums: scrums)
    }
}
