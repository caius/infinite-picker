//
//  InterfaceController.swift
//  InfinitePicker WatchKit Extension
//
//  Created by Caius Durling on 28/11/2016.
//  Copyright © 2016 Caius Durling. All rights reserved.
//

import WatchKit

class InterfaceController: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!

    func stringToItem(name: String) -> WKPickerItem {
        let item = WKPickerItem()
        item.title = name
        return item
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let pickerItems = [
            "one",
            "two",
            "three",
        ]
        picker.setItems(pickerItems.map(self.stringToItem))
        picker.setSelectedItemIndex(1)
    }

    @IBAction func pickerChanged(_ value: Int) {
        print("value: \(value)")
    }

    @IBAction func testTapped() {

        let pickerItems = [
            "two",
            "three",
            "four",
        ]

        picker.setItems(pickerItems.map(self.stringToItem))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
