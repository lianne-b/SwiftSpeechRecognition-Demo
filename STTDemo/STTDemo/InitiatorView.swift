//
//  InitiatorView.swift
//  STTDemo
//
//  Created by Ye Eun Choi on 2023/10/02.
//

import SwiftUI

struct InitiatorView: View {
    var body: some View {
        VStack {
            Button("음성 🔄 텍스트 변환") {
                
            }
            .font(.title3)
            .fontWeight(.semibold)
            .tint(.black)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct InitiatorView_Previews: PreviewProvider {
    static var previews: some View {
        InitiatorView()
    }
}
