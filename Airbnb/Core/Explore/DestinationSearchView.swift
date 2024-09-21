//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/20/24.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location

    var body: some View {
        VStack {
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }

            }label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.red)
            }
            VStack(alignment: .leading) {
                if selectedOption == .location{


                    Text("Where to")
                        .font(.headline)
                        .fontWeight(.semibold)

                    HStack {
                        Image(systemName: "magnifyinglass")
                            .imageScale(.small)

                        TextField("Search destinations",text: $destination)
                            .font(.subheadline)

                    }
                    .frame(height:44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray5))

                    }
                } else {
                    CollaspedPickerView(title: "where", description: "Add destination")

                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                selectedOption = .location
            }
            //Date selection VIEW
            VStack {
                if selectedOption == .dates {
                    HStack{
                        Text(" show expanded view")
                        Spacer()
                    }

                } else {
                    CollaspedPickerView(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates}


            }

            VStack {
                if selectedOption == .guests {
                    HStack{
                        Text(" show expanded view")
                        Spacer()

                    }
                } else {
                    CollaspedPickerView(title: "Who", description: "Add Guests")

                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }

            }
            }
        }
    }



#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollaspedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack{
            HStack {
                Text(title)
                    .foregroundStyle(.gray)

                Spacer()

                Text(description)

            }
            .fontWeight(.semibold)
            .font(.subheadline)

        }

    }
}
