//
//  ViewController.swift
//  CoreData2
//
//  Created by Артем Василенко on 08.12.2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    
    var test = ["odin", "dva", "tri"]
    @IBOutlet weak var coreData2TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.coreData2TableView.delegate = self
        self.coreData2TableView.dataSource = self
    }


}

extension ViewController: UITabBarDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        test.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = self.test[indexPath.row]
        
        return cell!
    }
    
    
    
    
}

