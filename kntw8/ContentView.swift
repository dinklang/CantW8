//
//  rand.swift
//  kntw8
//
//  Created by user192663 on 5/7/21.
//

import SwiftUI

struct ContentView: View {
    // isLoading makes sure app loaded correctly
    @State private var isLoading = false

    var body: some View {
        ZStack {
            if isLoading {
                LoadingView()
            }
            if !isLoading {
                Home()
            }
        }.onAppear() { networkCall() }
    }
    
    func networkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            isLoading = false
        }
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .red) ).scaleEffect(3)
        }
    }
}
//struct Home: View {
//
//    // push: bool toggled in button
//    @State private var push = false
//
//    var body: some View {
//        if !push {
//            View1(push: $push).transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
//        }
//        if push {
//            View2(push: $push).transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
//        }
//    }
//}
//
//struct View1: View {
//    @Binding var push: Bool
//
//    var body: some View {
//        ZStack {
//
//            Color.green.ignoresSafeArea()
//            Button(action: {
//                withAnimation(.easeOut(duration: 0.3)) {
//                    push.toggle()
//                }
//            }) {
//                Text("PUSH")
//            }
//        }
//    }
//}
//
//struct View2: View {
//    @Binding var push: Bool
//
//    var body: some View {
//        ZStack {
//            Color.yellow.ignoresSafeArea()
//            Button(action: {
//                withAnimation(.easeOut(duration: 0.3)) {
//                    self.push.toggle()
//                }
//            }) {
//                Text("POP")
//            }
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
        ContentView()
    }
  }
}
