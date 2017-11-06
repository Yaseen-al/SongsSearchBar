//
//  ViewController.swift
//  SongsTableViewSearchBar
//
//  Created by C4Q  on 11/6/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var mySearchBar: UISearchBar!
    var mySongList = [Song]()
    // I need two method to answer how many rows and how are the cells will look like
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  mySongList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personSetup = mySongList[indexPath.row]
        guard let cell: UITableViewCell = myTableView.dequeueReusableCell(withIdentifier: "myCell") else {
            let defaultCell = UITableViewCell()
            return defaultCell
        }
        cell.textLabel?.text = personSetup.name
        cell.detailTextLabel?.text = personSetup.artist
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySongList = Song.loveSongs
        // Do any additional setup after loading the view, typically from a nib.
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.mySearchBar.delegate = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailedTableViewController{
            let selectedRow = self.myTableView.indexPathForSelectedRow?.row
            let selectedSong = self.mySongList[selectedRow!]
            destination.song = selectedSong
        }
    }
    
}

