//
//  PlaybackItemCell.swift
//  LGAudioPlayerLockScreen
//
//  Created by Kishor on 22/05/17.
//  Copyright © 2017 Inscript India Pvt Ltd. All rights reserved.
//

import Foundation
import UIKit

class PlaybackItemCell: UITableViewCell {

    //MARK: - Vars
    
    
    
    
    let playbackItem: PlaybackItem
    var barsImageView: UIImageView?
    
    //MARK: - Dependencies
    
    let player: AudioPlayer
    
    //MARK: - Init
    
    init(player: AudioPlayer, playbackItem: PlaybackItem) {
        self.playbackItem = playbackItem
        self.player = player

        super.init(style: .subtitle, reuseIdentifier: nil)
        
        self.updateView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    //MARK: - Update View
    
    func updateView() {
        self.imageView?.image = UIImage(named: self.playbackItem.albumImageName)
        self.textLabel?.text = "\(self.playbackItem.artistName) - \(self.playbackItem.trackName)"
        self.detailTextLabel?.text = "\(self.playbackItem.albumName)"
        
       
    }
    
   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        
    }
    
}
