//
//  schoolCollectionViewCell.swift
//  POD-Specs
//
//  Created by MacBookPro on 26/02/1946 Saka.
//

import UIKit
import Foundation


class schoolCollectionViewCell: UICollectionViewCell {
    
    //MARK: Model Class Instance
    private var school: School?
    
    //MARK: Label For Name
    private var nameLable: UILabel = {
        //Label Instance
        let lable = UILabel()
            // return Label
        return lable
    }()
    //MARK: Label For City
    private var cityLable: UILabel = {
        //Label Instance
        let lable = UILabel()
            // return Label
        return lable
    }()
    //MARK: Label For Email
    private var emailLable: UILabel = {
        //Label Instance
        let lable = UILabel()
            // return Label
        return lable
    }()
    //MARK: WrapperView For Auto Layout
    private var wrapperView : UIView = {
        //Init View For AutoLayout
        let view = UIView(forAutoLayout: ())
        //Background Colour
        view.layer.borderColor = UIColor.blue.cgColor
        //Border Width
        view.layer.borderWidth = ScreenConstant.borderWidth
        //Corner Redious
        view.layer.cornerRadius = ScreenConstant.cornerRedious
        // Return View
        return view
    }()
    
    //MARK: Setup Override Method When View Apear Then Execute First
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    //MARK: Setup Init Method When View Apear Then Execute First
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    //MARK: SetupView On Layout Function
    func setupView()  {
        // colour for bg
        backgroundColor = .white
        setupWrapperView()
        setupNameLabel()
        setupCityLabel()
        setupEmailLabel()
    }
    //MARK: Function WrapperView
    func setupWrapperView() {
        // Asign Wrapper View To Sub View
        addSubview(wrapperView)
        wrapperView.autoPinEdgesToSuperviewEdges(with: ScreenConstant.wrapperViewInset)
    }
    //MARK: Setup Name Lable View
   private func setupNameLabel() {
       wrapperView.addSubview(nameLable)
       nameLable.autoPinEdge(toSuperviewEdge: .leading, withInset: ScreenConstant.leftInset)
       nameLable.autoPinEdge(toSuperviewEdge: .trailing, withInset: ScreenConstant.rightInset)
       nameLable.autoPinEdge(toSuperviewEdge: .top, withInset: ScreenConstant.topInset)
    }
    //MARK: Setup City Lable View
   private func setupCityLabel() {
       wrapperView.addSubview(cityLable)
       cityLable.autoPinEdge(toSuperviewEdge: .leading, withInset: ScreenConstant.leftInset)
       cityLable.autoPinEdge(toSuperviewEdge: .trailing, withInset: ScreenConstant.rightInset)
       cityLable.autoPinEdge(toSuperviewEdge: .top, withInset: ScreenConstant.topInset)
    }
    //MARK: Setup Email Lable View
   private func setupEmailLabel() {
       wrapperView.addSubview(emailLable)
       emailLable.autoPinEdge(toSuperviewEdge: .leading, withInset: ScreenConstant.leftInset)
       emailLable.autoPinEdge(toSuperviewEdge: .trailing, withInset: ScreenConstant.rightInset)
       emailLable.autoPinEdge(toSuperviewEdge: .top, withInset: ScreenConstant.topInset)
    }
    //MARK: Populate Function In This Assign Perameters To School Var Or Shows Data On Lable
    func populate(_ school : School) {
        self.school = school
        nameLable.text = school.SchoolName
        cityLable.text = school.City
        emailLable.text = school.SchoolEmail
    }
}
