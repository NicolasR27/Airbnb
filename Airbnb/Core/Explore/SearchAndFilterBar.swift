//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/18/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            VStack(alignment: .leading, spacing: 2) {
                Text("where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)

                Text("Any where - Any week- add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)

            }
            Spacer()

            Button(action: {},label: {
                Image(systemName: "line.horizontal.3.decrease.circle.fill")
                foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color.gray)
                .shadow(color:.black, radius: 2)

        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
