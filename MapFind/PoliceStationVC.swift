//
//  PoliceStationVC.swift
//  MapFind
//
//  Created by apple on 2/16/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class PoliceStationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Police Station"
        
        let coords = [[23.804611 , 90.363117],[23.818092 , 90.360225],[23.793198 ,90.342388],[23.806515 , 90.349009],[23.793165 , 90.347764],[23.775921 , 90.373813],[23.807107 , 90.387894],[23.825998 , 90.367383],[23.783072 , 90.354116],[23.802217 , 90.381451],[23.766776 , 90.400682],[23.824599 , 90.363943],[23.771912 , 90.358901],[23.746045 , 90.404380],[23.796150 , 90.400507],[23.737773 , 90.396134],[23.743995 , 90.381683],[23.814270 , 90.390903],[23.700572 , 90.398079],[23.758808 , 90.361398],[23.853394 , 90.412026],[23.833071 , 90.378706],[23.802688 , 90.425687],[23.795374 , 90.403596],[23.760791 , 90.410980],[23.764276 , 90.388490],[23.716712 , 90.411545],[23.747779 , 90.387804],[23.768832 , 90.348837],[23.834798 , 90.377161],[23.758463 , 90.363943],[23.770327 , 90.425176],[23.862316 , 90.425783],[23.764284 , 90.444667],[23.773702 , 90.364801],[23.736937 , 90.388662],[23.739608 , 90.369264],[23.899061 , 90.403444],[23.723524 , 90.389079],[23.871577 , 90.40047],[23.782971 , 90.361368],[23.828469, 90.406274],[23.709980 , 90.395902],[23.750617 , 90.424946],[23.841586 , 90.417823],[23.774296 , 90.428980],[23.731142 , 90.416710],[23.696451 , 90.431278]]

        GMSServices.provideAPIKey("AIzaSyAmW7WvqRtxoVaOBJByv_Vd80qBUeCl9-U")
        
        let camera = GMSCameraPosition.camera(withLatitude: 23.805349, longitude: 90.370014, zoom: 15.0)
        
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        for coord in coords{
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: coord[0], longitude: coord[1])
            marker.map = mapView
            marker.icon = UIImage(named: "police")
            marker.title = "Police"
            
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
