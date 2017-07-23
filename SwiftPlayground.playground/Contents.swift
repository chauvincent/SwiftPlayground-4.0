//: Playground - noun: a place where people can play

import UIKit

struct Member: Codable {
    fileprivate var _name: String
    fileprivate var _age: Int

    var name: String {
        return _name
    }

    var age: Int {
        return _age
    }

    init(name: String, age: Int) {
        _name = name
        _age = age
    }
}

let member = Member(name: "Vince", age: 25)
let encoder = JSONEncoder()
let decoder = JSONDecoder()

// Data -> JSON
if let encoded = try? encoder.encode(member), let parameters = String(data: encoded, encoding: .utf8) {
    print(parameters)

    // JSON -> Data
    if let decoded = try? decoder.decode(Member.self, from: encoded) {
        print(decoded.name)
    }

} // Parameters are now in JSON, can save or pass to a network request





