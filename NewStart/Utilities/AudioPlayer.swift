//
//  AudioPlayer.swift
//  NewStart
//
//  Created by Vedat Ozlu on 16.07.2023.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            if #available(iOS 16.0, *) {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            } else {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            }
            audioPlayer?.play()
        }catch {
            print("could not play the sound file")
        }
    }
}
