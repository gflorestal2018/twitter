//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Garry Florestal on 9/20/22.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var tweetContent: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var rtButton: UIButton!
    
    @IBAction func retweetTweet(_ sender: Any) {
    }
    @IBAction func favoriteTweet(_ sender: Any) {
    }
    
    var favorited:Bool = false
    var tweetId:Int = -1
    
    func setFavorited(_ isFavorited:Bool){
        favorited = isFavorited
        if(favorited){
            favButton.setImage(UIImage(named: "favor-icon-red"), for: UIControl.State.normal)
        } else {
            favButton.setImage(UIImage(named: "favor-icon-1"), for: UIControl.State.normal)        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
