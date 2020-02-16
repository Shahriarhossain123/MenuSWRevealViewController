//
//  PublicToiletVC.swift
//  MapFind
//
//  Created by apple on 2/16/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import GoogleMaps

class PublicToiletVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Public Toilet"

 let coords = [[23.812391, 90.346822],
 [23.808630, 90.351475],
 [23.808494, 90.363956],
 [23.808766, 90.369602],
 [23.808766, 90.36960,],
 [23.781108, 90.378821],
 [23.777573, 90.365449],
 [23.786819, 90.359803],
 [23.788450, 90.374364],
 [23.796064, 90.358911],
 [23.802317, 90.346728],
 [23.834667, 90.365746],
 [23.811289, 90.369906],
 [23.799870, 90.345242]]

 GMSServices.provideAPIKey("AIzaSyAmW7WvqRtxoVaOBJByv_Vd80qBUeCl9-U")
 
 let camera = GMSCameraPosition.camera(withLatitude: 23.805349, longitude: 90.370014, zoom: 15.0)
 
 let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
 view = mapView
 
 for coord in coords{
     let marker = GMSMarker()
     marker.position = CLLocationCoordinate2D(latitude: coord[0], longitude: coord[1])
     marker.map = mapView
     marker.icon = UIImage(named: "toilet")
     marker.title = "Toilet"
     
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
