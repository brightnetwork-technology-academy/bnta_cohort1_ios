//
//  StaffTableViewController.swift
//  TableViewController2
//
//  Created by AL TYUS on 5/12/21.
//

import UIKit

class StaffTableViewController: UITableViewController {
    let dummyData = DummyData.withCount(20)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dummyData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Configure the cell...
        let employee = self.dummyData[indexPath.row]
        
        cell.textLabel?.text = "\(employee.firstName) \(employee.lastName)"
        cell.detailTextLabel?.text = employee.employeeID
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let indexPath = tableView.indexPathForSelectedRow else {
            fatalError()
        }
        
        let employee = self.dummyData[indexPath.row]

        if let destination = segue.destination as? EmployeeDetailViewController {
            destination.employee = employee
        }
    }

}
