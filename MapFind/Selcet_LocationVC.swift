//
//  Selcet_LocationVC.swift
//  MapFind
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class Selcet_LocationVC: UIViewController {
    
    @IBOutlet weak var toiletbtn: UIButton!
    @IBOutlet weak var restbtn: UIButton!
    @IBOutlet weak var policebtn: UIButton!
    @IBOutlet weak var msqbtn: UIButton!
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toiletbtn.layer.cornerRadius = 10
        restbtn.layer.cornerRadius = 10
        policebtn.layer.cornerRadius = 10
        msqbtn.layer.cornerRadius = 10
        
        toiletbtn.layer.backgroundColor = UIColor.systemRed.cgColor
        restbtn.layer.backgroundColor = UIColor.systemBlue.cgColor
        policebtn.layer.backgroundColor = UIColor.systemOrange.cgColor
        msqbtn.layer.backgroundColor = UIColor.systemGreen.cgColor
        
        
        
        
        menuBar.target = self.revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTabShow(_ sender: UIButton) {
        if sender.tag == 1 {
           
            let VC = storyboard?.instantiateViewController(identifier: "mosque") as! MosqueVC
            self.navigationController?.pushViewController(VC, animated: true)
        } else if sender.tag == 2{
            
            let VC = storyboard?.instantiateViewController(identifier: "police") as! PoliceStationVC
            self.navigationController?.pushViewController(VC, animated: true)
             
        } else if sender.tag == 3{
            let VC = storyboard?.instantiateViewController(identifier: "restaurant") as! RestaurantVC
            self.navigationController?.pushViewController(VC, animated: true)
            
        } else if sender.tag == 4{
            let VC = storyboard?.instantiateViewController(identifier: "toilet") as!
            PublicToiletVC
            self.navigationController?.pushViewController(VC, animated: true)
             
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
