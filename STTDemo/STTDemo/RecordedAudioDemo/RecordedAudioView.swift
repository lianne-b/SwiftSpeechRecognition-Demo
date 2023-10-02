//
//  ContentView.swift
//  STTDemo
//
//  Created by Ye Eun Choi on 2023/10/02.
//

import SwiftUI

struct RecordedAudioView: View {
    @State var convertedText: String = ""
    @State var showText: Bool = false
    
    var body: some View {
        ScrollView {
            HStack(spacing: 50) {
                Button("▶️") {
                    playSound(sound: "audioKOR", type: "mp3")
                    showText = true
                }
                .font(.largeTitle)
                .fontWeight(.semibold)
                
                Button("⏸️") {
                    pauseSound(sound: "audioKOR", type: "mp3")
                }
                .font(.largeTitle)
                .fontWeight(.semibold)
            }
            
            if showText {
                Text(convertedText)
            }
        }
        .onAppear {
            requestPermission { result in
                convertedText = result
            }
        }
    }
}

struct RecordedAudioView_Previews: PreviewProvider {
    static var previews: some View {
        RecordedAudioView()
    }
}
