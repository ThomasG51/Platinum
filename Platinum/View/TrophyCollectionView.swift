//
//  TrophyCollectionView.swift
//  Platinum
//
//  Created by Thomas George on 29/03/2022.
//

import SwiftUI

struct TrophyCollectionView: View {
    
    // MARK: - PROPERTY
    
    let gridLayout = [GridItem(.adaptive(minimum: 60, maximum: 100), spacing: 30, alignment: .top)]
    
    // MARK: - VIEWMODEL
    
    
    
    // MARK: - STATE / BINDING
    
    
    
    // MARK: - VIEW BODY
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout, alignment: .center) {
                ForEach (0..<10) { index in
                    Image("sample_trophy_\(index)")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .padding(.bottom, 30)
                }
            }
            .padding(.top, 50)
            .padding(.horizontal, 30)

            Spacer()
        }
    }
}

struct TrophyCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        TrophyCollectionView()
            .previewInterfaceOrientation(.portrait)
    }
}
