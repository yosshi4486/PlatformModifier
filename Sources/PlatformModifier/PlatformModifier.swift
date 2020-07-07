import SwiftUI

extension View {
    
    /// Modifies upstream content only when the platform is iOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    public func iOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(iOS)
        return modifier(self)
        #else
        return self
        #endif
    }
    
    /// Modifies upstream content only when the platform is macOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    public func macOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(macOS)
        return modifier(self)
        #else
        return self
        #endif
    }
    
    /// Modifies upstream content only when the platform is tvOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    public func tvOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(tvOS)
        return modifier(self)
        #else
        return self
        #endif
    }

    /// Modifies upstream content only when the platform is watchOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    public func watchOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(watchOS)
        return modifier(self)
        #else
        return self
        #endif
    }

}

// Previews in Swift Packages doesn't work now.
// https://developer.apple.com/forums/thread/652621

//struct ContentView_Preview : PreviewProvider {
//
//    static var previews: some View {
//        Text("Hello Platform Modifier!")
//            .bold()
//            .iOS({ $0.background(Color.red) })
//            .macOS({ $0.background(Color.blue) })
//            .tvOS({ $0.background(Color.green) })
//            .watchOS({ $0.background(Color.yellow) })
//    }
//
//}
