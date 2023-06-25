//
//  NhapModel.swift
//  NhapTay
//
//  Created by Jubi on 6/20/23.
//

import Foundation
import SwiftData




@Model
final class NhapModel {
    @Attribute(.unique) var muc: String
    var uuTien: Bool
    var ngayTao: Date
    
    init(muc: String, uuTien: Bool, ngayTao: Date) {
        self.muc = muc
        self.uuTien = uuTien
        self.ngayTao = ngayTao
    }
}


//extension NhapModel: Identifiable {}

extension NhapModel: Hashable {
    static func == (lhs: NhapModel, rhs: NhapModel) -> Bool {
        lhs.muc == rhs.muc &&
        lhs.uuTien == rhs.uuTien &&
        lhs.ngayTao == rhs.ngayTao
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(muc)
        hasher.combine(uuTien)
        hasher.combine(ngayTao)
    }
}
