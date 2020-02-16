//
//  HomeVC.swift
//  MapFind
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import GoogleMaps

class HomeVC: UIViewController {

    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coords = [ [23.802878,90.371623],[23.806737,90.367713],[23.812402,90.370028],[23.817660,90.368333],[23.804959,90.358275],[23.787737,90.351245],[23.780786,90.358445],[23.778879,90.361421],[23.777054,90.365329],[23.773733,90.368998],[23.771324,90.371989],[23.769819,90.372035],[23.756322,90.374863],[23.754943,90.385657],[23.748359,90.389352],[23.743515,90.384586],[23.734858,90.409739],[23.729986,90.411112],[23.726194,90.401038],[23.739649,90.399420],[23.741701,90.422341],[23.737853,90.412142],[23.729337,90.400093],[23.731490,90.362005],[23.762853,90.356631],[23.757352,90.388977],[23.750171,90.388528],[23.748458,90.400366],[23.750647,90.403939],[23.747469,90.412472],[23.749730,90.421249],[23.738414,90.423633],[23.708728,90.425339],[23.695312,90.438609],[23.689888,90.403617],[23.703037,90.399850],[23.704110,90.382393],[23.752912,90.386229],[23.752001,90.386463],[23.747498,90.393064],[23.748693,90.406563],[23.747017,90.403721],[23.747366,90.412037],[23.741046,90.420963],[23.736359,90.425402],[23.738262,90.423112],[23.728996,90.434827],[23.709449,90.430005],[23.711114,90.436350],[23.705743,90.433451],[23.704321,90.434929],[23.705011,90.445748],[23.700689,90.454975],[23.694035,90.466975],[23.754777,90.400696],[23.788737,90.391150],[23.800047,90.397716],[23.800204,90.389991],[23.804837,90.389734],[23.820121,90.411021],[23.824180, 90.371542],[23.828695,90.367294],[23.830383,90.378666],[23.802218,90.355945],[23.804705,90.364992],[23.802986,90.359354],[23.774657,90.368749],[23.776472,90.372934]]

        GMSServices.provideAPIKey("AIzaSyAmW7WvqRtxoVaOBJByv_Vd80qBUeCl9-U")
        
        let camera = GMSCameraPosition.camera(withLatitude: 23.805349, longitude: 90.370014, zoom: 15.0)
        
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        for coord in coords{
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: coord[0], longitude: coord[1])
            marker.map = mapView
            marker.icon = UIImage(named: "hosp")
            marker.title = "Hospital"
             
        }

        menuBar.target = self.revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
//
//        // Creates a marker in the center of the map.
//           let marker = GMSMarker()
//           marker.position = CLLocationCoordinate2D(latitude: 23.805349, longitude: 90.370014)
//           marker.title = "Mirpur 10"
//           marker.snippet = "Bangladesh IT"
//           marker.map = mapView
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        policeButtonEdit()
        mosqueButtonEdit()
        resturantButtonEdit()
        toiletButtonEdit()
        hospitalButtonEdit()
    }

    @objc func floatingButtonPressed(){
        print("Floating button tapped")
    }
    
    @IBAction func menubtn(_ sender: UIBarButtonItem) {
        
    }
    
    func policeButtonEdit(){
        let policebutton = UIButton(frame: CGRect(x: 330, y: 788, width: 64, height: 64))
        policebutton.backgroundColor = .white
        let image = UIImage(named: "police")
        policebutton.layer.borderWidth = 1
        policebutton.layer.cornerRadius = 32
        policebutton.setImage(image, for: .normal)
        policebutton.layer.shadowColor = UIColor.black.cgColor
        policebutton.layer.shadowRadius = 5
        policebutton.layer.shadowOpacity = 1
        policebutton.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.view.addSubview(policebutton)
    }
    
    func mosqueButtonEdit(){
        let mosquebutton = UIButton(frame: CGRect(x: 254, y: 748, width: 64, height: 64))
        mosquebutton.backgroundColor = .white
        let image = UIImage(named: "mosque")
        mosquebutton.layer.borderWidth = 1
        mosquebutton.layer.cornerRadius = 32
        mosquebutton.setImage(image, for: .normal)
        mosquebutton.layer.shadowColor = UIColor.black.cgColor
        mosquebutton.layer.shadowRadius = 5
        mosquebutton.layer.shadowOpacity = 1
        mosquebutton.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.view.addSubview(mosquebutton)
    }
    
    func resturantButtonEdit(){
        let mosquebutton = UIButton(frame: CGRect(x: 174, y: 718, width: 64, height: 64))
        mosquebutton.backgroundColor = .white
        let image = UIImage(named: "rsz_food")
        mosquebutton.layer.borderWidth = 1
        mosquebutton.layer.cornerRadius = 32
        mosquebutton.setImage(image, for: .normal)
        mosquebutton.layer.shadowColor = UIColor.black.cgColor
        mosquebutton.layer.shadowRadius = 5
        mosquebutton.layer.shadowOpacity = 1
        mosquebutton.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.view.addSubview(mosquebutton)
    }
    
    func toiletButtonEdit(){
        let mosquebutton = UIButton(frame: CGRect(x: 97, y: 748, width: 64, height: 64))
        mosquebutton.backgroundColor = .white
        let image = UIImage(named: "toilet")
        mosquebutton.layer.borderWidth = 1
        mosquebutton.layer.cornerRadius = 32
        mosquebutton.setImage(image, for: .normal)
        mosquebutton.layer.shadowColor = UIColor.black.cgColor
        mosquebutton.layer.shadowRadius = 5
        mosquebutton.layer.shadowOpacity = 1
        mosquebutton.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.view.addSubview(mosquebutton)
    }
    
    func hospitalButtonEdit(){
        let mosquebutton = UIButton(frame: CGRect(x: 20, y: 788, width: 64, height: 64))
        mosquebutton.backgroundColor = .white
        let image = UIImage(named: "hosp")
        mosquebutton.layer.borderWidth = 1
        mosquebutton.layer.cornerRadius = 32
        mosquebutton.setImage(image, for: .normal)
        mosquebutton.layer.shadowColor = UIColor.black.cgColor
        mosquebutton.layer.shadowRadius = 5
        mosquebutton.layer.shadowOpacity = 1
        mosquebutton.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.view.addSubview(mosquebutton)
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

extension UIViewController {
    private struct AssociatedKeys {
        static var floatingButton: UIButton?
    }

    var floatingButton: UIButton? {
        get {
            guard let value = objc_getAssociatedObject(self, &AssociatedKeys.floatingButton) as? UIButton else {return nil}
            return value
        }
        set(newValue) {
            objc_setAssociatedObject(self, &AssociatedKeys.floatingButton, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    func mosqueFloatingButton() {
        // Customize your own floating button UI
        let button = UIButton(type: .custom)
        let image = UIImage(named: "mosque")
        button.setImage(image, for: .normal)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 3
        button.layer.shadowOpacity = 0.12
        button.layer.shadowOffset = CGSize(width: 0, height: 1)
        button.sizeToFit()
        let buttonSize = CGSize(width: 64, height: 64)
        let rect = UIScreen.main.bounds.insetBy(dx: 4 + buttonSize.width / 2, dy: 4 + buttonSize.height / 2)
        button.frame = CGRect(origin: CGPoint(x: rect.maxX - 15, y: rect.maxY - 50), size: CGSize(width: 64, height: 64))
        button.autoresizingMask = []
        view.addSubview(button)
        floatingButton = button
        let panner = UIPanGestureRecognizer(target: self, action: #selector(panDidFire(panner:)))
        floatingButton?.addGestureRecognizer(panner)
        snapButtonToSocket()
    }
    
    func policeFloatingButton() {
        // Customize your own floating button UI
        let button = UIButton(type: .custom)
        let image = UIImage(named: "police")
        button.setImage(image, for: .normal)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 3
        button.layer.shadowOpacity = 0.12
        button.layer.shadowOffset = CGSize(width: 0, height: 1)
        button.sizeToFit()
        let buttonSize = CGSize(width: 64, height: 64)
        let rect = UIScreen.main.bounds.insetBy(dx: 4 + buttonSize.width / 2, dy: 4 + buttonSize.height / 2)
        button.frame = CGRect(origin: CGPoint(x: rect.maxX - 15, y: rect.maxY - 50), size: CGSize(width: 64, height: 64))
        button.autoresizingMask = []
        view.addSubview(button)
        floatingButton = button
        let panner = UIPanGestureRecognizer(target: self, action: #selector(panDidFire(panner:)))
        floatingButton?.addGestureRecognizer(panner)
        snapButtonToSocket()
    }
    
    func restaurantFloatingButton() {
        // Customize your own floating button UI
        let button = UIButton(type: .custom)
        let image = UIImage(named: "mosque")
        button.setImage(image, for: .normal)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 3
        button.layer.shadowOpacity = 0.12
        button.layer.shadowOffset = CGSize(width: 0, height: 1)
        button.sizeToFit()
        let buttonSize = CGSize(width: 64, height: 64)
        let rect = UIScreen.main.bounds.insetBy(dx: 4 + buttonSize.width / 2, dy: 4 + buttonSize.height / 2)
        button.frame = CGRect(origin: CGPoint(x: rect.maxX - 15, y: rect.maxY - 50), size: CGSize(width: 64, height: 64))
        button.autoresizingMask = []
        view.addSubview(button)
        floatingButton = button
        let panner = UIPanGestureRecognizer(target: self, action: #selector(panDidFire(panner:)))
        floatingButton?.addGestureRecognizer(panner)
        snapButtonToSocket()
    }
    
    func toielFloatingButton() {
        // Customize your own floating button UI
        let button = UIButton(type: .custom)
        let image = UIImage(named: "mosque")
        button.setImage(image, for: .normal)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 3
        button.layer.shadowOpacity = 0.12
        button.layer.shadowOffset = CGSize(width: 0, height: 1)
        button.sizeToFit()
        let buttonSize = CGSize(width: 64, height: 64)
        let rect = UIScreen.main.bounds.insetBy(dx: 4 + buttonSize.width / 2, dy: 4 + buttonSize.height / 2)
        button.frame = CGRect(origin: CGPoint(x: rect.maxX - 15, y: rect.maxY - 50), size: CGSize(width: 64, height: 64))
        button.autoresizingMask = []
        view.addSubview(button)
        floatingButton = button
        let panner = UIPanGestureRecognizer(target: self, action: #selector(panDidFire(panner:)))
        floatingButton?.addGestureRecognizer(panner)
        snapButtonToSocket()
    }

    @objc fileprivate func panDidFire(panner: UIPanGestureRecognizer) {
        guard let floatingButton = floatingButton else {return}
        let offset = panner.translation(in: view)
        panner.setTranslation(CGPoint.zero, in: view)
        var center = floatingButton.center
        center.x += offset.x
        center.y += offset.y
        floatingButton.center = center

        if panner.state == .ended || panner.state == .cancelled {
            UIView.animate(withDuration: 0.3) {
                self.snapButtonToSocket()
            }
        }
    }

    fileprivate func snapButtonToSocket() {
        guard let floatingButton = floatingButton else {return}
        var bestSocket = CGPoint.zero
        var distanceToBestSocket = CGFloat.infinity
        let center = floatingButton.center
        for socket in sockets {
            let distance = hypot(center.x - socket.x, center.y - socket.y)
            if distance < distanceToBestSocket {
                distanceToBestSocket = distance
                bestSocket = socket
            }
        }
        floatingButton.center = bestSocket
    }

    fileprivate var sockets: [CGPoint] {
        let buttonSize = floatingButton?.bounds.size ?? CGSize(width: 0, height: 0)
        let rect = view.bounds.insetBy(dx: 4 + buttonSize.width / 2, dy: 4 + buttonSize.height / 2)
        let sockets: [CGPoint] = [
            CGPoint(x: rect.minX + 15, y: rect.minY + 30),
            CGPoint(x: rect.minX + 15, y: rect.maxY - 50),
            CGPoint(x: rect.maxX - 15, y: rect.minY + 30),
            CGPoint(x: rect.maxX - 15, y: rect.maxY - 50)
        ]
        return sockets
    }
    // Custom socket position to hold Y position and snap to horizontal edges.
    // You can snap to any coordinate on screen by setting custom socket positions.
    fileprivate var horizontalSockets: [CGPoint] {
        guard let floatingButton = floatingButton else {return []}
        let buttonSize = floatingButton.bounds.size
        let rect = view.bounds.insetBy(dx: 4 + buttonSize.width / 2, dy: 4 + buttonSize.height / 2)
        let y = min(rect.maxY - 50, max(rect.minY + 30, floatingButton.frame.minY + buttonSize.height / 2))
        let sockets: [CGPoint] = [
            CGPoint(x: rect.minX + 15, y: y),
            CGPoint(x: rect.maxX - 15, y: y)
        ]
        return sockets
    }
}
