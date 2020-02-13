//
//  Selcet_LocationVC.swift
//  MapFind
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class Selcet_LocationVC: UIViewController {
    
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBar.target = self.revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTabShow(_ sender: UIButton) {
        if sender.tag == 1 {
            print("Tab 1")
        } else if sender.tag == 2{
             print("Tab 2")
        } else if sender.tag == 3{
             print("Tab 3")
        } else if sender.tag == 4{
             print("Tab 4")
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
