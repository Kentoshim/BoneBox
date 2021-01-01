//
//  CreateNewGameView.swift
//  BoneBox
//
//  Created by 島健人 on 2021/01/01.
//

import SwiftUI

struct CreateNewGameView: View {
    @ObservedObject private var vm: CreateNewGameViewModel = CreateNewGameViewModel();
    var body: some View {
        List {
            PlayerCountView(selectedCase: $vm.state.players)
        }
    }
}

struct CreateNewGameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewGameView()
    }
}
