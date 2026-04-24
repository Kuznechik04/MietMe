//
//  MietMeApp.swift
//  MietMe
//
//  Created by Philip Weber on 23.04.26.
import SwiftUI

// 1. Unser Datenmodell für einen Gegenstand
struct RentItem: Identifiable {
    let id = UUID()
    let title: String
    let pricePerDay: Double
    let distance: String
    let category: String
}

struct DiscoveryFeedView: View {
    // Dummy-Daten, damit wir direkt sehen, wie es auf dem Handy wirkt
    let items = [
        RentItem(title: "Bosch Schlagbohrmaschine", pricePerDay: 8.0, distance: "300m entfernt", category: "Werkzeug"),
        RentItem(title: "Sony Alpha 7 III + Objektiv", pricePerDay: 25.0, distance: "1.2km entfernt", category: "Kamera"),
        RentItem(title: "Stand-Up Paddle Board", pricePerDay: 15.0, distance: "800m entfernt", category: "Sport"),
        RentItem(title: "Kärcher Hochdruckreiniger", pricePerDay: 12.0, distance: "2km entfernt", category: "Garten")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // LazyVStack ist wichtig für Handys: Es lädt nur die Karten, die gerade auf dem Bildschirm sichtbar sind (spart Akku & RAM)
                LazyVStack(spacing: 20) {
                    ForEach(items) { item in
                        ItemCardView(item: item)
                    }
                }
                .padding()
            }
            .navigationTitle("Entdecken")
        }
    }
}

// 2. Das Design einer einzelnen Produkt-Karte
struct ItemCardView: View {
    let item: RentItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Platzhalter für das Produktbild (im 4:3 Format für Handys)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray.opacity(0.2))
                .aspectRatio(4/3, contentMode: .fit)
                .overlay {
                    Image(systemName: "photo")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                }
            
            // Text & Infos unter dem Bild
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.title)
                        .font(.headline)
                        .lineLimit(1) // Kürzt zu langen Text ab
                    
                    Text(item.distance)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                // Preis-Tag (Klar erkennbar auf der rechten Seite)
                VStack(alignment: .trailing, spacing: 4) {
                    Text("\(String(format: "%.2f", item.pricePerDay)) €")
                        .font(.headline)
                        .bold()
                    Text("pro Tag")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    DiscoveryFeedView()
}
