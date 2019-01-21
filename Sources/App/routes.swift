import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    let usersController = UsersController()
    try router.register(collection: usersController)
    
    let acronymsController = AcronymsController()
    try router.register(collection: acronymsController)
    
    router.get { req in
        return "It works!"
    }
    
    router.get("hello") { req in
        return "Hello, world!"
    }
}
