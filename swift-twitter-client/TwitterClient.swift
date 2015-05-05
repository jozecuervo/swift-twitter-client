//
//  TwitterClient.swift
//  swift-twitter-client
//
//  Created by Jose Hernandez on 5/3/15.
//
//

import UIKit

let twitterConsumerKey = "ESF2iPGjGVjCsGAz7I4dfilLQ";
let twitterConsumerSecret = "Rf9t8ZCVuIGGnwHeZvgpWqXBdVTOlywsd51mbxXp73LRAndwiC";
let twitterBaseURL = NSURL(string:"https://api.twitter.com")

class TwitterClient: BDBOAuth1RequestOperationManager {
   
    class var sharedInstance: TwitterClient {
    
        struct Static {
            static let instance = TwitterClient(baseURL:twitterBaseURL, consumerKey:twitterConsumerKey,consumerSecret:twitterConsumerSecret)
        }
        return Static.instance
    }
}
