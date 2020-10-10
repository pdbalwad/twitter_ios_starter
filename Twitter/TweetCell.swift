//
//  TweetCell.swift
//  Twitter
//
//  Created by Priyanka Balwadkar on 10/9/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var tweetContentLabel: UILabel!
    
    @IBOutlet weak var twitterHandleLabel: UILabel!
    
    
    @IBOutlet weak var replyLabel: UILabel!
    
    
    @IBOutlet weak var retweetLabel: UILabel!
    
    
    @IBOutlet weak var favoriteLabel: UILabel!
    

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
