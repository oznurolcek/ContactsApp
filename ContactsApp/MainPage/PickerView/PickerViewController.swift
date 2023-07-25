//
//  PickerViewController.swift
//  ContactsApp
//
//  Created by Öznur Ölçek on 25.07.2023.
//

import UIKit

class PickerViewController: UIViewController {

    @IBOutlet weak var filterPickerView: UIPickerView!
    
    @IBOutlet weak var sectionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        filterPickerView.delegate = self
//        filterPickerView.dataSource = self
    }
    
    @IBAction func doneButtonAct(_ sender: UIButton) {
        
    }
    
    @IBAction func cancelButtonAct(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}

extension PickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        Contacts.contacts.count
    }


}
