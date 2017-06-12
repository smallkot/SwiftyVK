@testable import SwiftyVK

final class SessionMock: Session, SessionDestroyable {
    
    let id = String.random(20)
    var config = SessionConfig()
    var state = SessionState.initiated
    var isDefault = false
    
    func logIn(onSuccess: @escaping ([String : String]) -> (), onError: @escaping (Error) -> ()) {
        
    }
    
    func logIn(rawToken: String, expires: TimeInterval) throws {
        
    }
    
    func logOut() {}
    
    @discardableResult
    func send(request: Request, callbacks: Callbacks) -> Task {
        return TaskMock()
    }
    
    func destroy() {
        state = .destroyed
    }
}