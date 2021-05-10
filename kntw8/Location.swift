//
//  SwiftUIView.swift
//  kntw8
//
//  Created by user192663 on 5/7/21.
//

import SwiftUI

struct Location: View {
    var body: some View {
            VStack {
                VStack {
                    Spacer()
                    Text("Your Location")
                        .font(.subheadline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Text("Fort Worth, Tx")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color("color3"))
                }.padding(.bottom, 5)
                //Spacer()
            }//.frame(height: 40)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 100)
            .ignoresSafeArea()

        .background(Color("color2"))
        
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
