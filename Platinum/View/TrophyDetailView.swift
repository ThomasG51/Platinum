//
//  TrophyDetailView.swift
//  Platinum
//
//  Created by Thomas George on 29/03/2022.
//

import SwiftUI

struct TrophyDetailView: View {
    
    // MARK: - PROPERTY
    
    let trophy: String!
    
    // MARK: - VIEWMODEL
    
    
    
    // MARK: - STATE / BINDING
    
    @Environment(\.dismiss) var dismiss
    
    // MARK: - VIEW BODY
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
                .padding(20)
                .foregroundColor(.white)
            }
            
            Spacer()
            
            Image(trophy)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 100)
                .padding(.vertical, 40)
                .cornerRadius(20)
            
            Text("Ghost Of Tsushima")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Playstation 4")
                .foregroundColor(.gray)
            
            Spacer()
        }
    }
}

struct TrophyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TrophyDetailView(trophy: "sample_trophy_6")
    }
}
