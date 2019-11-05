//
// Created by soltan on 05/11/2019.
// Copyright (c) 2019 personal. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class StarRatingView : UIStackView {

    private var starViews : [UIImageView] = []

    required init(coder: NSCoder) {
        super.init(coder: coder)
        addStarViews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addStarViews()
    }

    private func addStarViews() {
        for i in 0..<5 {
            let image = UIImage(named: "starIcon")!.withRenderingMode(.alwaysTemplate)

            let imageView = UIImageView()
            imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
            imageView.contentMode = .scaleAspectFit

            imageView.image = image
            starViews.append(imageView)
            self.addArrangedSubview(imageView)
        }
    }
}