//
//  AppDelegate.swift
//  TourQueen
//
//  Created by Lauren Nicole Roth on 2/15/16.
//  Copyright © 2016 Cosset. All rights reserved.
//

import UIKit

struct GPXURL {
    static let Notification = "GPXURL Radio Station"
    static let Key = "GPXURL URL Key"
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    
    var window: UIWindow?
    
    func application(application: UIApplication, handleOpenURL url: NSURL) -> Bool {
        print("url = \(url)")
        let center = NSNotificationCenter.defaultCenter()
        let notification = NSNotification(name: GPXURL.Notification, object: self, userInfo: [GPXURL.Key:url])
        center.postNotification(notification)
        return true
    }
    
}