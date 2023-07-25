//
//  PickerViewController.swift
//  ContactsApp
//
//  Created by Öznur Ölçek on 25.07.2023.
//

import UIKit

protocol PickerViewControllerDelegate {
    func didSelectSection(_ section: Sections)
}

class PickerViewController: UIViewController {

    @IBOutlet weak var filterPickerView: UIPickerView!
    
    @IBOutlet weak var sectionLabel: UILabel!
    
    private var selectedSection: Sections?
    
    var delegate: PickerViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterPickerView.delegate = self
        filterPickerView.dataSource = self
    }
    
    @IBAction func doneButtonAct(_ sender: UIButton) {
        delegate?.didSelectSection(selectedSection ?? .allContacts)
        dismiss(animated: true)
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
        return Sections.allCases.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Sections.allCases[row].sections
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedSection = Sections.allCases[row]
        sectionLabel.text = selectedSection?.sections
    }


}
