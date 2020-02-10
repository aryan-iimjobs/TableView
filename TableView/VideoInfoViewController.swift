//
//  VideoInfoViewController.swift
//  TableView
//
//  Created by iim jobs on 10/02/20.
//  Copyright © 2020 iim jobs. All rights reserved.
//

import UIKit

class VideoInfoViewController: UIViewController {
    
    var selectedVideo:Video?
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = selectedVideo?.info
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
