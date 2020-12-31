//
// Created by 島健人 on 2020/12/31.
//

import FirebaseAuth

class FirebaseAuthManager: ObservableObject {
    @Published var signIn = false
    private var handle: AuthStateDidChangeListenerHandle!

    init() {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let _ = user {
                print("sign in")
                self.signIn = true
            } else {
                print("sign out")
                self.signIn = false
            }
        }
    }

    deinit {
        Auth.auth().removeStateDidChangeListener(handle)
    }
}