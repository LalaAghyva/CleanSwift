//
//  ProductListPresenter.swift
//  CleanSwift
//
//  Created by Lala on 05.03.24.
//

import UIKit

protocol ProductListPresantationLogic {
    func present(response : ProductList.List.Response)
}

class ProductListPresenter: ProductListPresantationLogic {
    
    weak var viewController : ProductDisplayLogic?
    
    func present(response: ProductList.List.Response) {
        var cells : [ProductList.Rows] = []
        
        let flights = response.flightDetailRespnse?.flights.departure
        if flights.isEmpty == true {
            cells.append(ProductList.Rows.empty)
        } else {
            flights?.forEach({ departureItem in
                let product = FlightSearchTableCellUIData(flight: departureItem,
                                                      airlineList: response.flightDetailRespnse?.airlines ?? [])
                cells.append(ProductList.Rows.product(product: product))
            })
        }
        
        let viewModel = ProductList.List.ViewModel(rows: cells)
        viewController?.displayList(viewModel: viewModel)
    }
}


