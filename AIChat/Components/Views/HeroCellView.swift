//
//  HeroCellView.swift
//  AIChat
//
//  Created by 안다영 on 2/5/25.
//

import SwiftUI

struct HeroCellView: View {
    
    var title: String? = "This is some title"
    var subtitle: String? = "This is some subtitle that will go here."
    var imageName: String? = Constants.randomImage
    
    var body: some View {
        ZStack {
            if let imageName {
                ImageLoaderView(urlString: imageName)
            } else {
                Rectangle()
                    .fill(.accent)
            }
        }
        .overlay(alignment: .bottomLeading, content: {
            VStack(alignment: .leading, spacing: 4) {
                if let title {
                    Text(title)
                        .font(.headline)
                }
                if let subtitle {
                    Text(subtitle)
                        .font(.subheadline)
                }
            }
            .foregroundStyle(.white)
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                LinearGradient(colors: [
                    Color.black.opacity(0),
                    Color.black.opacity(0.3),
                    Color.black.opacity(0.4)
                ], startPoint: .top, endPoint: .bottom)
            )
        })
        .cornerRadius(16)
    }
}

#Preview {
    ScrollView {
        VStack {
            HeroCellView()
                .frame(width: 300, height: 200)
            
            HeroCellView()
                .frame(width: 300, height: 400)
            
            HeroCellView()
                .frame(width: 200, height: 400)
            
            HeroCellView(imageName: nil)
                .frame(width: 300, height: 200)
            
            HeroCellView(title: nil)
                .frame(width: 300, height: 200)
            
            HeroCellView(subtitle: nil)
                .frame(width: 300, height: 200)
        }
        .frame(maxWidth: .infinity)
    }
}
