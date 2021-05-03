//
//  Contact.swift
//  SwiftUI_ContactApp
//
//  Created by 김선중 on 2021/05/03.
//


import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    
    var imagename: String
    var name: String
    var phone:String
    var email: String
    var address: String

}

let contacts = [
    Contact(imagename: "JohnWood", name: "John Wood", phone: "+82 10 1234 6523", email: "john@gmail.com", address: "애플시 스위프트구 이룡동 서근아파트 105동"),
    Contact(imagename: "Leon", name: "Leon", phone: "+82 10 1224 3423", email: "Leon@gmail.com", address: "애플시 스위프트구 이룡동 서근아파트 102동"),
    Contact(imagename: "JacquelineWallace", name: "Jacqueline Wallace", phone: "+82 10 3322 2223", email: "wallace@gmail.com" , address: "애플시 스위프트구 이룡동 서근아파트 105동"),
    Contact(imagename: "RaymondLong", name: "Raymond Long", phone: "+82 10 2234 1423", email: "ray@gmail.com" , address: "애플시 스위프트구 이룡동 서근아파트 101동"),
    Contact(imagename: "PerryMurphy", name: "Perry Murphy", phone: "+82 10 1134 4223", email: "murphy@gmail.com" , address: "애플시 스위프트구 이룡동 서근아파트 102동"),
    Contact(imagename: "TerraLee", name: "Terra Lee", phone: "+82 10 1234 3423", email: "Terra@gmail.com" , address: "애플시 스위프트구 이룡동 서근아파트 103동")
]

