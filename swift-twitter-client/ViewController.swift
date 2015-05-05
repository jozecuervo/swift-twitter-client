//
//  ViewController.swift
//  swift-twitter-client
//
//  Created by Jose Hernandez on 5/3/15.
//
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        TwitterClient(baseURL:baseURL, consumerKey:consumerKey,consumerSecret:consumerSecret)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: AnyObject) {
        
        TwitterClient.sharedInstance.loginWithCompletion() {
            (user: User?, error: NSError?) in
            if user != nil {
                self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                var alert = UIAlertView()
                alert.message = "Authentication Error"
                alert.show()
            }
        }
    }

}

