//
//  PlayerController.swift
//  VideoPlayerTest
//
//  Created by Dr. Brandon Wiley on 12/3/20.
//

import Foundation
import AVKit

public class PlayerController
{
    public let avplayer: AVPlayer
    var paused = false

    public init(url: URL)
    {
        avplayer = AVPlayer(url: url)
    }

    public func play()
    {
        avplayer.play()
    }

    public func pause()
    {
        avplayer.pause()
    }

    public func togglePause()
    {
        if paused
        {
            paused = false
            avplayer.play()
        }
        else
        {
            paused = true
            avplayer.pause()
        }
    }
}
