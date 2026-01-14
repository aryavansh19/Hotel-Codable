//
//  RegistrationTableViewController.swift
//  HotelCodable
//
//  Created by Aryavansh on 13/01/26.
//

import UIKit

class RegistrationTableViewController: UITableViewController {
    
    var registrations: [Registration] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return registrations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegistrationCell", for: indexPath)
        
        let registration = registrations[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = registration.firstName + " " + registration.lastName
        content.secondaryText = (registration.checkInDate..<registration.checkOutDate).formatted(date: .numeric, time: .omitted) + ": " + registration.roomType.name
        cell.contentConfiguration = content
        return cell
    }
        
    @IBAction func unwindToAddRegistration(unwindSegue: UIStoryboardSegue) {
        guard let addRegistrationTableViewController = unwindSegue.source as? AddRegistrationTableViewController, let registration = addRegistrationTableViewController.registration else { return }
        
        registrations.append(registration)
        tableView.reloadData()
    }
}
