//
//  PlayerClass.swift
//  VideoPlayerForiPad
//
//  Created by ramil on 18.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation
import AVKit

class PlayerClass: UIView {
    
    private let avPlayerLayer = AVPlayerLayer()
    
    let startTime: CMTime = CMTimeMake(value: 10, timescale: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let url = Bundle.main.path(forResource: "movie", ofType: "mp4")
        let player = AVPlayer(url: URL(fileURLWithPath: url!))
        
        player.actionAtItemEnd = .none
        player.seek(to: startTime)
        player.play()
        avPlayerLayer.player = player
        
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidEnd(notification:)), name: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)
        
        layer.addSublayer(avPlayerLayer)
    }
    
    @objc func playerDidEnd(notification: Notification) {
        if let avPlayerItem = notification.object as? AVPlayerItem {
            avPlayerItem.seek(to: startTime, completionHandler: nil)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init error")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        avPlayerLayer.frame = bounds
    }
}
