//
//  Person.swift
//  ContactList
//
//  Created by Kislov Vadim on 02.05.2022.
//
struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shared
        let count = dataManager.names.count
        
        for index in 0..<count {
            let person = Person(
                name: dataManager.names[index],
                surname: dataManager.surnames[index],
                phone: dataManager.phones[index],
                email: dataManager.emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
