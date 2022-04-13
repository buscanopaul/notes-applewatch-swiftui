//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by pbuscano on 4/13/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK: - FUNCTION
    func update() {
        lineCount = Int(value)
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // HEADER
            Header(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
                .padding(.vertical, 10)
            
            // SLIDER
            Slider(value: Binding(get: {
                self.value
            }, set: {(newValue) in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        } //: VSTACK
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
