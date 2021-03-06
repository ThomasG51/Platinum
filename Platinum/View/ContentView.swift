//
//  ContentView.swift
//  Platinum
//
//  Created by Thomas George on 26/03/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    // MARK: - PROPERTY
    
    let haptic = UIImpactFeedbackGenerator()
    
    // MARK: - VIEWMODEL
    
    
    
    // MARK: - STATE / BINDING
    
    @State private var isListMode = true
    
    // MARK: - VIEW BODY
    
    var body: some View {
        NavigationView {
            Group {
                if isListMode {
                    TrophyListView()
                } else {
                    TrophyCollectionView()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isListMode.toggle()
                        haptic.impactOccurred()
                    }, label: {
                        Image(systemName: isListMode ? "rectangle.grid.2x2" : "rectangle.grid.1x2")
                            .foregroundColor(Color("ps-blue"))
                    })
                }
                
                ToolbarItem(placement: .principal) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .padding(6)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "plus")
                        .foregroundColor(Color("ps-green"))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
