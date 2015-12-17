//
//  ViewController.swift
//  NYE
//
//  Created by Zel Marko on 15/12/15.
//  Copyright © 2015 devxhkl. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    CLGeocoder().geocodeAddressString("New York City") { (placemarks, error) -> Void in
      print(placemarks?.count)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
//  (lldb) po placemarks![0].location
//  ▿ Optional(<+40.71305400,-74.00722800> +/- 100.00m (speed -1.00 mps / course -1.00) @ 12/17/15, 1:39:48 PM Central European Standard Time)
//  
//  (lldb) po placemarks![0].location!
//  <+40.71305400,-74.00722800> +/- 100.00m (speed -1.00 mps / course -1.00) @ 12/17/15, 1:39:48 PM Central European Standard Time
//  
//  (lldb) po placemarks![0].timeZone
//  ▿ Optional(America/New_York (EST) offset -18000)
//  
//  (lldb) po placemarks![0].timeZone!
//  America/New_York (EST) offset -18000
//  
//  (lldb) po placemarks![0].timeZone!.name
//  "America/New_York"
//  
//  (lldb) po placemarks![0].timeZone!.abbreviation
//  ▿ Optional("EST")
//  - Some : "EST"
//  
//  (lldb) po placemarks![0].timeZone!.abbreviation!
//  "EST"
//  
//  (lldb)


}

