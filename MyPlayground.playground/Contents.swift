/*:
 # Document and Tutorial
 The code bellows is changing background color by its platform.
 
 Please try to change playgrounds platform from inspector pane
 
「 Playground Settings > Platform > Choose platform」
 
*/

import SwiftUI
import PlatformModifier
import PlaygroundSupport

struct ContentView : View {
    
    var body: some View {
        Text("Hello Platform Modifier!")
            .iOS({ $0.background(Color.red) })
            .macOS({ $0.background(Color.blue) })
            .tvOS({ $0.background(Color.green) })
            .watchOS({ $0.background(Color.yellow) })
    }
    
}

// Present the view controller in the Live View window
PlaygroundPage.current.setLiveView(ContentView())
