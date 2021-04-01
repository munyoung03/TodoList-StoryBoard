//
//  Todo.swift
//  TodoList-StroyBoard
//
//  Created by  LeeMunYoung on 2021/04/01.
//

import UIKit

struct Todo: Codable, Equatable{
    var day: String
    var date: String
    
    init(day: String, date: String){
        self.day = day
        self.date = date
    }
}
