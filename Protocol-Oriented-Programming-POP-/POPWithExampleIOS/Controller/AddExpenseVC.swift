//
//  AddExpenseVC.swift
//  POPWithExampleIOS
//
//  Created by Rajni on 30/11/25.
//

import UIKit

class AddExpenseVC: UIViewController, UITableViewDelegate , UITableViewDataSource, ExpenseCellUpdatable {
   
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel = ExpenseViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @IBAction func actionBtnTapped(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            self.navigationController?.popViewController(animated: true )
        case 2:
            print("Add Expense")
            viewModel.addNewExpense()
            self.tableView.reloadData()
        case 3:
            self.view.endEditing(true)
            viewModel.submitExpenses()
            viewModel.ResetItems()
            self.navigationController?.popViewController(animated: true )
            print("Submit Button")
        default:
            break
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddExpenceTVCell", for: indexPath) as! AddExpenceTVCell
        cell.rowIndex = indexPath.row
        cell.delegate = self
        cell.titleTF.text = viewModel.items[indexPath.row].title
        cell.expenseTF.text = viewModel.items[indexPath.row].amount
        cell.expenseTitle.text = "Expense \(indexPath.row + 1)"
        return cell
    }
    
    func didUpdateExpense(at index: Int, title: String?, amount: String?) {
        print("Item updated \(index) , \(title)  , \(amount) ")
        viewModel.updateItem(at: index, title: title ?? "" , amount: amount ?? "")
    }

}


