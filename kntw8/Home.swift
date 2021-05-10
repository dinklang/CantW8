//
//  Home.swift
//  kntw8
//
//  Created by user192663 on 5/7/21.
//

import SwiftUI

struct Home: View {
    @State var show = false
    @State var showProfile = false
    
    var body: some View {
        ZStack {
            Color("color1").ignoresSafeArea()
            ZStack(alignment: .top) {
                CloseView()
                HStack {
                    MenuButton(show: $show)
                        .offset(x: -40)
                        Spacer()

                    MenuRight(show: $showProfile)
                       .offset(x: -16)
                }.padding(.top, 50)
                .animation(.spring())

                Spacer()
            }
        }.ignoresSafeArea()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
