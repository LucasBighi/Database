import Foundation
public struct Database {
    
    public static let `default` = Database()
    
    public func set(_ value: Any, forKey key: DatabaseKey) {
        UserDefaults.standard.set(value, forKey: key.key)
    }
    
    public func getValue(forKey key: DatabaseKey) -> Any? {
        return UserDefaults.standard.value(forKey: key.key)
    }
}
