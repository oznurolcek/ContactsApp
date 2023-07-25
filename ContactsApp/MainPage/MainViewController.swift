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
            pickerVC.modalPresentationStyle = .overCurrentContext
            self.present(pickerVC, animated: true)
        }
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return Contacts.Sections.allCases[section].sections
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTableView.dequeueReusableCell(withIdentifier: "contactsTVCell", for: indexPath) as! ContactsCell
        cell.contactNameLabel.text = contacts[indexPath.row].contactName
        cell.contactImage.image = UIImage(named: String(describing: contacts[indexPath.row].contactImageName))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}




class CustomNavigationController : UINavigationController {
    
}

