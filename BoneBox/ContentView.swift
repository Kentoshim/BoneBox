//
//  ContentView.swift
//  BoneBox
//
//  Created by 島健人 on 2020/12/30.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @ObservedObject private var authManager = FirebaseAuthManager()
    @State var isShowSheet = false

    var body: some View {
        VStack {
            if !authManager.signIn {
                Button(action: { self.isShowSheet.toggle() }) { Text("Sign-In")}
            } else {
                Button(action: {
                    do {
                        try Auth.auth().signOut()
                    } catch { print("sign out Error")
                    }
                }) { Text("Sign Out") }
            }
        }.sheet(isPresented: $isShowSheet) {
            FirebaseAuthView(isShowingSheet: self.$isShowSheet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
