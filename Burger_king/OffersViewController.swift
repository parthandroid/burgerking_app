//
//  ShakesViewController.swift
//  Pager
//
//  Created by parth on 2/28/17.

import UIKit

let cellId_offer = "cellId"


class Item_offer{
    
    var burger_name : String?
    var burger_price : String?
    
}

class OffersViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
        
    var items = [Item_offer]()
    
    let bottomView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
        
    }()
    
    let checkoutButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 1, green: 153/255, blue: 0, alpha: 1)
        button.setTitle("CHECKOUT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        //         button.addTarget(self, action: #selector(seeval), for: .touchUpInside)
        
        return button
    }()
    
    let trolley: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "trolley")
        image.contentMode = .scaleAspectFit
        return image
        
    }()
    
    let cart_value: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.textColor = .white
        label.backgroundColor = UIColor(red: 1, green: 153/255, blue: 0, alpha: 1)
        label.layer.cornerRadius = 7.5
        label.layer.masksToBounds = true
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = NSTextAlignment.center
        return label
        
    }()
    
    let orderTotalText: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Order Total"
        label.font = UIFont.systemFont(ofSize: 12)
        return label
        
    }()
    
    let orderTotalValue: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Rs 400"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = UIColor(red: 102/255, green: 51/255, blue: 0, alpha: 1)
        return label
        
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        cart_value.text = "\(cartCount)"
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = UIColor(white: 0.93, alpha: 1)
        
        collectionView?.backgroundColor = UIColor(white: 0.93, alpha: 1)
        
        collectionView?.register(FeedCell_offer.self, forCellWithReuseIdentifier: cellId)
        
        collectionView?.alwaysBounceVertical = true
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        collectionView?.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height - 65)
        

        setUpBottomView()
        setUpData()
        
    }
    
    
    func setUpBottomView(){
        
        view.addSubview(bottomView)
        view.addSubview(checkoutButton)
        view.addSubview(trolley)
        view.addSubview(cart_value)
        view.addSubview(orderTotalText)
        view.addSubview(orderTotalValue)
        
        bottomView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        checkoutButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor).isActive = true
        checkoutButton.rightAnchor.constraint(equalTo: bottomView.rightAnchor).isActive = true
        checkoutButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        checkoutButton.heightAnchor.constraint(equalTo: bottomView.heightAnchor).isActive = true
        
        trolley.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor).isActive = true
        trolley.leftAnchor.constraint(equalTo: bottomView.leftAnchor, constant: 12).isActive = true
        trolley.widthAnchor.constraint(equalToConstant: 30).isActive = true
        trolley.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        cart_value.topAnchor.constraint(equalTo: trolley.topAnchor, constant: -5).isActive = true
        cart_value.rightAnchor.constraint(equalTo: trolley.rightAnchor, constant: 5).isActive = true
        cart_value.widthAnchor.constraint(equalToConstant: 15).isActive = true
        cart_value.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        orderTotalText.topAnchor.constraint(equalTo: trolley.topAnchor).isActive = true
        orderTotalText.leftAnchor.constraint(equalTo: trolley.rightAnchor, constant: 15).isActive = true
        orderTotalText.widthAnchor.constraint(equalToConstant: 90).isActive = true
        orderTotalText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        orderTotalValue.topAnchor.constraint(equalTo: orderTotalText.bottomAnchor, constant: -6).isActive = true
        orderTotalValue.leftAnchor.constraint(equalTo: orderTotalText.leftAnchor).isActive = true
        orderTotalValue.widthAnchor.constraint(equalToConstant: 80).isActive = true
        orderTotalValue.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    func setUpData(){
        
        let item1 = Item_offer()
        item1.burger_name = "OFFER 1"
        item1.burger_price = "Rs 110"
        
        let item2 = Item_offer()
        item2.burger_name = "OFFER 2"
        item2.burger_price = "Rs 100"
        
        let item3 = Item_offer()
        item3.burger_name = "OFFER 3"
        item3.burger_price = "Rs 109"
        
        let item4 = Item_offer()
        item4.burger_name = "OFFER 4"
        item4.burger_price = "Rs 200"
        
        let item5 = Item_offer()
        item5.burger_name = "OFFER 5"
        item5.burger_price = "Rs 100"
        
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item4)
        items.append(item5)
        
        
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId_offer, for: indexPath) as! FeedCell_offer
        
        cell.item = items[indexPath.item]
        cell.obj = self
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 24, height: 208)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 0)
        
    }
    
    
    
}

class FeedCell_offer: UICollectionViewCell {
    
    var obj: OffersViewController?
    
    var item: Item_offer? {
        
        
        didSet {
            
            
            if let name = item?.burger_name {
                
                burgerName.text = name
                
            }
            
            
            if let price = item?.burger_price {
                
                burgerPrice.text = price
                
            }
            
        }
        
        
    }
    
    let image: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "burger")
        image.contentMode = .scaleAspectFit
        //      image.backgroundColor = .red
        
        return image
    }()
    
    let divider: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.9, alpha: 1)
        return view
    }()
    
    let button: UIButton = {
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 1, green: 153/255, blue: 0, alpha: 1)
        button.setTitle("ADD", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.layer.cornerRadius = 3
        
        
        return button
        
    }()
    
    let burgerName: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "OFFER 1"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor(red: 102/255, green: 51/255, blue: 0, alpha: 1)
        //        label.backgroundColor = .red
        return label
    }()
    
    let burgerPrice: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Rs 200"
        label.textColor = UIColor(red: 1, green: 153/255, blue: 0, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 13)
        //        label.backgroundColor = .blue
        return label
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setUpViews(){
        
        backgroundColor = .white
        
        addSubview(image)
        addSubview(divider)
        addSubview(button)
        addSubview(burgerName)
        addSubview(burgerPrice)
        
        button.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addHandle)))
        
        
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        image.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        image.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -50).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        divider.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20).isActive = true
        divider.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        divider.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        divider.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 33).isActive = true
        
        burgerName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        burgerName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        burgerName.widthAnchor.constraint(equalToConstant: 100).isActive = true
        burgerName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        burgerPrice.topAnchor.constraint(equalTo: burgerName.bottomAnchor).isActive = true
        burgerPrice.leftAnchor.constraint(equalTo: burgerName.leftAnchor).isActive = true
        burgerPrice.widthAnchor.constraint(equalToConstant: 70).isActive = true
        burgerPrice.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
    }
    
    func addHandle(){
        
        print("called")
        
        cartCount = cartCount + 1
        obj?.cart_value.text = "\(cartCount)"
        
        
    }
    
    
}
