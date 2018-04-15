//
//  QRGenViewController.swift
//  QRKitTest
//
//  Created by Drew Wilken on 4/15/18.
//  Copyright © 2018 Drew Wilken. All rights reserved.
//

import UIKit
import QRKit

class QRGenViewController: UIViewController {

    @IBOutlet weak var QRSampleView: QRView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //generate the QR code
        QRSampleView.setupQR(string: "Hello, World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
