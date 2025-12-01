//
//  TableCells .swift
//  POPWithExampleIOS
//
//  Created by Rajni on 30/11/25.
//

import Foundation
import UIKit

class TransactionHistoryTVCell : UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var expenseLbl: UILabel!

}


class AddExpenceTVCell : UITableViewCell , UITextFieldDelegate{
    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var expenseTF: UITextField!
    @IBOutlet weak var expenseTitle: UILabel!
    var delegate:ExpenseCellUpdatable?
    var rowIndex:Int?
    override func awakeFromNib() {
        self.titleTF.delegate = self
        self.expenseTF.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("text entered : \(textField.text ?? "")")
        delegate?.didUpdateExpense(at: rowIndex ?? 0, title: titleTF.text, amount: expenseTF.text)
    }
}
