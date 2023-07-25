//
//  ViewController.swift
//  ContactsApp
//
//  Created by Öznur Ölçek on 21.07.2023.
//

import UIKit

class MainViewController: UIViewController {
    

    @IBOutlet weak var contactsTableView: UITableView!
    
    var contacts: [Contacts] = Contacts.contacts
    
    private var selectedSection: Sections? {
        didSet {
            contactsTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filterButton = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal.decrease.circle"), style: .done, target: self, action: #selector(filterButtonAct))
        navigationItem.rightBarButtonItem = filterButton
        
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
    }
    
    @objc func filterButtonAct() {
        let storyboard = UIStoryboard(name: "PickerViewController", bundle: nil)
        if let pickerVC = storyboard.instantiateViewController(withIdentifier: "PickerViewController") as? PickerViewController {
            pickerVC.delegate = self
            pickerVC.modalPresentationStyle = .overCurrentContext
            self.present(pickerVC, animated: true)
        }
    }
}

//MARK: PickerViewController Delegate Methods
extension MainViewController: PickerViewControllerDelegate {
    func didSelectSection(_ section: Sections) {
        selectedSection = section
    }
}

//MARK: TableView Delegate Methods
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return setSections().count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return setSections()[section].sections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterContacts(section).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTableView.dequeueReusableCell(withIdentifier: "contactsTVCell", for: indexPath) as! ContactsCell
        cell.contactNameLabel.text = filterContacts(indexPath.section)[indexPath.row].contactName
        cell.contactPhoneLabel.text = filterContacts(indexPath.section)[indexPath.row].contactPhoneNumber
        cell.contactImage.image = UIImage(named: String(describing: filterContacts(indexPath.section)[indexPath.row].contactImageName))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func setSections() -> [Sections] {
        if selectedSection == nil {
            return Sections.allCases
        } else {
            return [selectedSection!]
        }
    }
    
    private func filterContacts(_ sectionIndex: Int) -> [Contacts] {
        if selectedSection == nil {
            return Contacts.contacts.filter({ $0.contactSection == Sections.allCases[sectionIndex]})
        } else {
            return Contacts.contacts.filter({ $0.contactSection == selectedSection})
        }
       
    }
    
    
}




class CustomNavigationController : UINavigationController {
    
}

