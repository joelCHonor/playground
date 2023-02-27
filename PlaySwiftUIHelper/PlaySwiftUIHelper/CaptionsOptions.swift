//
//  CaptionsOptions.swift
//  PlaySwiftUIHelper
//
//  Created by Joel Chinchilla on 17/2/23.
//

import SwiftUI

enum CaptionType {
    case off
    case language(code: String)
    case autoTranslate
}

struct CaptionOption: Identifiable {
    var id: Int
    var name: String
    var detailLabel: String
    var isSelected: Bool
    var type: CaptionType
}

struct CaptionOptionView: View {
    let currentSelectionId: Int
    let captionOption: CaptionOption
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Text(captionOption.name)
                        .foregroundColor(.black)
                }
                Text(captionOption.detailLabel)
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: currentSelectionId == captionOption.id  ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .tint(Color.black)
            }
            Text("Subtitles may not be 100% accurate as they are auto-generated.")
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 20)
        }
        .padding(.init(top: 0, leading: 24, bottom: 0, trailing: 24))
        
    }

}

struct CaptionsOptions: View {
    var options: [CaptionOption]
    @State var selectedOption: Int = -1
    var body: some View {
            VStack{
                HStack {
                    ZStack {
                        HStack {
                            Button("Cancel") {}
                                .padding(.leading, 24)
                            Spacer()
                        }
                        Text("Captions")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.init(top: 50, leading: 0, bottom: 5, trailing: 0))
                }
                ForEach(options) { opn in
                    Button(action: {
                        selectedOption = opn.id
                    }) {
                        CaptionOptionView(currentSelectionId: self.selectedOption,
                                          captionOption: opn)
                    }
                    .padding(.top, 18)
                }
                Spacer()
                Button("Done") {
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(32)
                .padding()
                
            }
    }
}

struct CaptionsOptions_Previews: PreviewProvider {
    static var previews: some View {
        let options: [CaptionOption] = [ CaptionOption(id: 1,
                                                       name: "Off",
                                                       detailLabel: "",
                                                       isSelected: true,
                                                       type: .off),
                                         CaptionOption(id: 2,
                                                       name: "English",
                                                       detailLabel: "Auto-generated subtitles",
                                                       isSelected: false,
                                                       type: .language(code: "end"))
        ]
        CaptionsOptions(options: options)
    }
}
