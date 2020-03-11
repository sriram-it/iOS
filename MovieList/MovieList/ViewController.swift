//
//  ViewController.swift
//  MovieList
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 Sriram Elangovan. All rights reserved.
//

import UIKit

class MovieListController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let movies = ["Black Panther", "Spider Man", "Planets Vs Zombies", "Inception", "John Wick"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieNames", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }

}

