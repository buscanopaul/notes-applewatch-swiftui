//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by pbuscano on 4/13/22.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTY
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            Header(title: "Credits")
            
            // CONTENT
            Text("Paul Buscano")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        } //: VSTACK
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
