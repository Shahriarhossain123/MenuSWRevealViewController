//
//  RestaurantVC.swift
//  MapFind
//
//  Created by apple on 2/16/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import GoogleMaps

class RestaurantVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Restaurant"
 let coords = [ [23.808599,90.361492],[23.808599,90.361492],[23.801352,90.388502],[23.794755,90.386957],[23.793420,90.374555],[23.796365,90.387859],[23.791849,90.402407],[23.792085,90.402750],[23.793822,90.403261],[23.800011,90.386493],[23.795614,90.384777],[23.803467,90.386837],[23.827652,90.372074],[23.793891,90.408930],[23.793852,90.405583],[23.793891,90.408930],[23.766871,90.354362],[23.768062,90.358394],[23.767339,90.362962],[23.762551,90.361507],[23.762135,90.357152],[23.762732,90.358472],[23.764635,90.358957],[23.763177,90.360414],[23.762732,90.361082],[23.763131,90.360313],[23.762492,90.361032],[23.763357,90.361407],[23.762060,90.361407],[23.760362,90.365559],[23.803932,90.409335],[23.801014,90.412167],[23.790237,90.409124],[23.790237,90.409124],[23.790237,90.409124],[23.792347,90.408578],[23.793791,90.414207],[23.794110,90.404694],[23.794138,90.412219],[23.793833,90.414359],[23.794777,90.405847],[23.791889,90.403146],[23.795610,90.414662],[23.796040,90.413297],[23.795665,90.413418],[23.795443,90.414237],[23.795471,90.414647],[23.795471,90.414268],[23.797095,90.410459],[23.803953,90.409276],[23.791309,90.400177],[23.794228,90.404515], [23.791519,90.404055],[23.807876,90.416208],[23.811244,90.421483],[23.811244,90.421263],[23.803703,90.423022],[23.807272,90.418901],[23.807675,90.416757],[23.793194,90.425165],[23.796450,90.407941],[23.793550,90.409071],[23.791559,90.409401],[23.791811,90.407748],[23.790752,90.406618],[23.790626,90.408161],[23.791433,90.404882],[23.794282,90.404524],[23.791584,90.404193],[23.794307,90.404524],[23.794055,90.405488],[23.794055,90.405792],[23.790676,90.407996],[23.764512,90.413725],[23.764675,90.425353],[23.768727,90.418728],[23.767038,90.422002],[23.765847,90.423685],[23.764838,90.425045],[23.763317,90.427645],[23.762732,90.429861],[23.764877,90.424917],[23.767140,90.421977],[23.762693,90.429861],[23.763307,90.430767],[23.728567,90.385786],[23.726839,90.386529],[23.724357,90.389099],[23.721416,90.389340],[23.726251,90.381891],[23.727078,90.382192],[23.726867,90.383716],[23.727074,90.383456],[23.724356,90.384090],[23.726587,90.386550],[23.720247,90.386890],[23.721285,90.389349],[23.722208,90.390415],[23.721751,90.387853],[23.724242,90.384034],[23.724097,90.384589],[23.765777,90.427255],[23.765050,90.428478],[23.764991,90.428907],[23.763106,90.426504],[23.760258,90.429744],[23.763990,90.431268],[23.763327,90.430656],[23.762074,90.430340],[23.764044,90.431289],[23.762983,90.433531],[23.762983,90.433667],[23.762818,90.430882],[23.762928,90.433651],[23.762611,90.436647],[23.762239,90.436556],[23.761936,90.436406],[23.761702,90.438483],[23.761399,90.431906],[23.762887,90.433712],[23.761137,90.436105],[23.747004,90.384403],[23.740734,90.380892],[23.741361,90.379094],[23.741596,90.374384],[23.743947,90.373956],[23.745931,90.371829],[23.746735,90.371677],[23.742798,90.374572],[23.745196,90.371925],[23.746534,90.371484],[23.746508,90.371705],[23.747442,90.370554],[23.753248,90.369914],[23.740536,90.378917],[23.742572,90.374416],[23.742689,90.374288]]

 GMSServices.provideAPIKey("AIzaSyAmW7WvqRtxoVaOBJByv_Vd80qBUeCl9-U")
 
 let camera = GMSCameraPosition.camera(withLatitude: 23.805349, longitude: 90.370014, zoom: 10.0)
 
 let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
 view = mapView
 
 for coord in coords{
     let marker = GMSMarker()
     marker.position = CLLocationCoordinate2D(latitude: coord[0], longitude: coord[1])
     marker.map = mapView
     marker.icon = UIImage(named: "rsz_food")
     marker.title = "Restaurant"
     
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
