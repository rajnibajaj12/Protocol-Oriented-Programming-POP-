### **🧾 Expense Tracker – Protocol Oriented Programming (POP) in UIKit**

A simple and clean iOS demo project built in Swift + UIKit, designed to explain Protocol Oriented Programming, Delegation, MVVM, and Dependency Injection in an easy, practical way.

This project allows users to:

- Add multiple expenses dynamically

- Update each expense row using protocols

- Save the list of expenses for the month

- View a history of all added expenses

- Learn how POP improves modularity, flexibility, and testability

## 🚀 Features Demonstrated

**✅ 1. Dynamic Expense Entry Form**

Users can tap Add Expense to append new rows.

- Each row contains:

- Expense Title (TextField)

- Expense Amount (TextField)

**✅ 2. Protocol-Based Communication**

A protocol ExpenseCellUpdatable allows each table cell to communicate value changes back to the ViewModel:

```swift

protocol ExpenseCellUpdatable: AnyObject {
    func didUpdateExpense(at index: Int, title: String?, amount: String?)
}
```

This demonstrates:

- Loose coupling

- Clear separation of roles

- Reusability of cells & logic
(Perfect example of POP replacing classic delegation)

**✅ 3. Delegation Pattern (POP in practice)**

The cell delegates updates to the controller:
```swift

delegate?.didUpdateExpense(at: rowIndex ?? 0,
                           title: titleTF.text,
                           amount: expenseTF.text)

```

This shows power of delegation:

- Cell → Controller → ViewModel

- Single responsibility

- No data duplication

- Fully reusable cell

**✅ 4. ViewModel Managed State**

ExpenseViewModel contains:

- items → items user is currently entering

- fullExpense → submitted & finalized expenses.

- This keeps the logic outside the ViewController (MVVM + POP style).


**✅ 5. Shared Dependency Injection**

A single ViewModel instance is passed across screens:
```swift
vc.viewModel = viewModel

```

This demonstrates:

- Dependency Injection (DI)

- Shared state management

- Loose coupling between modules



## **📸 Screenshots**

<img width="300" height="600" alt="Simulator Screenshot - iPhone 16 - 2025-12-02 at 00 27 24" src="https://github.com/user-attachments/assets/ab370b39-5a35-4a66-955c-36cb9accebc3" />

<img width="300" height="600" alt="Simulator Screenshot - iPhone 16 - 2025-12-02 at 00 27 46" src="https://github.com/user-attachments/assets/9d6cb81d-bd42-43e3-81b4-f66baf768c04" />

<img width="300" height="600" alt="Simulator Screenshot - iPhone 16 - 2025-12-02 at 00 28 47" src="https://github.com/user-attachments/assets/a3c6df74-968b-41e9-bdbc-3a6c4b8e1d95" />



## **🎥 Demo Video**

https://github.com/user-attachments/assets/f9a591e5-0579-4812-941b-2a83573ba34e


https://github.com/user-attachments/assets/e9ed7ccc-1c4a-4eb0-a0df-7ce1ede0e693

## **🏗 Project Architecture (MVVM + POP)**


<img width="535" height="467" alt="Screenshot 2025-12-02 at 1 01 26 AM" src="https://github.com/user-attachments/assets/6f90f681-0834-4191-a00b-bbeae596776d" />



## **🧪 Example Usage**

**Adding a new expense row:**

```swift
@IBAction func actionBtnTapped(_ sender: UIButton) {
    if sender.tag == 2 {
        viewModel.addNewExpense()
        tableView.reloadData()
    }
}

```

**Updating a cell:**

```swift
func didUpdateExpense(at index: Int, title: String?, amount: String?) {
    viewModel.updateItem(at: index, title: title ?? "", amount: amount ?? "")
}

```

**Submitting all expenses:**

```swift
viewModel.submitExpenses()
viewModel.resetItems()
navigationController?.popViewController(animated: true)

```

## **🛠 How to Run**

- Clone this repository

- Open project in Xcode

- Run on simulator or iPhone

## **👨‍💻 Author**

**Rajni Bala**

iOS Developer | UIKit | Swift | POP | MVVM
