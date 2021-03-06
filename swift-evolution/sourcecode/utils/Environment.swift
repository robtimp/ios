import Foundation

public struct Environment {
    
    
    private static var settings: [String: Any]? {
        guard
            let dict = Bundle.main.infoDictionary,
            let settings = dict["EnvironmentSettings"] as? [String: Any] else {
                return nil
        }
        
        return settings
    }
    
    public static var title: String? {
        guard
            let settings = self.settings,
            let title = settings["Title"] as? String else {
                return nil
        }
        
        return title
    }

    public struct Release {
        public static var name: String? {
            guard
                let dict = Bundle.main.infoDictionary,
                let name = dict["CFBundleDisplayName"] as? String else {
                    return nil
            }
            
            return name
        }
        
        public static var version: String? {
            guard
                let dict = Bundle.main.infoDictionary,
                let name = dict["CFBundleShortVersionString"] as? String else {
                    return nil
            }
            
            return name
        }
        
        public static var build: String? {
            guard
                let dict = Bundle.main.infoDictionary,
                let name = dict["CFBundleVersion"] as? String else {
                    return nil
            }
            
            return name
        }
    }
}
