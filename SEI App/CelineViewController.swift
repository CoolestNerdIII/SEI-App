//
//  FirstViewController.swift
//  SEI App
//
//  Created by Dominique Paster on 7/16/17.
//  Copyright © 2017 CDP Development Solutions. All rights reserved.
//

import UIKit

class CelineViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var tableView: UITableView!
    var interests: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                tableView.delegate = self
                tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
        interests = ["Basketball","Shopping"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Interests"
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CelineCell", for: indexPath)
        
        let interest = interests[indexPath.row]
        cell.textLabel?.text = interest
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let row = indexPath.row
        
        if interests[row] == "Basketball"{
            let url = URL(string: "https://en.wikipedia.org/wiki/Basketball")!
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        } else if interests[row] == "Shopping"{
            let url = URL(string: "http://www.nike.com/us/en_us/")!
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
            
        }
        //        print(interests[row])
    }
}



