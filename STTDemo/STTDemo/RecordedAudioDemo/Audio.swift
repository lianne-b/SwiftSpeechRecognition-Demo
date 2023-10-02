//
//  Audio.swift
//  STTDemo
//
//  Created by Ye Eun Choi on 2023/10/02.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

// MARK: - Play Sound
/// 음성을 재생하기 위한 함수
func playSound(sound: String, type: String) {
    do {
        /// 로컬에서 음성 재생하기
        if let path = Bundle.main.path(
            forResource: sound,
            ofType: type
        ) {
            audioPlayer = try AVAudioPlayer(contentsOf:
                                                URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
    } catch let error {
        print(error)
    }
}

// MARK: - Pause Sound
/// 재생을 멈추는 함수
func pauseSound(sound: String, type: String) {
    do {
        if let path = Bundle.main.path(
            forResource: sound,
            ofType: type
        ) {
            audioPlayer = try AVAudioPlayer(contentsOf:
                                                URL(fileURLWithPath: path))
            audioPlayer?.pause()
        }
    } catch let error {
        print(error)
    }
}
