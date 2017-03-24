//
//  NewsTableViewController.swift
//  SlidebarMenu
//
//  Created by Pablo Mateo Fernández on 02/02/2017.
//  Copyright © 2017 355 Berry Street S.L. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {

    @IBOutlet var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 242.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! NewsTableViewCell

        // Configure the cell...
        if indexPath.row == 0 {
            cell.postImageView.image = UIImage(named: "watchkit-intro")
            cell.postTitleLabel.text = "WatchKit Intro: Creando un pequeño juego"
            cell.authorLabel.text = "Pablo Mateo"
            cell.authorImageView.image = UIImage(named: "author")
            
        } else if indexPath.row == 1 {
            cell.postImageView.image = UIImage(named: "custom-segue-featured-1024")
            cell.postTitleLabel.text = "Multipeer Connectivity Framework - Creando una app de Chat"
            cell.authorLabel.text = "Pablo Mateo"
            cell.authorImageView.image = UIImage(named: "fav-logo")
            
        } else {
            cell.postImageView.image = UIImage(named: "webkit-featured")
            cell.postTitleLabel.text = "Animated Custom Segues en iOS 8 - Aproximación"
            cell.authorLabel.text = "Pablo Mateo"
            cell.authorImageView.image = UIImage(named: "fav-logo")
            
        }

        return cell
    }


}
