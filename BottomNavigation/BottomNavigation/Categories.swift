import UIKit

struct Category {
    var image: String
    var name: String
    
    static func categoriesInfo() -> [Category] {
        return [Category(image:"Axe",name:"Axé"),
                Category(image:"Blues",name:"Blues"),
                Category(image:"Country",name:"Country"),
                Category(image:"Eletronic",name:"Eletronica"),
                Category(image:"Forro",name:"Forró"),
                Category(image:"Funk",name:"Funk"),
                Category(image:"Gospel",name:"Gospel"),
                Category(image:"MPB",name:"MPB"),
                Category(image:"Jazz",name:"Jazz"),
                Category(image:"Pagode",name:"Pagode"),
                Category(image:"Pop",name:"Pop"),
                Category(image:"Rock",name:"Rock"),
                Category(image:"Samba",name:"Samba"),
                Category(image:"Sertanejo",name:"Sertanejo"),
               ]
    }
}
