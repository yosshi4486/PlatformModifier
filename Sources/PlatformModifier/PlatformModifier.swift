import SwiftUI

extension View {
    
    /// Modifies upstream content only when the platform is iOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    func iOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(iOS)
        return modifier(self)
        #else
        return self
        #endif
    }
    
    /// Modifies upstream content only when the platform is macOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    func macOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(macOS)
        return modifier(self)
        #else
        return self
        #endif
    }
    
    /// Modifies upstream content only when the platform is tvOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    func tvOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(tvOS)
        return modifier(self)
        #else
        return self
        #endif
    }

    /// Modifies upstream content only when the platform is watchOS.
    /// - Parameter modifier: A modifier.
    /// - Returns: A modified view.
    func watchOS<Content : View>(_ modifier: (Self) -> Content) -> some View {
        
        #if os(watchOS)
        return modifier(self)
        #else
        return self
        #endif
    }

}
