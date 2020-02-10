//
//  VideoModel.swift
//  TableView
//
//  Created by iim jobs on 10/02/20.
//  Copyright © 2020 iim jobs. All rights reserved.
//

import UIKit

class VideoModel: NSObject {

    var videos = [Video] ()
    
    override init() {
        for i in 0...4 {
            videos.append(Video("\(i)", "Title \(i)", "Description \(i)"))
        }
    }
    
}
