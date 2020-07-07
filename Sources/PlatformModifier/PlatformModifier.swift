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

// Althogh library items are registered, Details are not previewed.
public struct PlatformModifier_Library<ContentView : View> : LibraryContentProvider {

    @LibraryContentBuilder
    public func modifiers(base: ContentView) -> [LibraryItem] {
        LibraryItem(base.iOS({ $0.padding(3) }),
                    title: "Platform iOS")
        LibraryItem(base.macOS({ $0.padding(3) }),
                    title: "Platform macOS")
        LibraryItem(base.tvOS({ $0.padding(3) }),
                    title: "Platform tvOS")
        LibraryItem(base.watchOS({ $0.padding(3) }),
                    title: "Platform watchOS")
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
