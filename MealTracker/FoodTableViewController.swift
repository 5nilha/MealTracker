//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Fabio Quintanilha on 12/17/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meal : [Meal] = [ Meal(name: "BreakFast", food: Meals().breakfast), Meal(name: "Launch", food: Meals().launch), Meal(name: "Dinner", food: Meals().dinner) ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meal.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return meal[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return meal[section].name
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        let cellMeal = meal[indexPath.section].food[indexPath.row]
        
        cell.textLabel?.text = cellMeal.name
        cell.detailTextLabel?.text = cellMeal.description
        
        return cell
        
    }
    

 

}
