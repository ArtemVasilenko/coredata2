import Foundation
import CoreData

class ProductListModel {
    
    lazy var persistantContainer: NSPersistentContainer = {
       let container = NSPersistentContainer(name: "ListToBuy")
        container.loadPersistentStores { (store, error) in
            
        }
        
        return container
    }()
    
    
}
