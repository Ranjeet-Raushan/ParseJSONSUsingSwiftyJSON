//  NestedJSONModel.swift
//  ParseJSONSUsingSwiftyJSON
//  Created by Ranjeet Raushan on 11/17/2020.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation

struct NestedJSONModel: Codable {
    let employee_id: String
    let employee: Employee
}

// MARK: - Employee

struct Employee: Codable {
    let name: String
    let salary: Salary?
    let age: String
}

// MARK: - Salary

struct Salary: Codable {
    let usd: Int
    let eur: Int
}
