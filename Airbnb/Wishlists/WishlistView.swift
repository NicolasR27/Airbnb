//
//  WishlistView.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/21/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment:.leading,spacing: 32) {

                VStack(alignment: .leading,spacing: 4) {
                    Text("Login to view wishlists")
                        .font(.headline)

                    Text("you can create view,or edit wishlists youve logged in")
                        .font(.footnote)
                }
                Button {
                    print("login")
                }label:{
                    Text("login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 48)
                        .background(.orange)
                        .clipShape(RoundedRectangle(cornerRadius:8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
