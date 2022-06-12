//
//  HelperMethods.swift
//  Transact
//
//  Created by Jashmir on 31/01/22.
//

import UIKit

public func keyboardEndEditing() {
    UIApplication.shared.connectedScenes
        .filter {$0.activationState == .foregroundActive}
        .map {$0 as? UIWindowScene}
        .compactMap({$0})
        .first?.windows
        .filter {$0.isKeyWindow}
        .first?.endEditing(true)
}