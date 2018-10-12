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
    
    @IBOutlet weak var backdrop: UIImageView!
    
    @IBOutlet weak var TodayHeading: UILabel!
    @IBOutlet weak var todayBody: UILabel!
    @IBOutlet weak var birthdayHeading: UILabel!
    @IBOutlet weak var birthdayBody: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        backdrop.isHidden = false
        backdrop.layer.opacity = 0.5
        
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
        backdrop.isHidden = false
        backdrop.layer.opacity = 0.35
        launchOutlet.isHidden = true
        baseViewPallete.isHidden = true
        
        UIView.animate(withDuration: 1.0, animations: {
            self.todayView.frame = CGRect(x: 60, y: 200, width: 285, height: 380)
        })
        
        TodayHeading.isHidden = false
        todayBody.isHidden = false
        birthdayHeading.isHidden = false
        birthdayBody.isHidden = false
        
        
        
        
        //Demo TodayBody Text Update HardCoded for next 5 Days
        if dateLbl.text! == "12 Oct" {
            todayBody.text = "The army of Cyrus the Great of Persia takes Babylon and Christopher Columbus's expedition makes landfall on a Caribbean island he names San Salvador"
            birthdayBody.text = "Luciano Pavarotti  Hugh Jackman"
        } else if dateLbl.text! == "13 Oct" {
            todayBody.text = "Nero succeeds Claudius as Roman Emperor, American singer-songwriter Bob Dylan is awarded the Nobel Prize for Literature"
            birthdayBody.text = "Margret Thatcher   Sach Baron Cohen"
        } else if dateLbl.text! == "14 Oct" {
            todayBody.text = "Robert the Bruce of Scotland defeats King Edward II of England at Byland, forcing Edward to accept Scotland's independence, US President Reagan proclaims a war on drugs"
            birthdayBody.text = "Sir Roger Moore Usher Dwight D. Eisenhower"
        } else if dateLbl.text! == "15 Oct" {
            todayBody.text = "Nelson Mandela and South African President F. W. de Klerk awarded the Nobel Peace Prize, Napoleon Bonaparte arrives on island of St Helena to begin his exile"
            birthdayBody.text = "Pierre Laval  Herbert Henry Dow"

    }
        
}
        @IBAction func exit(_ sender: Any) {
        todayView.isHidden = true
        launchOutlet.isHidden = false
        baseViewPallete.isHidden = false
        backdrop.layer.opacity = 0.5

        
    }
    
}
