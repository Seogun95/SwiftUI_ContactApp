//
//  ContentView.swift
//  SwiftUI_ContactApp
//
//  Created by 김선중 on 2021/05/03.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(
                    destination: DetailView(contact: contact)) {
                        contactRow(contact: contact)
                    }
                }
            .navigationBarTitle("연락처")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct contactRow: View {
    let contact: Contact
    var body: some View {
        HStack {
            Image(contact.imagename)
                .resizable()
                .scaledToFit()
                .frame(height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(contact.name)
                    .fontWeight(.black)
                Text(contact.phone)
            }
            .padding(.leading, 10)
        }
    }
}
