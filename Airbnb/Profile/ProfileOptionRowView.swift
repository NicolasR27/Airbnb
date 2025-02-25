//
//  ProfileOptionRowView.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/21/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName:String
    let title: String

    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)

                Spacer()

                Image(systemName: "chevron.right")
            }
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "", title: "")
}
