//
//  MyLabel.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 01/04/24.
//

import Foundation
import UIKit

//MARK: - SubTitle

class MyLabelReg16Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.regularSize16
        textColor = UIColor.black
    }
}

class MyLabelMedium16Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.mediumSize16
        textColor = UIColor.black
    }
}

class MyLabelMedium16Blue: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.mediumSize16
        textColor = UIColor(displayP3Red: 2.0/255.0, green: 34.0/255.0, blue: 116.0/255.0, alpha: 1.0)
    }
}

class MyLabelReg14Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.regularSize14
        textColor = UIColor.black
    }
}

class MyLabelReg14LightBlack: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.regularSize14
        textColor = UIColor(displayP3Red: 90.0/255.0, green: 90.0/255.0, blue: 90.0/255.0, alpha: 1.0)
    }
}

class MyLabelMedium20Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.mediumSize20
        textColor = UIColor.black
    }
}

class MyOutfitLabelMedium22ThemeColor: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = UIFont(name:"Outfit-Medium",size:22)
        textColor = AppColors.header_ThemeColor
    }
}

class MyLabelMedium16White: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.mediumSize16
        textColor = UIColor.white
    }
}

class MyLabelReg14White: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
//        text = text?.localized
        font = FontSize.regularSize14
        textColor = UIColor.white
    }
}

/*
class BatchLabelSubTitleBlack: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.regularSize16
        textColor = Colors.appLabelDarkGrayColor
    }
}
class BatchLabelRegular16DarkGray: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.regularSize16
        textColor = Colors.appLabelDarkGrayColor
    }
}
//MARK: - regular Size label
class BatchRegularBlack: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.regularSize16
        textColor = Colors.appLabelBlackColor
    }
}
//MARK: - Semibold Size label
class BatchSemiboldBlack: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.semiboldSize16
        textColor = Colors.appLabelBlackColor
    }
}
//MARK: - Medium Size label
class BatchMediumBlack: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize16
        textColor = Colors.appLabelBlackColor
    }
}
class BatchMediumDarkGray: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize16
        textColor = Colors.appLabelDarkGrayColor
    }
}
//MARK: - Medium Size label
class BatchMedium18Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize18
        textColor = Colors.appLabelBlackColor
    }
}
//MARK: - Medium Size label
class BatchMedium20Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize20
        textColor = Colors.appLabelBlackColor
    }
}
//MARK: - Medium Size label
class BatchMedium32Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize32
        textColor = Colors.appLabelBlackColor
    }
}
class BatchLabelMedium12Black: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize12
        textColor = Colors.appLabelBlackColor
    }
}
class BatchLabelMedium14DarkGray: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize14
        textColor = Colors.appLabelDarkGrayColor
    }
}
class BatchLabelMedium18DarkGray: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize18
        textColor = Colors.appLabelDarkGrayColor
    }
}
//MARK: - Medium Size label
class BatchMedium18White: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize18
        textColor = .white
    }
}
class BatchLabelMedium14White: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize14
        textColor = .white
    }
}
class BatchLabelMedium12White: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize12
        textColor = .white
    }
}

class BatchLabelRegularWhite: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize18
        textColor = .white
    }
}
class BatchLabelTitleBlack: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize24
        textColor = Colors.appLabelBlackColor
    }
}
class BatchLabelTitleWhite: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
        font = FontSize.mediumSize24
        textColor = UIColor.white
    }
}
*/
