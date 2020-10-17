//
//  TweetViewController.swift
//  Twitter
//
//  Created by Priyanka Balwadkar on 10/16/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    @IBOutlet weak var TweetTextView: UITextView!
    @IBAction func CancelTweet(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func SubmitTweet(_ sender: Any) {
        if (!TweetTextView.text.isEmpty){
            TwitterAPICaller.client?.postTweet(tweetString: TweetTextView.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (error) in
                print("Error posting a tweet \(error)")
                self.dismiss(animated: true, completion: nil)
            })       }
        else
        {
            self.dismiss(animated: true, completion: nil)
        }
        
        
        
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        TweetTextView.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
