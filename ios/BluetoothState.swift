//
//  BTState.swift
//  RNBluetoothClassic
//
//  Created by Tibu Padmakumar on 2021-12-17.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

/**
 * Bluetooth state - simulates Android values.
 *
 * @author pstibu
 *
 */
enum BluetoothState: Int, CaseIterable {
    case DISABLED = 10
    case ENABLED = 12;
    
    var name: String {
        let fullname = String(reflecting: self)
        let index = fullname.lastIndex(of: ".")!
        return String(fullname[fullname.index(after: index)...])
    }
}
