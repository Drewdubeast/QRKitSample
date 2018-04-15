//
//  ViewController.swift
//  QRKitTest
//
//  Created by Drew Wilken on 3/18/18.
//  Copyright © 2018 Drew Wilken. All rights reserved.
//

import UIKit
import QRKit

class ViewController: UIViewController {
    
    //override viewDidAppear, and show the QR Reader camera
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //create camera view controller
        let camera = QRReaderController.init()
        
        //set delegate to self (so that when a QR code is read, it sends the data to this class
        camera.delegate = self
        
        //show the camera view controller
        present(camera, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//delegate to handle QR findings - must implement in order to be able to process QR code findings.
extension ViewController: QRReaderDelegate {
    
    func processQR(_ qrString: String, with controller: UIViewController) {
        let alert = UIAlertController(title: "FOUND A CODE BOI", message: qrString, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: nil))
        
        controller.present(alert, animated: true)
    } 
}

