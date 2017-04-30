//
//  DetailViewController.swift
//  SimpleStreamPlayer
//
//  Created by Mackode - Bartlomiej Makowski on 29.04.2017.
//  Copyright © 2017 Mackode - Bartlomiej Makowski. All rights reserved.
//

import UIKit
import AVFoundation

class DetailViewController: UIViewController {

    @IBOutlet weak var playerView: UIView!
    @IBOutlet weak var startStopButton: UIButton!

    func configureView() {
        // Update the user interface for the detail item.
        guard let detail = detailItem else { return }
        guard let url = detail.url else { return }
        print(url)
        
        let videoURL = URL(string: url)
        let player = AVPlayer(url: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        
        playerView.layer.addSublayer(playerLayer)
        player.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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

