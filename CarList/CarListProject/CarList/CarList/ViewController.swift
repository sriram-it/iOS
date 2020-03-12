//
//  ViewController.swift
//  CarList
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 Sriram Elangovan. All rights reserved.
//

import UIKit

class CarCustomTableViewController: UITableViewController {

    var cars = [Car] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cars.append(Car(carName: "Toyota Corolla", manfCompany: "Toyota Automative", mileage: 18.5, price: 20790))
        cars.append(Car(carName: "Honda Insight", manfCompany: "Honda Motors", mileage: 20.5, price: 28450))
        cars.append(Car(carName: "Tesla Model S", manfCompany: "Tesla Inc", mileage: 15.6, price: 107810))
        cars.append(Car(carName: "Toyota Avalon", manfCompany: "Toyota Automative", mileage: 17.5, price: 19600))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Cars"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Car") as! CarTableViewCell
        cell.carName.text = cars[indexPath.row].carName
        cell.manfCompany.text = cars[indexPath.row].manfCompany
        cell.mileage.text = ("\(cars[indexPath.row].mileage) Kmpl")
        cell.Price.text = ("$ \(cars[indexPath.row].price)")
        cell.carImage.image = UIImage(named: cars[indexPath.row].carName)
        return cell
    }
    
    


}

