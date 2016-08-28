//
//  ViewController.swift
//  The QYOU
//
//  Created by Jace Sparks on 2/19/15.
//  Copyright (c) 2015 Sparks. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate, UIWebViewDelegate {

    var manager = CLLocationManager()
    
    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //Parse.setApplicationId("QvHuB1KrFf2T806v99369jbLjT868E8qwgUthDEw", clientKey: "fTvF9AsdcG94mYwBJrjs4oU38la9wJn6tLpawjPV")
        
        //LOCATION DETERMINATION
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyKilometer
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        //VIDEOS CODE
        /*
        var video = PFObject(className:"video")
        video.setObject("POS", forKey: "name")
    
        video.saveInBackgroundWithBlock {
            (success: Bool!, error: NSError!) -> Void in
            
            if success == true {
                
                println("Video title is \(video.objectId)")
            }else{
                println(error)
            }
        }
        */
    
        
        //LIVE FEED DALLAS SERVER
        
        var html = "<head><body><iframe style=\"position: fixed; top: 25px; left: 0px; bottom: 0px; right: 0px; width: 100%; height: 100%; border: none; margin: 0; padding: 0; overflow: hidden; z-index: 4;\" src=\"http://ciz8kt-html5.cloud.influxis.com/httpcontent/QyouTV.html\"</iframe></body></head>"
        
        var htmlAmsterdam = "<head><body><iframe style=\"position: fixed; top: 25px; left: 0px; bottom: 0px; right: 0px; width: 100%; height: 100%; border: none; margin: 0; padding: 0; overflow: hidden; z-index: 4;\" src=\"http://zt92vi-html5.cloud.influxis.com/httpcontent/europeqyoutv.html\"</iframe></body></head>"
        
        webView.loadHTMLString(html, baseURL: nil)
    }
   func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
    var userLocation:CLLocation = locations[0] as CLLocation
    
    var latitude:CLLocationDegrees = userLocation.coordinate.latitude
    var longitude:CLLocationDegrees = userLocation.coordinate.longitude
    var laDelta:CLLocationDegrees = 0.01
    var longDelta:CLLocationDegrees = 0.01
    

   
    }
    
   func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        println(error)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

