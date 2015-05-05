//
//  TweetCell.swift
//  swift-twitter-client
//
//  Created by Jose Hernandez on 5/4/15.
//
//

import UIKit

class TweetCell: UITableViewCell {
    
    
    var tweet: Tweet! {
        didSet {
//            thumbImageView.setImageWithURL(tweet.imageURL)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
