//
//  Car.swift
//  CarList
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 Sriram Elangovan. All rights reserved.
//

import Foundation

class Car {
    var carName: String
    var manfCompany: String
    var mileage: Double
    var price: Int

    init(carName:String, manfCompany:String,mileage:Double, price: Int) {
        self.carName = carName
        self.manfCompany = manfCompany
        self.mileage = mileage
        self.price = price
    }
}
