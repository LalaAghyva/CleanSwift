//
//  ProductListModels.swift
//  CleanSwift
//
//  Created by Lala on 05.03.24.
//

import UIKit

enum ProductList {
    enum List {
        struct Request {
            let pageIndex : Int
            let pageItemCount : Int
        }
        struct Response {
            let flightDetailRespnse : FlightDataResponse?
        }
        struct ViewModel {
            let rows : [Rows]
        }
    }
    
    enum Rows {
        case empty
        case product(product : FlightSearchTableCellUIData)
        
        func identifier() -> String {
            switch self {
            case .empty :
                return "empty_cell_identifier"
            case .product :
                return "FlightCellTableViewCell"
            }
        }
    }
    
    enum ProductDelete {
        struct Request {
            
        }
        struct Response {
            
        }
        struct ViewModel {
            
        }
    }
    // get list ile apiden datani cek
    // delete ile bir satiri sil
}
