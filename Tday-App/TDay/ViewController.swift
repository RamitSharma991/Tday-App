//
//  ViewController.swift
//  TDay
//
//  Created by Ramit sharma on 10/10/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//Outlets
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var launchOutlet: UIButton!
    @IBOutlet weak var baseViewPallete: UIView!
    @IBOutlet weak var todayView: RoundView!
    
    
    @IBOutlet weak var TodayHeading: UILabel!
    @IBOutlet weak var todayBody: UILabel!
    @IBOutlet weak var birthdayHeading: UILabel!
    @IBOutlet weak var birthdayBody: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
     //Represting latest date with custom Format
        let currentDate = Date()
        let customFormat = "ddMMM"
        let gbLocale = Locale(identifier: "en_GB")
        let shortFormat = DateFormatter.dateFormat(fromTemplate: customFormat, options: 0, locale: gbLocale)
        let formatter = DateFormatter()
        formatter.dateFormat = shortFormat
        formatter.string(from: currentDate)
        dateLbl.text = "\(formatter.string(from: currentDate))"
        
        
    }

    @IBAction func launch(_ sender: Any) {
        todayView.isHidden = false
        launchOutlet.isHidden = true
        baseViewPallete.isHidden = true
        
        UIView.animate(withDuration: 0.6, animations: {
            self.todayView.frame = CGRect(x: 60, y: 200, width: 285, height: 500)
        })
        
        TodayHeading.isHidden = false
        todayBody.isHidden = false
        birthdayHeading.isHidden = false
        birthdayBody.isHidden = false
        
    }
        @IBAction func exit(_ sender: Any) {
        todayView.isHidden = true
        launchOutlet.isHidden = false
        baseViewPallete.isHidden = false
        
    }
    
    
    //TodayView Content work
    
    
}
