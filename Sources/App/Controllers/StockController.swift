//
// Created by Jeffrey Wei on 2019/12/28.
//

import Foundation
import Vapor
import FluentMySQL

final class StockController {
    func stock(_ req: Request) throws -> Future<HTTPResponse> {
        //参数获取
        let value = try req.query.get(String.self, at: "value")
        let stock = Stock(high: 22, low: 3, open: 4, close: 4).save(on: req).save(on: req)
        let stock2 = Stock(high: 22, low: 3, open: 4, close: 4).save(on: req).save(on: req)
        return [stock, stock2]
                .map(to: HTTPResponse.self, on: req) { _ in HTTPResponse(status: .ok) }
    }
}
