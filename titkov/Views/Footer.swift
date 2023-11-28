//
//  Footer.swift
//  titkov
//
//  Created by User on 28.11.2023.
//

import SwiftUI

struct Footer: View {
    let scrums: [FooterScrum]
    var body: some View {
        HStack(
            spacing: 13,
            content: {
                ForEach(scrums, id: \.caption) { scrum in
                    FooterButton(
                        isOpen: scrum.isOpen,
                        imageUrl: scrum.imageUrl,
                        caption: scrum.caption
                    )
                }
            }
        )
    }
}

struct Footer_Previews: PreviewProvider {
    static var scrums = FooterScrum.sampleData
    static var previews: some View {
        Footer(scrums: scrums)
    }
}
