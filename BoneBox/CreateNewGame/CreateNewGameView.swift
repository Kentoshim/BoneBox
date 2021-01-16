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
            PlayerCountView(selectedCase: $vm.players)
            PointSettingView(label: "持ち点", defaultValue: 25000, step: 1000, point: $vm.firstPoint)
            PointSettingView(label: "原点", defaultValue: 30000, step: 1000, point: $vm.originPoint)
        }
    }
}

struct CreateNewGameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewGameView()
    }
}
