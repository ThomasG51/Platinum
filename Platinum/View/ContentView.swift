//
//  ContentView.swift
//  Platinum
//
//  Created by Thomas George on 26/03/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        Text("Swift")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
