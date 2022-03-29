//
//  TrophyListView.swift
//  Platinum
//
//  Created by Thomas George on 29/03/2022.
//

import SwiftUI

struct TrophyListView: View {
    
    // MARK: - PROPERTY
    
    
    
    // MARK: - VIEWMODEL
    
    
    
    // MARK: - STATE / BINDING
    
    
    
    // MARK: - VIEW BODY
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(consoles.allCases, id: \.self) { console in
                Section {
                    VStack(alignment: .leading) {
                        LinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing)
                            .mask {
                                HStack {
                                    Text(console.rawValue)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, 30)
                                    Spacer()
                                }
                            }
                            .frame(height: 60)
                            .padding(.bottom, 20)
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach (0..<10) { index in
                                    Image("sample_trophy_\(index)")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80, alignment: .center)
                                        .cornerRadius(10)
                                        .padding(.leading, 30)
                                }
                            }
                        }
                        
                        Divider()
                            .padding(30)
                    }
                }
            }
            .padding(.top, 20)
        }
    }
}

struct TrophyListView_Previews: PreviewProvider {
    static var previews: some View {
        TrophyListView()
    }
}
