//
//  QRCodeView.swift
//  QRCode_SwiftUI
//
//  Created by Mehdican Büyükplevne on 31.05.2023.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeView: View {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var url: String
    
    var body: some View {
        Image(uiImage: generateQRCodeImage(url))
            .interpolation(.none)
            .resizable()
            .frame(width: 250, height: 250, alignment: .center)
    }
    
    func generateQRCodeImage(_ url: String) -> UIImage {
        let data = Data(url.utf8)
        filter.setValue(data, forKey: "inputMessage")
        if let qrCodeImage = filter.outputImage {
            if let qrCodeCGImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent) {
                return UIImage(cgImage: qrCodeCGImage)
            }
        }
            return UIImage(systemName: "xmark") ?? UIImage()
    }
}
