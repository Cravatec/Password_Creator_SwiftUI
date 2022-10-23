//
//  TitleView.swift
//  Password_Creator_SwiftUI
//
//  Created by Sam on 23/10/2022.
//

import Foundation
import SwiftUI

struct TitleView: View {
    var body: some View {
    VStack(spacing: 6) {
        // Titre
        Text("Azerty1234")
            .font(.title).foregroundColor(.blue)
        // Sous-titre
        Text("Générateur de mots de passe")
            .font(.subheadline)
            .foregroundColor(.gray)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView().padding()
    }
}
}
