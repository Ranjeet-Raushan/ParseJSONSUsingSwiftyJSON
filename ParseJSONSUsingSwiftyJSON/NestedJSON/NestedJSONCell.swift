//  NestedJSONCell.swift
//  ParseJSONSUsingSwiftyJSON
//  Created by Ranjeet Raushan on 11/17/2020.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import UIKit

class NestedJSONCell: UITableViewCell {
    @IBOutlet var employeeIdLabel: UILabel!
    @IBOutlet var employeeNameLabel: UILabel!
    @IBOutlet var employeeSalaryUSDLabel: UILabel!
    @IBOutlet var employeeSalaryEURLabel: UILabel!
    @IBOutlet var employeeAgeLabel: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        employeeIdLabel.text = ""
        employeeNameLabel.text = ""
        employeeSalaryUSDLabel.text = ""
        employeeSalaryEURLabel.text = ""
        employeeAgeLabel.text = ""
    }
}
