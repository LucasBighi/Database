import RealmSwift

public struct Database {
    
    public static let `default` = try! Database()

    private var realm: Realm

    private init() throws {
        self.realm = try Realm()
    }

    public func configure() {

    }

    public func create(_ object: Storable) {
        let newObject = object
        try! realm.write {
            realm.add(newObject)
        }
    }
    
    public func get<T: Storable>(_ type: T.Type) -> T? {
        return realm.objects(T.self).first
    }
    
    public func update<T: Storable>(_ type: T.Type, block: (T) -> Void) {
        guard let toUpdateObject = get(T.self) else { return }
        try! realm.write {
            block(toUpdateObject)
        }
    }
    
    public func delete<T: Storable>(_ type: T.Type) {
        guard let toDeleteObject = get(T.self) else { return }
        try! realm.write {
            realm.delete(toDeleteObject)
        }
    }
}

public protocol Storable: Object {
    
    
}
