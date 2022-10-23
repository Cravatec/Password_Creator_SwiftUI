//
//  Settings.swift
//  Password_Creator_SwiftUI
//
//  Created by Sam on 23/10/2022.
//

import Foundation

/// Réglages du générateur
struct Settings: Equatable {
    /// Nombre de majuscules
    var uppercaseCount: Int = 3
    /// Nombre de minuscules
    var lowercaseCount: Int = 2
    /// Nombre de chiffres
    var numbersCount: Int = 4
    /// Nombre de caractères spéciaux
    var specialCharactersCount: Int = 1
}
