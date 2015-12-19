//
//  TimelineViewController.swift
//  NYE
//
//  Created by Zel Marko on 17/12/15.
//  Copyright © 2015 devxhkl. All rights reserved.
//

import UIKit
import CoreLocation

class TimelineViewController: UIViewController {
  
  let cities = ["Apia", "Chatham Islands", "Auckland", "Anadyr", "Sydney", "Adelaide", "Brisbane", "Darwin", "Tokyo", "Eucla", "Pyongyang", "Hong Kong", "Bangkok", "Mandalay", "Almaty", "Kathmandu", "Mumbai", "Karachi", "Kabul", "Dubai", "Tehran", "Moscow", "Cairo", "Paris", "London", "Ittoqqortoormiit", "Rio de Janeiro", "Buenos Aires", "St. John’s", "La Paz", "Caracas", "New York", "Mexico City", "Calgary", "Los Angeles", "Anchorage", "French Polynesia", "Honolulu", "Alofi", "Baker Island"]
  let geocoder = CLGeocoder()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loop()
//    for city in cities {
//      print(city)
//      geocoder.geocodeAddressString(city) { placemarks, error in
//        if let placemarks = placemarks {
//          print(placemarks.first?.timeZone?.abbreviation)
//        }
//      }
//    }
  }
  
  var index = 0
  func loop() {
    print(cities[index])
    geocoder.geocodeAddressString(cities[index]) { placemarks, error in
      if let placemarks = placemarks {
        print(placemarks.first?.timeZone?.abbreviation)
      } else {
        print(error?.localizedDescription)
      }
      if self.index < self.cities.count - 1 {
        self.index++
        self.loop()
      }
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */
  
}

extension TimelineViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  
  func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CityCell", forIndexPath: indexPath)
    
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
    return UIEdgeInsetsMake(50, 50, 50, 50)
  }
}
