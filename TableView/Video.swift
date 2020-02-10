//
//  Video.swift
//  TableView
//
//  Created by iim jobs on 10/02/20.
//  Copyright © 2020 iim jobs. All rights reserved.
//

import UIKit

class Video: NSObject {
    var id: String = ""
    var title: String = ""
    var info: String = ""
    
    init(_ id: String, _ title: String, _ info: String) {
        self.id = id
        self.title = title
        self.info = info
    }
}
