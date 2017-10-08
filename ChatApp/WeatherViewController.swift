//
//  WeatherViewController.swift
//  ChatApp
//
//  Created by Victoria Leaf on 10/7/17.
//  Copyright © 2017 Victoria Leaf. All rights reserved.
//

import UIKit
import Firebase

class WeatherViewController: UIViewController {
    
    
    
    @IBOutlet weak var btnSunny: UIButton!
    @IBOutlet weak var btnFoggy: UIButton!
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblWeather: UILabel!
    
    let weatherNodeRef = Database.database().reference().child("weatherCondition")
    
    override func viewDidAppear(_ animated: Bool) {
        weatherNodeRef.observe(.value, with: { (snapshot: DataSnapshot) in
            self.lblWeather.text = (snapshot.value as AnyObject).debugDescription
        })
    }
    @IBOutlet weak var conditionLabel: UILabel!
    
    @IBAction func btnFoggy_TouchUpInside(_sender: Any){
        weatherNodeRef.setValue("Foggy")
        
    }
    @IBAction func btnSunny_TouchUpInside(_sender: Any){
        weatherNodeRef.setValue("Sunny")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    }
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


