//
//  ViewController.swift
//  ShowLister
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 Sriram Elangovan. All rights reserved.
//

import UIKit

class ShowListingController: UITableViewController {

    var data =  [[String]] ()
    var titles = [String] ()
    override func viewDidLoad() {
        super.viewDidLoad()
         data = [ ["Good Doctor", "Chernobyl", "Game of Thrones", "Dark"] , ["BloodShot", "Bad Boys", "Jumanji", "1917"]]
        titles = ["Series", "Movies"]
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shows", for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        return cell
    }
}

