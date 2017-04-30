//
//  DetailViewController.swift
//  SimpleStreamPlayer
//
//  Created by Mackode - Bartlomiej Makowski on 29.04.2017.
//  Copyright © 2017 Mackode - Bartlomiej Makowski. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var playerView: UIView!
    @IBOutlet weak var startStopButton: UIButton!

    func configureView() {
        // Update the user interface for the detail item.
        //if let detail = detailItem {
            /*
            if let label = detailDescriptionLabel {
                label.text = detail.timestamp!.description
            }
            */
        //}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Playlist? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

