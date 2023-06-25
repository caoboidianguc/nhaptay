//
//  NhapTayApp.swift
//  NhapTay
//
//  Created by Jubi on 6/20/23.
//

import SwiftUI
import SwiftData

@main
struct NhapTayApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: NhapModel.self)
    }
}
