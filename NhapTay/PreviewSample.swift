//
//  PreviewSample.swift
//  NhapTay
//
//  Created by Jubi on 6/21/23.
//
import SwiftUI
import SwiftData

@MainActor
let previewContainer: ModelContainer = {
    do {
        let container = try ModelContainer(
            for: NhapModel.self, ModelConfiguration(inMemory: true)
        )
        for item in Sample.muc {
            container.mainContext.insert(object: item)
        }
        return container
    } catch {
        fatalError("Khong the tao muc")
    }
}()
