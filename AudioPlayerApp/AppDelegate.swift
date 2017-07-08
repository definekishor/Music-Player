//
//  AppDelegate.swift
//  LGAudioPlayerLockScreen
//
//  Created by Kishor on 22/05/17.
//  Copyright © 2017 Inscript India Pvt Ltd. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer




@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var player: AudioPlayer!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let audioSession = AVAudioSession.sharedInstance()
        let commandCenter = MPRemoteCommandCenter.shared()
        let nowPlayingInfoCenter = MPNowPlayingInfoCenter.default()
        let notificationCenter = NotificationCenter.default
        let bundle = Bundle.main
        
        self.player = AudioPlayer(dependencies: (audioSession, commandCenter, nowPlayingInfoCenter, notificationCenter))
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.makeKeyAndVisible()
        self.window!.rootViewController = PlaylistViewController(dependencies: (self.player, bundle, notificationCenter))
        
        return true
    }
    
}
