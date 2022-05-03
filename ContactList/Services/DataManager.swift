//
//  DataManager.swift
//  ContactList
//
//  Created by Kislov Vadim on 02.05.2022.
//

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Anton", "Dmitriy", "Andrey", "Vasiliy",
        "Leonid", "Vladimir", "Pavel", "Alexandr",
        "Konstantin", "Sergey", "Boris", "Ilya"
    ].shuffled()
    
    let surnames = [
        "Ivanov", "Petrov", "Sidorov", "Kitov",
        "Gvozdev", "Borshev", "Smetanin", "Bobrov",
        "Popov", "Yakovlev", "Denisov", "Ibragimov"
    ].shuffled()
    
    let phones = [
        "+79998232332", "+79890324738", "+79483623883", "+79483627879",
        "+73489302023", "+78439000232", "+74390849020", "+79803213322",
        "+72394892399", "+72399239884", "+72323848349", "+79834999233"
    ].shuffled()
    
    let emails = [
        "cat@gmail.com", "dog@gmail.com", "bird@gmail.com", "crab@gmail.com",
        "fish@gmail.com", "rabbit@gmail.com", "torttle@gmail.com", "fox@gmail.com",
        "bear@gmail.com", "giraf@gmail.com", "raccoon@gmail.com", "whale@gmail.com"
    ].shuffled()
    
    private init() {}
}
