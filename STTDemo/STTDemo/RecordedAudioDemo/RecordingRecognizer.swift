//
//  RecordingRecognizer.swift
//  STTDemo
//
//  Created by Ye Eun Choi on 2023/10/02.
//

import Foundation
import Speech

// MARK: - Request Audio Recognition Permission
/// 권한 요청을 위한 함수
func requestPermission(completion: @escaping (String) -> Void) {
    SFSpeechRecognizer.requestAuthorization { authStatus in
        if authStatus == .authorized {
           
            if let path = Bundle.main.path(
                forResource: "audioKOR",
                ofType: "mp3"
            ) {
                recognizeRecording(
                    url: URL(fileURLWithPath: path),
                    completion: completion
                )
            }
        } else {
            print("Speech failed")
        }
    }
}


// MARK: - Recognize Recording
/// 음성 인식을 위한 함수
func recognizeRecording(url: URL, completion: @escaping (String) -> Void) {
    let recognizer = SFSpeechRecognizer()
    let request = SFSpeechURLRecognitionRequest(url: url)
    recognizer?.recognitionTask(with: request, resultHandler: { result, error in
        guard let result = result else {
            print("No results for recognition")
            return
        }
        
        /// 인식 결과 문자열로 변환 후 completion을 통해 반환
        completion(result.bestTranscription.formattedString)
    })
}
