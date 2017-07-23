//: Playground - noun: a place where people can play

import UIKit

struct Member: Codable {
    var name: String
    var age: Int
}

let member = Member(name: "Vince", age: 25)
let encoder = JSONEncoder()
if let encoded = try? encoder.encode(member) {
    if let memberJSON = String(data: encoded, encoding: .utf8) {
        print(memberJSON)
    }
}
