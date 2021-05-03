//
//  DeepView.swift
//  NavigationTest
//
//  Created by 쿰스 on 2021/05/02.
//
import UIKit
import CoreLocation

class DeepView: UIViewController, CLLocationManagerDelegate {
    
    private var locationManager:CLLocationManager?
    
    
    private var GeoLabel:UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemFill
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GeoLabel.frame = CGRect(x: 20, y: view.bounds.height/2-50, width: view.bounds.width-40, height: 100)
        view.addSubview(GeoLabel)
        locationManager = CLLocationManager()
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
        locationManager?.delegate = self
        print ("Deep View loaded !!!")
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print ("Location is Updated !!!")
        if let location = locations.last {
            GeoLabel.text = "LAT : \(location.coordinate.latitude) \nLNG : \(location.coordinate.longitude)"
        }
    }
}
