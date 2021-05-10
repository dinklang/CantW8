//
//  AllView.swift
//  kntw8
//
//  Created by user192663 on 5/8/21.
//

import SwiftUI

struct AllView: View {
    @Binding var showUpdate: Bool
    
    var places = placesData
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(places) { place in
                        Button(action: {self.showUpdate.toggle()}) {
                            Place(name: place.name,
                                  image: place.image)
                        }.sheet(isPresented: self.$showUpdate) { UpdateSpace()}
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }
                }

            }
        }
        .background(Color("color2"))
    }
}

struct Place: View {
    var name = "Place1"
    var image = "image1"
    var color = Color(.white)
    
    var body: some View {
        VStack {
            Text(name)
                .padding(.top, 10)
                .foregroundColor(Color("color5"))
            Image(image)
                .resizable()
                .renderingMode(.original)
        }.frame(height: 300)
    }
}
