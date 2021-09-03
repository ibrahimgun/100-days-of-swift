//
//  ViewController.swift
//  Project 12
//
//  Created by İbrahim Gün on 1.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        defaults.setValue(25, forKey: "Age")
        defaults.setValue(true, forKey: "UseFaceID")
        defaults.setValue(CGFloat.pi, forKey: "Pi")
        
        defaults.setValue("İbrahim Gün", forKey: "Name")
        defaults.setValue(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.setValue(array, forKey: "SavedArray")
        
        let dict = ["Name": "İbrahim", "Country": "TR"]
        defaults.setValue(dict, forKey: "SavedDictionary")
        
        let savedInteger = defaults.integer(forKey: "Age")
        let savedBoolen = defaults.bool(forKey: "UseFaceID")
        let savedArray = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        let savedDictionary = defaults.object(forKey: "SavedDictionary") as? [String: String] ?? [String: String]()
    }


}

