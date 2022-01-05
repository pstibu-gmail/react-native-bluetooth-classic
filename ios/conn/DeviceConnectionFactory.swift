//
//  DeviceConnectionFactory.swift
//  react-native-bluetooth-classic
//
//  Created by Tibu Padmakumar on 2021-12-09.
//

import Foundation
import ExternalAccessory

/**
 * Provides a method for creating DeviceConnection(s).  The factories are used by the RNBluetoothClassic (module) during
 * the connection process.
 *
 * @author pstibu
 */
protocol DeviceConnectionFactory {
    func create(accessory: EAAccessory, options: Dictionary<String,Any>) -> DeviceConnection
}
