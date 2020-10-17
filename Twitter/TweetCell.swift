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
    
    @IBAction func retweetButton(_ sender: Any) {
        TwitterAPICaller.client?.retweet(tweetId: tweetId, success: {
                self.setRetweeted(true)
            }, failure: { (error) in
                print("Error in retweeting: \(error)")
            })
        
    
        
    }
    
    @IBOutlet weak var retweetLabel: UILabel!
    
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBOutlet weak var favoriteLabel: UILabel!
    

    @IBOutlet weak var favoriteButton: UIButton!
    
    var favorite_count:Int = 0
    var favorited:Bool = false
    var retweeted:Bool = false
    var tweetId:Int = -1
    @IBAction func favoriteTweet(_ sender: Any) {
        let toBeFavorited = !favorited
        if (toBeFavorited){
            TwitterAPICaller.client?.favoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(true)
                //let temp:Int = self.favorite_count + 1
                //self.favoriteLabel.text = String(temp)
                
            }, failure: { (error) in
                print("Favorite did not success: \(error)")
                
            })
        }
        else{
            TwitterAPICaller.client?.unfavoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(false)
                //let temp:Int = self.favorite_count
                //self.favoriteLabel.text = String(temp)
            }, failure: { (error) in
                print("Unfavorite did not success: \(error)")
            })
        }
    }
  
    
    func setFavorite(_ isFavorited: Bool){
        favorited = isFavorited
        if (favorited){
            favoriteButton.setImage(UIImage(named:"favor-icon-red"), for: UIControl.State.normal)
            
        }
        else
        {
            favoriteButton.setImage(UIImage(named:"favor-icon"), for: UIControl.State.normal)
        }
        
    }
    
    func setRetweeted(_ isRetweeted:Bool)
    {
        if(isRetweeted){
            retweetButton.setImage(UIImage(named:"retweet-icon-green"), for: UIControl.State.normal)
            retweetButton.isEnabled = false
        }
        else{
            retweetButton.setImage(UIImage(named:"retweet-icon"), for: UIControl.State.normal)
            retweetButton.isEnabled = true
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
