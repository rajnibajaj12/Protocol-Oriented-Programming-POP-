//
//  HistoryVC.swift
//  POPWithExampleIOS
//
//  Created by Rajni on 30/11/25.
//

import UIKit

class HistoryVC: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel: ExpenseViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @IBAction func actionBackbtn(_ sender:UIButton){
        self.navigationController?.popViewController(animated: true )
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fullExpense.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionHistoryTVCell", for: indexPath) as! TransactionHistoryTVCell
        cell.titleLbl.text = viewModel.fullExpense[indexPath.row].title
        cell.expenseLbl.text = "$\(viewModel.fullExpense[indexPath.row].amount)"
        return cell
    }

}



