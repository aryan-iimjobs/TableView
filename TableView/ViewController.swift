//
//  ViewController.swift
//  TableView
//
//  Created by iim jobs on 10/02/20.
//  Copyright © 2020 iim jobs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cellSpacingHeight: CGFloat = 5
    var selectedVideo:Video?
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let videoInfoViewController = segue.destination as! VideoInfoViewController
        
        videoInfoViewController.selectedVideo = self.selectedVideo
    }
    
    @IBOutlet weak var tableView: UITableView!
    var videos = [Video] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.videos = VideoModel().videos
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
           videos.count
       }
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 1
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return self.view.frame.size.width / 2
       }
       
       // Make the background color show through
       func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
           let headerView = UIView()
           headerView.backgroundColor = UIColor.clear
           return headerView
       }
       
       func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return cellSpacingHeight
       }
       
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           selectedVideo = videos[indexPath.section]
           
           self.performSegue(withIdentifier: "goToInfo", sender: self)
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
           
           let label = cell.viewWithTag(2) as! UILabel
           
           label.text = videos[indexPath.section].title
           
           cell.backgroundColor = UIColor.white
           cell.layer.cornerRadius = 1
           cell.clipsToBounds = true
           
           return cell
       }
}
