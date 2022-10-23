//
//  SettingsView.swift
//  Password_Creator_SwiftUI
//
//  Created by Sam on 23/10/2022.
//

import Foundation
import SwiftUI

/// Vue des réglages
struct SettingsView: View {

    /// Initialisation des réglages
    @Binding var settings: Settings
    
    var body: some View {
        /// Contenu en alignement vertical
        VStack(spacing: 10) {
            /// Curseur pour les majuscules
            InputView(
                label: "Majuscules",
                value: $settings.uppercaseCount)
            /// Curseur pour les minuscules
            InputView(
                label: "Minuscules",
                value: $settings.lowercaseCount)
            /// Curseur pour les chiffres
            InputView(
                label: "Chiffres",
                value: $settings.numbersCount)
            /// Curseur pour les caractères spéciaux
            InputView(
                label: "Caractères spéciaux",
                value: $settings.specialCharactersCount)
        }
    }
}

/// Aperçu de la vue  des réglages
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(settings: .constant(Settings())).padding()
    }
}
