//
//  DoiMau.swift
//  NhapTay
//
//  Created by Jubi on 6/21/23.
//

import SwiftUI

struct DoiMau: View {
    var item: NhapModel
    
    var body: some View {
        if (item.uuTien) {
            HStack {
                Text(item.muc)
                Spacer()
                Image(systemName: "cart")}
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.green)
                    .font(.title)
                
    } else {
        VStack {
            Text(item.muc)
            Text(item.ngayTao.formatted(.dateTime.day().weekday(.abbreviated))).font(.custom("subheadline", fixedSize: 11))
        }
            .foregroundColor((.secondary))
            .font(.subheadline)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
              
    }
}
//
//#Preview {
//    DoiMau(item: NhapModel(muc: "dogman", uuTien: true, ngayTao: Date.now), nut: .constant(false))
//        .modelContainer(previewContainer)
//}
