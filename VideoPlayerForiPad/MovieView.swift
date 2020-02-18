//
//  MovieView.swift
//  VideoPlayerForiPad
//
//  Created by ramil on 18.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct MovieView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<MovieView>) {
    }
    
    func makeUIView(context: Context) -> UIView {
        return PlayerClass(frame: .zero)
    }
}


