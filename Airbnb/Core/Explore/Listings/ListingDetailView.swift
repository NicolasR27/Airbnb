//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/18/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {

    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(Color.white)
                                .frame(width: 32, height: 32)
                    }
                    .padding(32)
                }
            }

            VStack(alignment: .leading,spacing: 8) {
                Text("Maimi Village")
                    .font(.title)
                    .fontWeight(.semibold)

                VStack(alignment: .leading) {
                    HStack(spacing:2) {
                        Image(systemName: "star.fill")

                        Text("4.8")

                        Text(" _ ")

                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)

                    }
                    .foregroundStyle(.black)

                    Text("Miami Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)

            Divider()

            HStack {
                VStack(alignment: .leading,spacing: 4) {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)

                    HStack(spacing:2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)

                }
                .frame(width:300,alignment:.leading)


                Spacer()

                Image("male-profile-photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()

            Divider()

            VStack(alignment: .leading,spacing: 16) {
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")

                        VStack(alignment: .leading) {
                            Text("SuperHost")
                                .font(.footnote)
                                .fontWeight(.semibold)

                            Text("Superhosts are experienced, highly rated hosts who have been through many challenges and who have a proven track record of delivering exceptional service.")
                                .font(.caption)
                                .foregroundStyle(.gray)

                        }
                        Spacer()

                    }
                }
                .padding()
            }

            Divider()

            VStack(alignment: .leading,spacing: 16) {
                Text("where youll sleep")
                    .font(.headline)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1..<5) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                Text("bed\(bedroom)")

                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth:1)
                                    .foregroundStyle(.gray)

                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
                .padding()
            }
            .padding()

            Divider()

            VStack(spacing: 16) {
                Text("what this place offers")

                ForEach(0 ..< 5 ) { feature in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)

                        Text("wifi")
                            .font(.footnote)

                        Spacer()
                    }

                }
            }
            .padding()

            Divider()
            VStack(alignment: .leading,spacing: 16) {
                Text( "where youll be")
                    .font(.headline)

                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

            }
            .padding()

        }
        .toolbar(.hidden,for:.tabBar)
        .ignoresSafeArea()
        .padding(.bottom,64)
        .overlay(alignment:.bottom) {
            VStack{
                Divider()
                    .padding(.bottom)

                HStack {
                    VStack(alignment: .leading) {
                        Text("500")
                            .font(.subheadline)

                        Text("total before taxes")
                            .font(.footnote)

                        Text("October 15-20")
                            .font(.footnote)
                            .underline()


                    }
                    Spacer()

                    Button {
//                        .tabItem { Label("Explore",systemImage:"magnifyingGlass") }
                    }label:{
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                .padding(.horizontal)
            }
            .background(.white)
        }

    }
}


#Preview {
    ListingDetailView()
}
