//
//  DetailedTableViewController.swift
//  SongsTableViewSearchBar
//
//  Created by C4Q on 11/6/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class DetailedTableViewController:UIViewController {
    var song:Song? = nil
    @IBOutlet weak var songPoster: UIImageView!
    
    @IBOutlet weak var nameOfSong: UILabel!
    
    @IBOutlet weak var songAritst: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        guard let song = song else {
            return
        }
        songPoster.image = #imageLiteral(resourceName: "loveSongs")
        nameOfSong.text = song.name
        songAritst.text = song.artist
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

}
