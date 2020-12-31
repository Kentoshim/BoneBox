//
//  BoneBoxApp.swift
//  BoneBox
//
//  Created by 島健人 on 2020/12/30.
//

import SwiftUI
import Firebase

@main
struct BoneBoxApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
