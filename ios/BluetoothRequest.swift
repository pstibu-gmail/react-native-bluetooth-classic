//
//  BTRequest.swift
//  RNBluetoothClassic
//
//  Created by Tibu Padmakumar on 2021-12-17.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

enum BluetoothRequest: Int, CaseIterable {
    case ENABLE_BLUETOOTH = 1, PAIR_DEVICE
    
    var name: String {
        let fullname = String(reflecting: self)
        let index = fullname.lastIndex(of: ".")!
        return String(fullname[fullname.index(after: index)...])
    }
}
