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
}

extension Stock: Migration {

}
