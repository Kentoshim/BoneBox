//
//  PointSettingView.swift
//  BoneBox
//
//  Created by 島健人 on 2021/01/01.
//

import SwiftUI

struct PointSettingView: View {
    let label: String
    let defaultValue: Int
    let step: Int
    
    init(label: String, defaultValue: Int, step: Int = 1000, point: Binding<Int>) {
        self.label = label
        self.defaultValue = defaultValue
        self._point = point
        self.step = step
    }
    @Binding var point: Int

    var body: some View {
        
        VStack(alignment: .leading) {
            Text(label)
                .frame(alignment: .leading)
            Stepper(
                onIncrement: { point += step },
                onDecrement: { point -= step }
            ) { Text("\(point)点") }
        }
    }
}

struct PointContainer: View {
    @State private var point = 25000
    var body: some View {
        PointSettingView(label: "持ち点", defaultValue: 25000, point: $point)
    }
}
struct PointSettingView_Previews: PreviewProvider {
    static var previews: some View {
        PointContainer()
    }
}
