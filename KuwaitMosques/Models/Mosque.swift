//
//  Mosque.swift
//  KuwaitMosques
//
//  Created by Nada Alm on 5/6/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import Foundation

struct Mosque: Hashable, Identifiable{
  var name: String
  var location: String
    var emam: [String]
    var id = UUID()
}

var mosques: [Mosque] = [Mosque(name: "البشر",location: "مشرف",emam: ["العفاسي","الكندري","الجهيم"]),Mosque(name: "المشعان",location: "مشرف",emam: ["العفاسي","الكندري","الجهيم"]),Mosque(name: "الشمروخ",location: "مشرف",emam: ["العفاسي","الكندري","الجهيم"])]


