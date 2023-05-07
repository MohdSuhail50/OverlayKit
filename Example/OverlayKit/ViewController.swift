//
//  ViewController.swift
//  OverlayKit
//
//  Created by Suhail on 05/05/2023.
//  Copyright (c) 2023 Suhail. All rights reserved.
//

import UIKit
import OverlayKit

class ViewController: UIViewController {

    private var json = """
    {
    "image" : {
      "url" : "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png",
      "height" : 250,
      "width" : 353
    },
    "text" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id bibendum libero. Ut eleifend sit amet felis vitae aliquam. Morbi ut justo leo. Maecenas fringilla justo id urna ornare",
    "buttons" : [
      {
        "text" : "cancel",
        "redirect_url" : "https://www.google.com",
        "size" : {
          "height" : 45,
          "width" : 80
        }
      },
      {
        "text" : "ok",
        "redirect_url" : "https://www.wigzo.com",
        "size" : {
          "height" : 45,
          "width" : 80
        }
      }
    ]
  }
"""
    
    var overLay: Overlay?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        overLay = Overlay(data: json)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction private func buttonPressed(_ sender: UIButton) {
        overLay?.createOverlay()
    }

}

