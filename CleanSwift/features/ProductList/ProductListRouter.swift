//
//  ProductListRouter.swift
//  CleanSwift
//
//  Created by Lala on 06.03.24.
//

import UIKit

protocol ProductRoutingLogic {
    func routeToDetail(flightResponse : FlightDataResponse, selectedIndex : Int)
    func routeToFlightOverview(flight : DepartureElement)
}

class ProductListRouter: NSObject, ProductRoutingLogic {

    weak var viewController : ProductListViewController?
    
    func routeToDetail(flightResponse: FlightDataResponse, selectedIndex: Int) {
        let detail = ViewControllerFactory.shared.makeProductDetail(flightDetailResponse: flightResponse, selectedIndex: selectedIndex)
        self.viewController?.navigationController?.pushViewController(detail, animated: true)
    }
    
    func routeToFlightOverview(flight: DepartureElement) {
        
    }
    

}
