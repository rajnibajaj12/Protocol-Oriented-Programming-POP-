//
//  Protocoles.swift
//  POPWithExampleIOS
//
//  Created by Rajni on 30/11/25.
//

import Foundation


protocol ExpenseCellUpdatable: AnyObject {
    func didUpdateExpense(at index: Int, title: String?, amount: String?)
}
