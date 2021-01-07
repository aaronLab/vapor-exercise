//
//  GreetingController.swift
//  
//
//  Created by Aaron Lee on 2021-01-07.
//

import Foundation
import Vapor

func greetingController(_ app: Application) throws {
    
    app.post("api", "greeting") { req -> HTTPStatus in
        let greeting = try req.content.decode(Greeting.self)
        print(greeting.hello)
        return HTTPStatus.ok
    }
    
}
