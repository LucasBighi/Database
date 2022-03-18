import Foundation
public struct Database {
    
    public static let `default` = Database()
    
    public enum Key: String {
        case hasBiometry
        case login
        case password
    }
    
    public func set(_ value: Any, forKey key: Key) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    public func getValue(forKey key: Key) -> Any? {
        return UserDefaults.standard.value(forKey: key.rawValue)
    }
}
