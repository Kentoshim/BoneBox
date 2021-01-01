//
// Created by 島健人 on 2021/01/01.
//

import SwiftUI
import Rswift

struct MainView: View {
    @ObservedObject private var authManager = FirebaseAuthManager()
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    R.image.mainVisual.image
                    Spacer()
                    Spacer()
                    if authManager.signIn {
                        StartButtonsView()
                    } else { LoginButtonView() }
                    Spacer()
                    
                }
            }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
