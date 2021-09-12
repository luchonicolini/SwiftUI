//
//  Video.swift
//  iosfa_app
//.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/3)
//  Created by Luciano Nicolini on 13/06/2021.
//

import Foundation
import SwiftUI
import AVKit

struct NVideoPlayer: View {
    let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource:"beneficios", ofType: "mp4")!))
    
    var body: some View {
        ScrollView {
            VideoPlayer(player: player)
                .onAppear() {
                    player.play()
                }
                .onAppear() {
                    player.pause()
                }
                
                .cornerRadius(13)
                .frame(width: 380, height: 300)
        }

    }
}




struct VideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        NVideoPlayer()
            .previewLayout(.sizeThatFits)
            .padding()
           
    }
}
