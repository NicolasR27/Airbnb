//
//  SearchFilterBar.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/18/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            VStack(alignment:.leading,spacing: 2) {
                Text("Where to?")
                    .font(.caption)
                    .fontWeight(.semibold)

                Text("Anywhere - AnyWeek - Add Guests")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            Button(action: {},label:{
                Image(systemName:"line3.horizontal.decrease.circle")
                    .foregroundStyle(.black)

            })
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay{
            Capsule()
                .stroke(lineWidth:0.5)
                .foregroundStyle(Color(.systemGray6))
                .shadow(color:.black.opacity(0.4),radius:2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
