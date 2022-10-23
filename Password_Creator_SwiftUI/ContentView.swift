//
//  ContentView.swift
//  Password_Creator_SwiftUI
//
//  Created by Sam on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var settings = Settings()
    var body: some View {
        // Affichage vertical
        VStack {
            // Espacement
            Spacer(minLength: 10)
            // Titre
            TitleView()
            // Espacement
            Spacer()
            // Réglages
            SettingsView(settings: $settings)
            // Espacement
            Spacer()
        }
        .padding()


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
