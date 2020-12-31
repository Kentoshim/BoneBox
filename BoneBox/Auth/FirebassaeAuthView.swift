//
//  FirebassaeAuthView.swift
//  BoneBox
//
//  Created by 島健人 on 2020/12/30.
//

import SwiftUI
import FirebaseUI

struct FirebaseAuthView: UIViewControllerRepresentable {

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    typealias UIViewControllerType = UINavigationController

    @Binding var isShowingSheet: Bool

    class Coordinator: NSObject, FUIAuthDelegate {
        let parent: FirebaseAuthView
        init(_ parent: FirebaseAuthView) {
            self.parent = parent
        }

        func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?) {
            if let error = error { print("Auth Failed: \(error.localizedDescription)") }

            if let _ = user { print ("Auth Completed!") }

            parent.isShowingSheet = false
        }
    }

    func makeUIViewController(context: Context) -> UINavigationController {
        let authUI = FUIAuth.defaultAuthUI()!
        authUI.delegate = context.coordinator
        authUI.providers = [
            FUIGoogleAuth(),
        ]
        return authUI.authViewController()
    }
}
