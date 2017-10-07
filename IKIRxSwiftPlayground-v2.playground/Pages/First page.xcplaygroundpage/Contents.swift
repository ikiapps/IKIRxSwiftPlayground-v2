//: The playground may take some time to start running.
//:
//: Build the MyFrameworks target, if needed.
//:
//: If all else fails, leave the playground by selecting another file and come back to it.
//: This usually gets it started after one or more times.

import UIKit
import RxSwift
import RxCocoa
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

func hello(_ yourName: String) -> Observable<String>
{
    return Observable.create { observer in
        observer.onNext("Hello \(yourName)")
        observer.onCompleted()

        return Disposables.create()
    }
}

hello("Player")
    .subscribe(onNext: {
        print($0)
    })
