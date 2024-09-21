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
    @State private var startDate = Date()
    @State private var numGuests = 0

    var body: some View {
        VStack {
            HStack{
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }

                }label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.red)
                }

                Spacer()

                if !destination.isEmpty {
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()

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
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollaspedPickerView(title: "where", description: "Add destination")

                }
            }

            .modifier(CollaspibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120: 64)
            .onTapGesture {
                withAnimation(.snappy){ selectedOption = .location}
            }
        }
        //Date selection VIEW
        VStack(alignment: .leading) {
            if selectedOption == .dates {
                Text("whens your trip")
                    .font(.title2)
                    .fontWeight(.semibold)

                VStack {
                    DatePicker("From",selection: $startDate,displayedComponents: .date)

                    Divider()

                    DatePicker("To",selection: $startDate,displayedComponents: .date)
                }

            } else {
                CollaspedPickerView(title: "When", description: "Add dates")
            }
        }
        .modifier(CollaspibleDestinationViewModifier())
        .frame(height: selectedOption == .dates ? 180: 64)
        .onTapGesture {
            withAnimation(.snappy) { selectedOption = .dates}

        }

        VStack(alignment: .leading) {
            if selectedOption == .guests {
                Text("Whos comming")
                    .font(.title)
                    .fontWeight(.semibold)

                Stepper {
                    Text("\(numGuests) Adults")
                } onIncrement: {
                    numGuests += 1
                } onDecrement: {
                    guard numGuests >  0 else {return}
                    numGuests -= 1
                }

            } else {
                CollaspedPickerView(title: "Who", description: "Add Guests")

            }
        }
        .modifier(CollaspibleDestinationViewModifier())
        .frame(height: selectedOption == .guests ? 120: 64)
        .onTapGesture {
            withAnimation(.snappy) { selectedOption = .guests }
        }
        Spacer()
    }
}


#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollaspibleDestinationViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
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
