//
//  ContentView.swift
//  PlaySwiftUIHelper
//
//  Created by Joel Chinchilla on 17/2/23.
//

import SwiftUI

struct LabelValue: View {
    var imageName: String
    var labelTitle: String
    var labelValue: String
    var body: some View {
        HStack {
            Image(imageName)
            Text(labelTitle)
            Text(labelValue)
            Spacer()
        }
        .padding(.init(top: 8, leading: 0, bottom: 8, trailing: 0))
    }
}

struct ContentView: View {
    var body: some View {
        
        VStack {
            LabelValue(imageName: "captionsIcon",
                       labelTitle: "Captions",
                       labelValue: "Off")
            Divider()
                .padding(.leading, 25)
            LabelValue(imageName: "playbackSpeedIcon",
                       labelTitle: "PlaybackSpeed",
                       labelValue: "1x")
            Divider()
                .padding(.leading, 25)
            LabelValue(imageName: "videoQualityIcon",
                       labelTitle: "Quality",
                       labelValue: "480p")
            Divider()
                .padding(.leading, 25)
            Spacer()
        }
        .padding(.init(top: 40, leading: 28, bottom: 8, trailing: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
