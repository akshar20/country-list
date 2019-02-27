//
//  InterfaceController.swift
//  WatchApp WatchKit Extension
//
//  Created by MacStudent on 2019-02-27.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // REFERENCE TO COUNTRY TABLE
    @IBOutlet weak var countryTable: WKInterfaceTable!
    
    // DATASOURCE OF COUNTRIES
    let countriesList:[String] = ["India", "Canada", "United States", "Australia", "New Zealand", "China", "Japan", "Russia"]

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        // SETTING UP BASIC INFORMATION TO TABLE
        self.countryTable.setNumberOfRows(self.countriesList.count, withRowType: "myRow")
        
        
        // FILLING OUT DATA TO TABLE
        for(i, country) in self.countriesList.enumerated(){
            // GET REFERENCE TO TABLE ROW
            let row = self.countryTable.rowController(at: i) as! CountryRowController
            // FILL OUT THE ROW TO COUNTRY NAME
            row.countryNameLabel.setText(country)
        }
        
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
