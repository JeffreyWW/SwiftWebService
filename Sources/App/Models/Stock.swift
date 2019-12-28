//
// Created by Jeffrey Wei on 2019/12/28.
//

import Vapor
import Foundation
import FluentMySQL

struct Stock: Content, MySQLModel {
    var id: Int?
    var high: Double?
    var low: Double?
    var open: Double?
    var close: Double?

}

extension Stock: Migration {
//    public static func prepare(on conn: MySQLConnection) -> Future<Void> {
//        return MySQLDatabase.create(Stock.self, on: conn) { creator in
//            creator.field(for: \.id, isIdentifier: true)
//        }
//    }
}
