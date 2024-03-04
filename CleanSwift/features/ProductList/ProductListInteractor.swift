//
//  ProductListInteractor.swift
//  CleanSwift
//
//  Created by Lala on 05.03.24.
//

import UIKit

protocol ProductListBusinesLogic {
    func getList(request : ProductList.List.Request)
}

protocol ProductListDataStore {
    var flightResponse : FlightResponse? { get set }
}

class ProductListInteractor: ProductListBusinesLogic, ProductListDataStore {
    var flightResponse: FlightResponse? = nil
    var presenter : ProductListPresantationLogic?
    var worker : ProductApiWorker?
    
    func getList(request : ProductList.List.Request) {
        worker = ProductApiWorker()
        worker?.getList(completion: { (response, error) in
            self.flightResponse = response
            
            let presentationResponse = ProductList.List.Response(flightDetailRespnse: response?.data)
            self.presenter?.present(response: presentationResponse)
        })
    }
}
