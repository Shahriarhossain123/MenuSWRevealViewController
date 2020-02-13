//
//  MenuVc.swift
//  MapFind
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class MenuVc: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var pcImage: UIImageView!
    
    var menu = ["Home", "Selcet Location", "About US","Social"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pcImage.layer.cornerRadius = 40
        pcImage.layer.backgroundColor = UIColor.blue.cgColor
        pcImage.layer.borderWidth = 2
        pcImage.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = menu[indexPath.row]
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: menu[indexPath.row], sender: self)
    }
    
}
