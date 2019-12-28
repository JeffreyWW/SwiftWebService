//
// Created by Jeffrey Wei on 2019/12/28.
//

import Foundation
import Vapor
import SwifterSwift


final class StockController {
    func stock(_ req: Request) throws -> Stock {
        Stock(high: 11.2, low: 22.0)
    }
}
