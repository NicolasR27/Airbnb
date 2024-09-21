//
//  ProfileView.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/21/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading ,spacing: 32) {

                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Login to start planning your next trip")
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
                HStack {
                    Text("dont have an account?")
                    
                    Text("Signup")
                        .fontWeight(.semibold)
                    
                }
                .font(.caption)
            }

            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")


            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
