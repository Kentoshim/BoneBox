//
//  PlayerCountView.swift
//  BoneBox
//
//  Created by 島健人 on 2021/01/01.
//

import SwiftUI

struct PlayerCountView: View {
    @Binding var selectedCase: PlayerCount
    var onCommit: (Result<PlayerCount, Never>) -> Void = { _ in }
    var body: some View {
       
        VStack(alignment: .leading) {
            Text("対局人数")
                .alignmentGuide(.leading, computeValue: { dimension in
                    dimension[.leading] - 12
                })
                
            Picker("対局人数", selection: $selectedCase) {
                let cases = PlayerCount.allCases
                ForEach(cases) { `case` in
                    Text(`case`.description).tag(`case`)
                }
            }
            .onChange(of: selectedCase) {
                print($0)
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct Container: View {
    @State private var pc: PlayerCount = .four
    var body: some View {
        PlayerCountView(selectedCase: $pc)
    }
}
struct PlayerCountView_Previews: PreviewProvider {
    static var previews: some View {
        Container()
    }
}
