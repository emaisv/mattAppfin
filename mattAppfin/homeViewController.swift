//
//  ViewController.swift
//  scrollTest
//
//  Created by Emily on 7/21/21.
//

import UIKit
import AVFoundation

class homeViewController: UIViewController {
    
   
    var player : AVPlayer?


    override func viewDidLoad() {
        
        
        super.viewDidLoad()
       playBackgroundVideo()
    }

    func playBackgroundVideo(){
        let path = Bundle.main.path(forResource: "pond drop", ofType: ".mp4")
        player = AVPlayer(url: URL(fileURLWithPath: path!))
        player!.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        self.view.layer.insertSublayer(playerLayer, at: 0)
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player!.currentItem)
        player!.seek(to: CMTime.zero)
        player!.play()
        self.player?.isMuted = true
        
    }
    
    
    @objc func playerItemDidReachEnd(){
        player!.seek(to: CMTime.zero)
    }
   

    @IBAction func wellnessClick(_ sender: Any) {

    }
    
    @IBAction func WaterTrackerPgButton(_ sender: Any) {
    }
    
}




