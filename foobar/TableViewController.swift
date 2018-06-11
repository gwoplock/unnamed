//
//  ListViewController.swift
//  covfefeRate
//
//  Created by Garrett Battaglia on 3/7/18.
//  Copyright © 2018 Garrett Battaglia. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    @IBOutlet var tabelVire: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(ShopTableViewCell.self, forCellReuseIdentifier: "ShopTableViewCell")
        self.tableView.dataSource = self
        // loadShops()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func loadShops(){
        let api = APIconnector.init(url:"http://138.197.200.59/api/listCoffee")
        _arr = api.getArray()as! [NSDictionary]
        
        /* for obj in arr {
         let name = obj.value(forKey: "name") as! String
         let lat = obj.value(forKey: "lat") as! Double
         let long = obj.value(forKey: "long") as! Double
         }*/
        
        
    }*/
    
      //MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 /*_arr.count*/
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ShopTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ShopTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
 
        let name = "foo" //_arr[indexPath.row].value(forKey: "name") as! String
        let lat = 0.0//_arr[indexPath.row].value(forKey: "lat") as! Double
        let long = 0.0//_arr[indexPath.row].value(forKey: "long") as! Double
        let rating = 3//_arr[indexPath.row].value(forKey: "rating") as! Int
        
        if cell.name == nil {
            fatalError("This is null but shouldn't. why is it null.")
        }
        cell.name.text = name
        
        return cell
    }
    
    
    
    
    
}


