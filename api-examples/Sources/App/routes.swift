import Vapor

func routes(_ app: Application) throws {
    
    app.get("api", "get", "simple") { req -> String in
        return "\"get\" works properly"
    }
    
    app.get("api", "get", ":param") { req -> String in
        let param = req.parameters.get("param")
        return "\"get with a parameter\" works properly\nparam: \(param!)"
    }
    
}
