//
//  ViewController.swift
//  POPWithExampleIOS
//
//  Created by Rajni on 29/11/25.
//

import UIKit

class ViewController: UIViewController {
   

    let viewModel = ExpenseViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionAddExpense(_ sender:UIButton) {
        switch (sender.tag){
        case 1:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddExpenseVC") as! AddExpenseVC
            vc.viewModel = viewModel
            self.navigationController?.pushViewController(vc, animated: true )
        case 2:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "HistoryVC") as! HistoryVC
            vc.viewModel = viewModel
            self.navigationController?.pushViewController(vc, animated: true )
        default:
            break
                            
        }
       
    }

}

