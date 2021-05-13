//
//  MapViewController.swift
//  WeatherPro
//
//  Created by AL TYUS on 5/3/21.
//

import Foundation
import MapKit
import MBProgressHUD

class MapViewController: UIViewController {
    private enum Segue: String {
        case detailSegue
    }

    @IBOutlet weak var mapView: MKMapView!
    private var timelines = [TimelineResponse.Timeline]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func handleMapTap(_ sender: UITapGestureRecognizer) {
        guard sender.state == .ended else {
            return
        }
        
        let tapPoint = sender.location(in: self.mapView)
        let coordinate = self.mapView.convert(tapPoint, toCoordinateFrom: self.mapView)
        
        MBProgressHUD.showAdded(to: self.view, animated: true)
        
        TomorrowService.shared
            .fetchTimelines(for: coordinate) { result in
                // Important to call back on main thread
                MBProgressHUD.hide(for: self.view, animated: true)
                switch result {
                case .failure(let error):
                    print(error)
                case .success(let timelines):
                    self.timelines = timelines
                    self.performSegue(withIdentifier: Segue.detailSegue.rawValue, sender: self)
                    print(timelines.compactMap(\.intervals))
                }
            }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.detailSegue.rawValue, let detailVC = segue.destination as? DetailViewController {
            detailVC.timelines = self.timelines
        }
    }
}
