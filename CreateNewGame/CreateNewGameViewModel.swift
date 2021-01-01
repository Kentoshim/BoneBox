//
//  CreateNewGameViewModel.swift
//  BoneBox
//
//  Created by 島健人 on 2021/01/01.
//

import Combine

class CreateNewGameViewModel: ObservableObject {
    @Published var state: GameSetting = GameSetting.defauntSetting

}


class GameSetting {
    static let defauntSetting: GameSetting = .init(players: .four, pointSetting: PointSetting.defaultSetting)
    init(players: PlayerCount, pointSetting: PointSetting) {
        self.players = players
        self.pointSetting = pointSetting
    }
    var players: PlayerCount
    var pointSetting: PointSetting
}

enum PlayerCount: String, CaseIterable {
    case four
    case three
}

extension PlayerCount:  Identifiable {
    var id: String { self.rawValue }
}

extension PlayerCount: PickerContent {
    var description: String {
        switch self {
        case .four:
            return "4人"
        case .three:
            return "3人"
        }
    }
}

protocol PickerContent: CaseIterable, CustomStringConvertible {}

class PointSetting {
    var originPoint: Int
    var firstPoint: Int
    var bonusPoint: (Int, Int)?
    
    init(originPoint: Int, firstPoint: Int, bonusPoint: (Int, Int)?) {
        self.originPoint = originPoint
        self.firstPoint = firstPoint
        self.bonusPoint = bonusPoint
    }
    
    static let defaultSetting: PointSetting = .init(originPoint: 30000, firstPoint: 25000, bonusPoint: (30, 10))
}
