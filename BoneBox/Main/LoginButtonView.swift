//
//  LoginButtonView.swift
//  BoneBox
//
//  Created by 島健人 on 2021/01/01.
//

import SwiftUI

struct LoginButtonView: View {
//    @ObservedObject private var authManager = FirebaseAuthManager()
    @State var isShowSheet = false
    var body: some View {
        Button(action: {
            self.isShowSheet.toggle()
        }, label: {
            Text("ログイン")
        }).sheet(isPresented: self.$isShowSheet) {
            FirebaseAuthView(isShowingSheet: $isShowSheet)
        }
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView()
    }
}
