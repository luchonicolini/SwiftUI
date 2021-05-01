//
//  ViewWeb.swift
//  WebPage
//
//  Created by Luciano Nicolini on 10/11/2020.
//

import Foundation
import SwiftUI
import WebKit

struct  ViewwWeb: UIViewRepresentable {
    var url:String
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
       let wWebkit = WKWebView()
        wWebkit.load(request)
        return wWebkit
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<ViewwWeb>) {
        
    }
}
