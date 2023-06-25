//
//  MauData.swift
//  NhapTay
//
//  Created by Jubi on 6/21/23.
//
import Foundation

struct Sample {
    static var muc: [NhapModel] = [
        NhapModel(muc: "DogMan", uuTien: true, ngayTao: Date.now),
        NhapModel(muc: "The Call of the wild", uuTien: false, ngayTao: Date(timeIntervalSinceNow: 2))
    ]
}
