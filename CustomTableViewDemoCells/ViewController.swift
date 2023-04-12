//
//  ViewController.swift
//  CustomTableViewDemoCells
//
//  Created by Harshit Punn on 2023-02-21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        myCell.textLabel?.text = "This is row  number \(indexPath.row)"
        myCell.imageView?.image = UIImage(named: "clock")
        myCell.accessoryType = .disclosureIndicator
        myCell.detailTextLabel?.text = "This is some detail text"

        return myCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

