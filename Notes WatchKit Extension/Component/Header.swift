//
//  Header.swift
//  Notes WatchKit Extension
//
//  Created by pbuscano on 4/13/22.
//

import SwiftUI

struct Header: View {
    // MARK: - PROPERTY
    var title: String = ""
    
    var body: some View {
        VStack {
            // TITLE
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            // SEPERATOR
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HSTACK
            .foregroundColor(.accentColor)
        } //: VSTACK
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Header(title: "Credits")
            
            Header()
        }
    }
}
