//
//  DetailView.swift
//  SwiftUI_ContactApp
//
//  Created by 김선중 on 2021/05/03.
//


import SwiftUI

struct DetailView: View {
    let contact: Contact
    var body: some View {
        VStack {
            Image(contact.imagename)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Text(contact.name)
                .font(.system(size: 30, weight: .black))
            
            Form {
                HStack {
                    Image(systemName: "phone.circle.fill")
                        .renderingMode(.original)
                    Text("전화번호")
                    Spacer()
                    
                    Text(contact.phone)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                HStack {
                    Image(systemName: "at.circle.fill")
                        .renderingMode(.original)
                    Text("이메일")
                    Spacer()
                    
                    Text(contact.email)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "location.circle.fill")
                            .renderingMode(.original)
                        Text("주소")
                    }
                    Text(contact.address)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                
                Section {
                    //메세지 보내기
                    Button(action: {
                        print("메세지를 보냅니다.")
                    }) {
                        HStack {                        Image(systemName: "message.circle.fill")
                            .foregroundColor(.yellow)
                            Text("메세지 보내기")
                                .foregroundColor(.primary)
                        }
                    }
                    // 전화
                    Button(action: {
                        print("전화를 겁니다.")
                    }) {
                        HStack {                        Image(systemName: "phone.circle.fill")
                            .renderingMode(.original)
                            Text("전화")
                                .foregroundColor(.primary)
                            
                        }
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: contacts[0])
    }
}
