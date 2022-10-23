//
//  InputView.swift
//  Password_Creator_SwiftUI
//
//  Created by Sam on 23/10/2022.
//

import Foundation
import SwiftUI

/// Vue avec sélection de valeur
struct InputView: View {
    /// Le titre à afficher
    var label: String

    /// La valeur manipulée
    @Binding var value: Int
    /// Le mécanisme de transformation
    /// du `Double` en `Int` et vice-versa
    private var valueProxy: Binding<Double> {
        .init(
            get: {
                // Transforme le `Int` en `Double`
                Double(value)
            },
            set: {
                // Transforme le `Double` en `Int`
                value = Int($0)
            }
        )
    }

    var body: some View {
        // Contenu en alignement vertical
        VStack(spacing: 4.0) {
            // Contenu en alignement Horizontal
            HStack {
                // Texte du titre
                Text(label)
                // Espacement
                Spacer()
                // Texte de la valeur
                Text(String(value))
            }
            // Curseur sélectionnant la valeur
            Slider(
                value: valueProxy, // Valeur actuelle
                in: (0.0...10.0), // Bornes de valeur
                step: 1.0 // Étapes du curseur
            )
        }
    }
}

/// Aperçu du curseur
struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(label: "Titre", value: .constant(3)).padding()
    }
}
