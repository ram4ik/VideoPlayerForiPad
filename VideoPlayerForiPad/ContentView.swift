//
//  ContentView.swift
//  VideoPlayerForiPad
//
//  Created by ramil on 18.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State private var trigger = false
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                self.trigger.toggle()
            }) {
                Text("Play")
            }
            Spacer()
            if trigger {
                MovieView()
                    .padding()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
