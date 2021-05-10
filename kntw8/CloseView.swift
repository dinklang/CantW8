//
//  Home.swift
//  kntw8
//
//  Created by user192663 on 5/7/21.
//

import SwiftUI

struct Places: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var color: Color
}

let placesData = [
    Places(name: "Water Gardens",
           image: "water1",
           color: Color(.white)),
    Places(name: "Six Flags Over Texas",
           image: "sixflags1",
           color: Color(.white)),
    Places(name: "Sea Life Aquarium",
           image: "sealife1",
           color: Color(.white)),
    Places(name: "Museum of Science",
           image: "museum1",
           color: Color(.white)),
    Places(name: "Hurricane Harbor",
           image: "hurricane1",
           color: Color(.white))
]

struct ClosePlace: View {
    
    var name = "Place 1"
    var image = "place1"
    var color = Color(.white)
    
    var body: some View {
        ZStack (alignment: .leading) {
            Color("color3")
            VStack {
                Image(image)
                    .resizable()
                    .renderingMode(.original)
                    .frame(width:160, height: 135)
                Text(name)
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.top, 2)
                //}
                Spacer()
            }
        //.background(Color("color3"))
        //.cornerRadius(10)
        }.frame(width: 160, height: 170)
    }
}

struct CloseView: View {
    
    @State var showUpdate = false
    var places = placesData
    
    var body: some View {
        VStack() {
            Location()
            ScrollView(showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Nearby")
                            .font(.subheadline)
                            .padding(.top, 5)
                            .padding(.leading, 15)
                        Spacer()
                    }.padding(.top, 5)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10.0) {
                            ForEach(places) { place in
                                Button(action:
                                        {self.showUpdate.toggle()}) {
                                    ClosePlace(
                                        name: place.name,
                                        image: place.image,
                                        color: place.color)
                                }.sheet(isPresented: self.$showUpdate) { UpdateSpace()}
                            }
                        }
                        .padding(.leading, 15)
                        .padding(.bottom, 10)
                    }
                }
                .background(Color("color2"))
                .padding(.top, 10)
                
                AllView(showUpdate: $showUpdate)
            }
            .offset(y: -13)
        }
    }
}
struct CloseView_Previews: PreviewProvider {
    static var previews: some View {
        CloseView()
    }
}
