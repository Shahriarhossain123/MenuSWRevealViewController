//
//  SocialVC.swift
//  MapFind
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SocialVC: UIViewController {

  @IBOutlet weak var menuBar: UIBarButtonItem!
    
    @IBOutlet weak var twbtn: UIButton!
    @IBOutlet weak var gbtn: UIButton!
    @IBOutlet weak var fbbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbbtn.layer.cornerRadius = 25
        gbtn.layer.cornerRadius = 25
        twbtn.layer.cornerRadius = 25
        menuBar.target = self.revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))

        // Do any additional setup after loading the view.
    }
    
    @IBAction func twitterbtn(_ sender: UIButton) {
        guard let url = URL(string: "https://twitter.com") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func facebookbtn(_ sender: UIButton) {
        guard let url = URL(string: "https://facebook.com") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func googlebtn(_ sender: UIButton) {
        guard let url = URL(string: "https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Faccounts.google.com%2F&followup=https%3A%2F%2Faccounts.google.com%2F&flowName=GlifWebSignIn&flowEntry=ServiceLogin") else { return }
        UIApplication.shared.open(url)
    }
}
