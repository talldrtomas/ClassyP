//
//  ViewController.swift
//  ClassyP
//
//  Created by Tomas Galvan-Huerta on 12/31/18.
//  Copyright © 2018 Somat. All rights reserved.
//

import UIKit
import SceneKit
import ARKit
import MapKit
import CoreLocation

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    let Dest = destinations()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        // Run the view's session
        guard let imagetoTrack = ARReferenceImage.referenceImages(inGroupNamed: "trackingImages", bundle: Bundle.main) else {
            return print("Images not found")
        }
        configuration.detectionImages = imagetoTrack
        configuration.maximumNumberOfTrackedImages = 2
        print("Image was found")
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    
    
    // MARK: - ARSCNViewDelegate
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
  
    func setupLocations(){
        
    }
    
    
    
    func reconizeImages(){
        for mylocations in Dest.testDestinations{
            newMarker(laditude: mylocations.laditude, longitude: mylocations.longitude, altitude: mylocations.altitude, image: mylocations.image)
        }
    }
    
    
    
    
    
    
    
    
    
    func newMarker(laditude: Double, longitude: Double, altitude: Double, image: String){
        let coordinate = CLLocationCoordinate2D(latitude: laditude, longitude: longitude)
        //let location = CLLocation(altitude: altitude + 65.00, coordinate: coordinate)
        guard let image = UIImage(named: image)else {
            return print("Did not find image") }
        
        //let annotationNode = LocationAnnotationNode(location: location, image: image)
        //sceneViewLocation.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        //annotationNode.scaleRelativeToDistance = true
        //sceneView.addSubview(sceneViewLocation)
    }
}
