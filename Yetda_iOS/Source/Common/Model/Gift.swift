//
//  Gift.swift
//  Yetda_iOS
//
//  Created by Leon Kong on 2020/02/04.
//  Copyright © 2020 Yetda. All rights reserved.
//

import Foundation
import RealmSwift

class Gift: Object {
    @objc dynamic var name = ""
    let tags = List<String>()
}