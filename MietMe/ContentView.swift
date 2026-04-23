import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // 1. Discovery Feed
            NavigationStack {
                Text("Hier kommt der Discovery-Feed hin")
                    .navigationTitle("Entdecken")
                DiscoveryFeedView()
            }
            .tabItem {
                Label("Entdecken", systemImage: "magnifyingglass")
            }
            
            // 2. Kartenansicht
            NavigationStack {
                Text("Hier kommt die MapKit-Karte hin")
                    .navigationTitle("In der Nähe")
            }
            .tabItem {
                Label("Karte", systemImage: "map")
            }
            
            // 3. Inserieren (Prominenter Button in der Mitte)
            NavigationStack {
                Text("Hier kommt der 60-Sekunden-Upload hin")
                    .navigationTitle("Inserieren")
            }
            .tabItem {
                Label("Inserieren", systemImage: "plus.circle.fill")
            }
            
            // 4. Chat / Messaging
            NavigationStack {
                Text("Hier kommen die Chats hin")
                    .navigationTitle("Nachrichten")
            }
            .tabItem {
                Label("Nachrichten", systemImage: "message")
            }
            
            // 5. Profil & Einstellungen
            NavigationStack {
                Text("Profil, Bewertungen & Einstellungen")
                    .navigationTitle("Profil")
            }
            .tabItem {
                Label("Profil", systemImage: "person.crop.circle")
            }
        }
        // Setzt die globale Farbe der App (für dein Minimalismus-Konzept)
        .tint(.primary)
    }
}

#Preview {
    ContentView()
}
