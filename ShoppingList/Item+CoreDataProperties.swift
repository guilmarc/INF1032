//
//  Item+CoreDataProperties.swift
//  ShoppingList
//
//  Created by Marco Guilmette on 2016-02-10.
//  Copyright © 2016 Infologique. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var title: String?
    @NSManaged var price: NSDecimalNumber?

}
