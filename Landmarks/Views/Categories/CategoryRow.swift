//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Andy Fang on 10/02/2024.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            // Category Name
            Text(categoryName).font(.headline).padding(.top, 5).padding(.leading, 15)
            // Scroll View
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmrk in
                        NavigationLink {
                            LandmarkDetail(landmark: landmrk)
                        } label: {
                            CategoryItem(landmark: landmrk)
                        }
                    }
                }
            }.frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(3))
    )
}
