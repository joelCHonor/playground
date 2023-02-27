//
//  Toast.swift
//  PlaySwiftUIHelper
//
//  Created by Joel Chinchilla on 23/2/23.
//

import SwiftUI

struct Toast: View {
    private var text: String = "Captions Enabled (English)"
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                Spacer()
                Image(systemName: "exclamationmark.triangle")
            }
            .padding(20)
            .background(Color.gray)
            .cornerRadius(8)
            
        }
        .frame(maxWidth: .infinity)
        .padding(20)
    }
}

struct NoDataToast_Previews: PreviewProvider {
    static var previews: some View {
        Toast()
    }
}
