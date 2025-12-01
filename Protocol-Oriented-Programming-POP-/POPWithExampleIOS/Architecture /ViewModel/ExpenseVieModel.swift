//
//  ExpenseVieModel.swift
//  POPWithExampleIOS
//
//  Created by Rajni on 30/11/25.
//

import Foundation

class  ExpenseViewModel {
    
    private(set) var items: [ExpenseItem] = []
    private(set) var fullExpense: [ExpenseItem] = []
    
    
    func addNewExpense() {
            let newItem = ExpenseItem(title: "", amount: "")
            items.append(newItem)
        print("item Count: \(items.count)")
    }
    
    func updateItem(at index: Int, title: String, amount: String) {
           let updated = ExpenseItem(title: title, amount: amount)
            items[index] = updated
       }
    
    func ResetItems() {
        items.removeAll()
    }
    
    func submitExpenses() {
            fullExpense.append(contentsOf: items)
            items.removeAll()
    }
    
}
