//
//  ContentView.swift
//  QRCode_SwiftUI
//
//  Created by Mehdican Büyükplevne on 31.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            QRCodeView(url: "www.linkedin.com/in/mbuyukplevne")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
