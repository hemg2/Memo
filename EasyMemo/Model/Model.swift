//
//  Model.swift
//  EasyMemo
//
//  Created by 1 on 2022/10/09.
//

import Foundation


class Memo {
    var content: String
    var insertDate: Date
    
    init(content: String) {
        self.content = content
        self.insertDate = Date()  // 날짜를 바로받아야해서 파라미터 x
    }
    
    
    static var dummyMemoList = [
    Memo(content: "Lorem Ipsum"),
    Memo(content: "Subscribe + 👍 = ❤️")
    ]
}
