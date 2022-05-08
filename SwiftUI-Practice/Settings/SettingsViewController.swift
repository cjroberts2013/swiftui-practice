//
//  SettingsViewController.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/6/22.
//

import SwiftUI

struct SettingsViewController: View {
    
    @State var username: String = ""
    @State var airplaneMode: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $airplaneMode) {
                        Image(systemName: "airplane")
                        
                        Text("Airplane Mode")
                    }
                    Button {
                        print("Wifi settings")
                    } label: {
                        HStack {
                            Image(systemName: "wifi")
                            Text("Wifi")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(.primary)
                    }
                    Button {
                        print("Bluetooth settings")
                    } label: {
                        HStack {
                            Image(systemName: "wave.3.forward.circle.fill")
                            Text("Bluetooth")
                            Spacer()
                            Text("On")
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(.primary)
                    }

                }
                
                Section {
                    Toggle(isOn: $airplaneMode) {
                        Image(systemName: "airplane")
                        
                        Text("Airplane Mode")
                    }
                    TextField("Username", text: $username)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsViewController_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewController()
    }
}
