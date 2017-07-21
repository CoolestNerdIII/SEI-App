//
//  Main.swift
//  SEI App
//
//  Created by Dominique Paster on 7/16/17.
//  Copyright © 2017 CDP Development Solutions. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let delay = 3.0
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: delay, target: self, selector: #selector(goToMain), userInfo: nil, repeats: false)
        

        
    }
    
    func goToMain() {
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBar") as? UITabBarController
        {
            self.present(vc, animated: true, completion: nil)
        }
        
//        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "MainTabBar") as! UITabBarController
//        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}
