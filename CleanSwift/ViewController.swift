//
//  ViewController.swift
//  CleanSwift
//
//  Created by Lala on 05.03.24.
//

import UIKit

protocol ProductDisplayLogic : AnyObject {
    func displayList(viewModel : ProductList.List.ViewModel)
}

class ViewController: UIViewController, ProductDisplayLogic {

    var interactor : ProductListBusinesLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getList()
    }
    
    func displayList(viewModel: ProductList.List.ViewModel) {
        // table reload
    }
    
    func getList() {
        let request = ProductList.List.Request(pageIndex: 1, pageItemCount: 10)
        interactor?.getList(request: request)
    }
}

