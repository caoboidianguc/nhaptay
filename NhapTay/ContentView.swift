//
//  ContentView.swift
//  NhapTay
//
//  Created by Jubi on 6/20/23.
//

import SwiftUI
import SwiftData

enum Field: Hashable {
    case them
}

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query (sort: \.ngayTao, order: .reverse) var items: [NhapModel]
    @State private var canMua = ""
    @State private var doiNut = false
    @FocusState private var focusedField: Field?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    Button(action: {item.uuTien.toggle()}, label: {
                        DoiMau(item: item)
                    })
                    
                }
                .onDelete(perform: deleteItems)
                HStack {
                    TextField("Them", text: $canMua)
                        .cornerRadius(10)
                        .focused($focusedField, equals: .them)
                        .onSubmit {addItem()}
                        .task { self.focusedField = .them  } //when screen appears, cursor will focus on the field
                    Button(action: withAnimation {
                        addItem
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(canMua.isEmpty)
                        
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            .listStyle(.plain)
            .navigationTitle("List - Cần!")
            .navigationBarTitleDisplayMode(.automatic)
            
        }
        
    }
   

    private func addItem() {
        withAnimation {
            let newItem = NhapModel(muc: canMua, uuTien: true, ngayTao: Date.now)
            modelContext.insert(newItem)
            canMua = ""
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
    
    
}

//#Preview {
//    ContentView()
//        .modelContainer(previewContainer)
//}

