//
//  StartButtonsView.swift
//  BoneBox
//
//  Created by 島健人 on 2021/01/01.
//

import SwiftUI

struct StartButtonsView: View {
    var body: some View {
        HStack(alignment: .center) {
            NavigationLink(destination: MainView()) {
                Button(
                    action: {
                        // TODO: 参加画面への画面遷移
                        print("to JoinView") }
                ) { Text("参加する")
                    .padding(4)
                }
                .frame(width: 130, height: 32, alignment: .center)
                .background(Color.white)
            }
            NavigationLink(
                destination: MainView()){
                Button(
                    action: {
                        // TODO: ルーム作成画面への遷移
                        print("to CreateView") }
                ) { Text("ルームを作成する")
                    .padding(4)
                }
                .frame(width: 150, height: 32, alignment: .center)
                .background(Color.white)
            }
        }
    }
}

struct StartButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonsView()
    }
}
