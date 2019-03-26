//
//  ViewController.swift
//  mUITableViewCell-Dynamic-Height-With-Multiple-dynamic-label-IOS-9
//
//  Created by DKHT on 3/26/19.
//  Copyright © 2019 DKHT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cardTableView: CardTableView!
    var dataList = [TempModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configViews()
        self.configData()
    }
    
    func configViews(){
        self.cardTableView = CardTableView(frame: self.view.bounds)
        self.view.addSubview(self.cardTableView)
    }
    
    func configData(){
        var tempModel = TempModel(title: "A UITableViewCell object is a specialized type of view that manages the content of a single table row. You use cells primarily to organize and present your app’s custom content, but UITableViewCell provides some specific customizations to support table-related behaviors, including:", desc: "Applying a selection or highlight color to the cell. Adding standard accessory views, such as a detail or disclosure control. Putting the cell into an editable state. Indenting the cell's content to create a visual hierarchy in your table.")
        
        self.dataList.append(tempModel)
        tempModel = TempModel(title: "Applying a selection or highlight color to the cell.", desc: "Your app’s content occupies most of the cell’s bounds, but the cell may adjust that space to make room for other content. Cells display accessory views on the trailing edge of their content area. When you put your table into edit mode, the cell adds a delete control to the leading edge of its content area, and optionally swaps out an accessory view for a reorder control.")
        
        self.dataList.append(tempModel)
        tempModel = TempModel(title: "Configuring Your Cell's Content", desc: "Configure the content and layout of your cells in your storyboard file. Tables have one cell type by default, but you can add more by changing the value in the table’s Prototype Cells attribute. In addition to configuring the cell’s content, make sure you configure the following attributes:")

        self.dataList.append(tempModel)
        tempModel = TempModel(title: "Differentiate groups of rows visually by adding header and footer views to your table view’s sections.", desc: "class UITableViewHeaderFooterView A reusable view that you place at the top or bottom of a table section to display additional information for that section.")

        self.dataList.append(tempModel)
        tempModel = TempModel(title: "struct UITableViewCell.StateMask Constants used to determine the new state of a cell as it transitions between states.", desc: "Cells, Headers, and Footers Configuring the Cells for Your Table Specify the appearance and content of your table’s rows by defining one or more prototype cells in your storyboard.")

        self.dataList.append(tempModel)
        tempModel = TempModel(title: "Called to notify the cell that it transitioned to a new cell state.", desc: "Style. Choose one of the standard types or define a custom cell. Class. Specify a UITableViewCell subclass with your custom behavior.")

        self.dataList.append(tempModel)
        tempModel = TempModel(title: "Identifier. Use this identifier (also known as a reuse identifier) to create the cell.", desc: "Configure the content and layout of your cells in your storyboard file. Tables have one cell type by default, but you can add more by changing the value in the table’s Prototype Cells attribute. In addition to configuring the cell’s content, make sure you configure the following attributes:")

        self.dataList.append(tempModel)
        tempModel = TempModel(title: "Class. Specify a UITableViewCell subclass with your custom behavior.", desc: "Identifier. Use this identifier (also known as a reuse identifier) to create the cell.")

        self.dataList.append(tempModel)
        tempModel = TempModel(title: "Class. Specify a UITableViewCell subclass with your custom behavior.", desc: "For information about how to customize the appearance of your cells, see Configuring the Cells for Your Table.")

        self.dataList.append(tempModel)
        tempModel = TempModel(title: "init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) Initializes a table cell with a style and a reuse identifier and returns it to the caller.", desc: "enum UITableViewCell.CellStyle An enumeration for the various styles of cells")

        self.dataList.append(tempModel)
        
        self.cardTableView.dataList = self.dataList
        self.cardTableView.reloadData()
    }
}

