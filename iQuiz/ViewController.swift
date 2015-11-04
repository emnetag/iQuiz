//
//  ViewController.swift
//  iQuiz
//
//  Created by user on 11/3/15.
//  Copyright © 2015 emnetg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var quizzes = ["Mathematics", "Marvel Super Heroes", "Science"]
    
    let cellIdentifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func settings(sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .Alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: .Cancel, handler: nil)
        
        alertController.addAction(okayAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizzes.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as UITableViewCell!
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: cellIdentifier)
        }
        
        cell!.textLabel?.text = quizzes[indexPath.row]
    
        var image: UIImage!
        
        if cell.textLabel?.text == quizzes[0] {
            image = UIImage(named: "function")
            cell!.detailTextLabel?.text = "Do Mathy Stuff!"
        } else if cell!.textLabel?.text == quizzes[1] {
            image = UIImage(named: "cape")
            cell!.detailTextLabel?.text = "Gotham Needs You!"
        } else {
            image = UIImage(named: "science")
            cell!.detailTextLabel?.text = "Do it for Science!"

        }
        cell!.imageView?.image = image
        
        cell.textLabel?.font = UIFont.boldSystemFontOfSize(18)
        cell.detailTextLabel?.font = UIFont.boldSystemFontOfSize(12)
        return cell!
    }
    
}

