//
//  ViewController.swift
//  foobar
//
//  Created by Garrett Battaglia on 6/4/18.
//  Copyright © 2018 Garrett Battaglia. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,CLLocationManagerDelegate {

    let locManger = CLLocationManager()
    var cords: MKCoordinateRegion!
    let regionRadius: CLLocationDistance = 1
    @IBOutlet weak var Map: MKMapView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //assign cords to the map's so the zoom doesn't change
        cords = Map.region
        //set up location manager to get user location and zoom
        locManger.delegate = self
        locManger.requestWhenInUseAuthorization()
        locManger.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        Map.setRegion(coordinateRegion, animated: true)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        centerMapOnLocation(location: locations[0])
    }
    
}

