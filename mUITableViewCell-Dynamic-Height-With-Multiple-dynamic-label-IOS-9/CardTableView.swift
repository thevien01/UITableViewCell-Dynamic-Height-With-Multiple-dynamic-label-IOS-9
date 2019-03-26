//
//  CardTableView.swift
//  mUITableViewCell-Dynamic-Height-With-Multiple-dynamic-label-IOS-9
//
//  Created by DKHT on 3/26/19.
//  Copyright © 2019 DKHT. All rights reserved.
//

import Foundation
import UIKit

class TempModel{
    var title = ""
    var desc  = ""
    
    init(title: String, desc: String) {
        self.title = title
        self.desc  = desc
    }
}

class CardTableView: UITableView{
    var dataList = [TempModel]()
    
    func config(){
        self.delegate   = self
        self.dataSource = self
        CardTableViewCell.registerCell(tableView: self)
        self.tableFooterView = UIView()
        self.separatorStyle  = .none
    }
    
    init() {
        super.init(frame: CGRect.zero, style: .plain)
        self.config()
    }
    
    init(frame: CGRect) {
        super.init(frame: frame, style: .plain)
        self.config()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CardTableView: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.identifier, for: indexPath)  as! CardTableViewCell
        let model = self.dataList[indexPath.row]
        
        
        cell.configCell(model: model)
        return cell
    }
    
}
