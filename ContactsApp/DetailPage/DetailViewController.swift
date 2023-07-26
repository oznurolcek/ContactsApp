//
//  DetailViewController.swift
//  ContactsApp
//
//  Created by Öznur Ölçek on 24.07.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var contactImage: UIImageView!
    
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactNumberLabel: UILabel!
    @IBOutlet weak var contactSectionLabel: UILabel!
    
    @IBOutlet weak var contactsCollectionView: UICollectionView!
    
    var contactName: String?
    var contactImageName: String?
    var contactPhoneNumber: String?
    var contactSection: String?
    var selectedContacts: [Contacts] = [Contacts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        contactImage.image = UIImage(named: contactImageName!)
        contactNameLabel.text = contactName
        contactNumberLabel.text = contactPhoneNumber
        contactSectionLabel.text = contactSection
        
        contactsCollectionView.dataSource = self
        contactsCollectionView.delegate = self

        let design: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = self.contactsCollectionView.frame.size.width
        design.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        design.minimumLineSpacing = 5
        design.minimumInteritemSpacing = 5
        let cellWidth = (width-30) / 2
        design.itemSize = CGSize(width: cellWidth, height: cellWidth)
        design.scrollDirection = .horizontal


        contactsCollectionView.collectionViewLayout = design

        
    }
}

extension DetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedContacts.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = contactsCollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.contactNameLabel.text = selectedContacts[indexPath.row].contactName
        cell.imageView.image = UIImage(named: selectedContacts[indexPath.row].contactImageName.imageName)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        contactNameLabel.text = selectedContacts[indexPath.row].contactName
        contactNumberLabel.text = selectedContacts[indexPath.row].contactPhoneNumber
        contactImage.image = UIImage(named: selectedContacts[indexPath.row].contactImageName.imageName)
        
    }
    
    
    
}
