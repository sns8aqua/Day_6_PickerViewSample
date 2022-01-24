//
//  ViewController.swift
//  PickerViewSample
//
//  Created by Santhosh on 13/01/22.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myTextFiled: UITextField!
    var itemsArray: [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTextFiled.delegate = self
        
        self.myPickerView.delegate = self
        self.myPickerView.dataSource = self
        // Do any additional setup after loading the view.
        itemsArray = [String]()
        
        for index in 1...20 {
            itemsArray?.append("Number \(index)")
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("sdbfksdfdks")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return range.location < 8
    }
    
}




