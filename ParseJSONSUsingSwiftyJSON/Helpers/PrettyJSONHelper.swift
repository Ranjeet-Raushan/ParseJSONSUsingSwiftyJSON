//  PrettyJSONHelper.swift
//  ParseJSONSUsingSwiftyJSON
//  Created by Ranjeet Raushan on 11/17/2020.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation

class PrettyJSONHelper {
    func convertPretty(data: Data) -> String? {
        do {
            guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                print("Error: Cannot convert data to JSON object")
                return ""
            }

            guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                print("Error: Cannot convert JSON object to Pretty JSON data")
                return ""
            }
            guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                print("Error: Could print JSON in String")
                return ""
            }
            return prettyPrintedJson
        } catch {
            print("Error: Trying to convert JSON data to string")
            return ""
        }
    }

    func convertPrettyArray(data: Data) -> String? {
        do {
            guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [Any] else {
                print("Error: Cannot convert data to JSON object")
                return ""
            }

            guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                print("Error: Cannot convert JSON object to Pretty JSON data")
                return ""
            }
            guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                print("Error: Could print JSON in String")
                return ""
            }
            return prettyPrintedJson
        } catch {
            print("Error: Trying to convert JSON data to string")
            return ""
        }
    }
}
