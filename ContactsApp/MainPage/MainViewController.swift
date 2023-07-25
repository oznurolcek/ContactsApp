//
//  ViewController.swift
//  ContactsApp
//
//  Created by Öznur Ölçek on 21.07.2023.
//

import UIKit

class MainViewController: UIViewController {
    

    @IBOutlet weak var contactsTableView: UITableView!
    
    var contacts: [String] = ["ayse", "fatma","hayriye"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filterButton = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal.decrease.circle.fill"), style: .done, target: self, action: #selector(filterButtonAct))
        navigationItem.rightBarButtonItem = filterButton
        
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
    }
    
    @objc func filterButtonAct() {
        print("Tıklandı")
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTableView.dequeueReusableCell(withIdentifier: "contactsTVCell", for: indexPath) as! ContactsCell
        cell.contactNameLabel.text = contacts[indexPath.row]
        //cell.contactImage.image = UIImage()
        return cell
    }
    
    
}




class CustomNavigationController : UINavigationController {
    
}

