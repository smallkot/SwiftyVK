import Foundation

private class ResourceTestClass {}

struct Resources {
    private static let pathSuffix: String = {
        #if os(OSX)
            return "-OSX"
        #elseif os(iOS)
            return "-iOS"
        #elseif os(tvOS)
            return "-tvOS"
        #elseif os(watchOS)
            return "-watchOS"
        #endif
    }()
    
    static let bundle: Bundle = {
        let name = "SwiftyVKResources" + pathSuffix
        let `extension` = "bundle"
        
        if
            let path = Bundle.main.path(forResource: name, ofType: `extension`),
            let bundle = Bundle(path:path) {
            return bundle
        }
        else if
            let path = Bundle(for:object_getClass(ResourceTestClass())).path(forResource: name, ofType: `extension`),
            let bundle = Bundle(path:path) {
            return bundle
        }
        
        return Bundle.main
    }()
    
    static func withSuffix(_ name: String) -> String {
        return name + pathSuffix
    }
}
