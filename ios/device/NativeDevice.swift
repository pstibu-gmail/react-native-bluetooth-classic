//
//  NativeDevice.swift
//  react-native-bluetooth-classic
//
//  Created by Tibu Padmakumar on 2021-12-06.
//

import Foundation
import ExternalAccessory

/**
 * Provides a common wrapping for EAAccessory objects with regards to making them
 * transferrable between RNBluetoothClassic and React Native.
 *
 * @author kendaivvdson
 */
class NativeDevice: NSObject, Mappable {
    
    public private(set) var accessory: EAAccessory
    
    init(accessory: EAAccessory) {
        self.accessory = accessory;
    }
    
    func map() -> NSDictionary {
        return [
            "name": accessory.name,
            "address": accessory.serialNumber,
            "id": accessory.serialNumber,
            "bonded": accessory.isConnected,
            "deviceClass": accessory.modelNumber,
            "protocolStrings": accessory.protocolStrings,
            "extra": [:]
        ];
    }
    
}
