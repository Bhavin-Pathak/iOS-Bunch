//
//  ViewController.swift
//  POD-Specs
//
//  Created by MacBookPro on 25/02/1946 Saka.
//

import UIKit
import PureLayout

class SchoolListViewController: UIViewController {
    
    //MARK: CreateViewModel Instance Here And Acess Function Data With instance Perameter Name
    private let schoolViewModel: SchoolViewModel = SchoolViewModel()
    //MARK: Collection View Instance For StoryBoard
    private var collectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Acess Function With Instance Variable Name
        schoolViewModel.getSchoolData()
        setupCollectionView()
    }
    
    func setupCollectionView()  {
        //MARK: Init Collection Layout
        let collectionViewLayout = UICollectionViewFlowLayout()
        //MARK: Given Specific Height Width
        collectionViewLayout.itemSize = CGSize(width: view.frame.size.width, height: 250)
        //MARK: Header Size
        collectionViewLayout.headerReferenceSize = CGSize(width: view.frame.size.width, height: 250)
        //MARK: Scroll Direction
        collectionViewLayout.scrollDirection = .vertical
        //MARK: CollectionView That Asign Collectionview To Layout
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: collectionViewLayout)
        
        //MARK: Collection View Return With CollectionView
        guard let collectionView  = collectionView else {
            return
        }
        //MARK: Collection View Designs
        view.addSubview(collectionView)
        collectionView.autoPinEdgesToSuperviewEdges()
        collectionView.backgroundColor = .white
        collectionView.alwaysBounceVertical = true
        //MARK: Collection View Setup $ Flowlayout
        collectionView.register(schoolCollectionViewCell.self, forCellWithReuseIdentifier: IndentifireConstant.collectionViewCell)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
    }
}
//MARK: UICollectionViewDataSource For CollectionView
extension SchoolListViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return schoolViewModel.schools.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IndentifireConstant.collectionViewCell, for: indexPath) as? schoolCollectionViewCell else {
            return UICollectionViewCell()
        }
        let school = schoolViewModel.schools[indexPath.item]
        cell.populate(school)
        return cell
    }
    
}

//MARK: UICollectionViewDelegate For CollectionView
extension SchoolListViewController : UICollectionViewDelegate {
    //MARK: TODO SOMETHING HERE
}


