//
//  TipPage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 23/11/21.
//

import Foundation
import SwiftUI

/*
struct TipsView: View {
    let tips: [Tip]

    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }

    var body: some View {
        NavigationView {
            List(tips, id: .text, children: .children) { tip in
                if tip.children != nil {
                    Label(tip.text, systemImage: "bookmark")
                        .font(.headline)
                } else {
                    Text(tip.text)
                }
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
 
 */