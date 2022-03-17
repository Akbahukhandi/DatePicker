//
//  ViewController.swift
//  DatePicker
//
//  Created by FicodeMacBookAir on 14/03/22.
//

import UIKit

class ViewController: UIViewController {
 

    @IBOutlet weak var dateTextField: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
       
    }
    func createDatePicker(){
        //toolbar
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        //barbutton
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolBar.setItems([doneButton], animated: true)
        //assign toolbar
        dateTextField.inputAccessoryView = toolBar
        //assign date picker to the textfield
        dateTextField.inputView  = datePicker
        //date Picker mode
        datePicker.datePickerMode = .date
    }
    @objc func donePressed(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        dateTextField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }


}

