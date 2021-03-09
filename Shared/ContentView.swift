//
//  ContentView.swift
//  Shared
//
//  Created by Dr. Brandon Wiley on 12/3/20.
//

import SwiftUI
import AVKit

struct ContentView: View {
    // "https://bit.ly/swswift
    private let player = PlayerController(url: URL(string: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8")!)

    var body: some View {
        VStack
        {
            Button("Pause", action: self.pause)

            VideoPlayer(player: player.avplayer)
                .onAppear() {
                    // Start the player going, otherwise controls don't appear
                    player.play()
                }
                .onDisappear() {
                    // Stop the player when the view disappears
                    player.pause()
                }
        }
    }

    func pause()
    {
        player.togglePause()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
