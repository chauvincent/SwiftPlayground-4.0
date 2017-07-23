//: Playground - noun: a place where people can play

import UIKit

// MARK: - Codable

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
encoder.outputFormatting = .prettyPrinted
encoder.dateEncodingStrategy = .secondsSince1970

let decoder = JSONDecoder()
encoder.outputFormatting = .prettyPrinted
encoder.dateEncodingStrategy = .secondsSince1970

// Data -> JSON
if let encoded = try? encoder.encode(member), let parameters = String(data: encoded, encoding: .utf8) {
    print(parameters)
    if let decoded = try? decoder.decode(Member.self, from: encoded) {
        print(decoded.name) // JSON -> Data, no type cast needed
    }
} // Parameters are now in JSON, can save or pass to a network request

// MARK: - Multiline String literals

let longMessageAboutPolicies = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sollicitudin lacus eget porta blandit. Aliquam leo magna, fringilla at metus ut, mattis feugiat tortor. Proin aliquet, libero vel viverra facilisis, purus est congue nisi, at rhoncus justo ante ac augue. Proin sagittis suscipit sem. Aenean posuere mauris eu tincidunt tincidunt. Cras non libero sodales, efficitur orci non, suscipit turpis. In tempus magna nisl, a maximus nunc sodales a. Nam scelerisque eu orci quis lobortis. Vivamus finibus molestie diam, sit amet fringilla mi porta id. Proin varius nisl at lectus pharetra, ac porttitor nibh condimentum. Nullam a lectus euismod, efficitur urna in, luctus elit. Fusce commodo velit at enim consectetur, non congue mi rhoncus.
"""

let policyText = NSLocalizedString(longMessageAboutPolicies, comment: "Message on label about Private Policies.")




