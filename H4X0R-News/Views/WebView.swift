//
//  WebView.swift
//  H4X0R-News
//
//  Created by Jorge Gonzalez on 26/05/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                (uiView as! WKWebView).load(request)
            }
        }
    }
}
