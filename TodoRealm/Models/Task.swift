//
//  Task.swift
//  TodoRealm
//
//  Created by Artem Paliutin on 24.02.2022.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
