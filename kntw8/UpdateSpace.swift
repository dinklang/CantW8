//
//  SwiftUIView.swift
//  kntw8
//
//  Created by user192663 on 5/9/21.
//


import SwiftUI

struct UpdateSpace: View {
    
    @State var status = "Empty"
    
   var updates = updateData


   var body: some View {
        ZStack {
         VStack {
            ForEach(updates) { item in
                     VStack(alignment: .leading) {
                        HStack {
                        Text(item.title)
                           .font(.headline)
                            Spacer()
                        }
                        Text(item.text)
                           .lineLimit(2)
                           .lineSpacing(4)
                           .font(.subheadline)
                           .frame(height: 50.0)

                        Text(item.date)
                           .font(.caption)
                           .fontWeight(.bold)
                           .foregroundColor(.gray)
                     }.frame(maxWidth: .infinity)
                     .padding(.leading, 20)
                     .padding(.vertical, 8.0)
                     .foregroundColor(.black)
            }
            VStack {
                HStack{
                    Text("STATUS").fontWeight(.bold)
                        .foregroundColor(.black)
                }
                HStack{
                    Text("Current status: ").fontWeight(.light)
                        .foregroundColor(.black)
                    Text(status).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }.padding(.top, 8)

                HStack(spacing: 30){
                    Button(action: {updateStatus(code: 0)} ) {
                        Text("Empty").foregroundColor(.black)
                    }.frame(width: 100, height: 40)
                    .background(Color(.red))
                    Button(action: {updateStatus(code: 1)}) {
                        Text("Half").foregroundColor(.black)
                    }.frame(width: 100, height: 40)
                    .background(Color(.red))
                    Button(action: {updateStatus(code: 2)}){
                        Text("Crowded").foregroundColor(.black)
                    }.frame(width: 100, height: 40)
                    .background(Color(.red))
                }.padding(.top, 10)
            }
            Spacer()
            
            }
         
        }
   }
    func updateStatus(code: Int) {

        if (code == 0){
            self.status = "Empty"
        }
        else if (code == 1){
            self.status = "Half"
        }
        else if (code == 2){
            self.status = "Crowded"
        }
    }
}


struct Update: Identifiable {
   var id = UUID()
   var title: String
   var text: String
   var date: String
}

let updateData = [
   Update(title: "Restrictions", text: "Mask required. Social distancing.", date: "as of MAY 4"),
   Update(title: "Capacity", text: "100 people", date: "as of MAY 4"),
   Update(title: "Hours", text: "11:00AM - 7:00PM", date: "as of MAY 4")
]

struct UpdateSpace_Previews: PreviewProvider {
    static var previews: some View {
        UpdateSpace()
    }
}
