//
//  PWrappers.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 20/03/1946 Saka.
//

import SwiftUI

struct PWrappers: View {
    
    //MARK: Types of propertywrappers in swiftui
    //@State :- it can read and write values (isme jiske samne state property ko use karte hai usko hi change kar sakte hai )
    //@Binding :- it is used to read and rwite data from perent to child class (@Binding ka use perent view se child view me data read and write karne k liye use karte hai isko koi default value nahi hoti iski value perent view se aati hai)
    //@Envoirmentobject :- (isme observableobject ko globle scope me add karna hai to .envoirmentobject k function ka use karna hoga isme wahi class add kar sakte hai observableobject protocall ko impliment karta ho ye envoimentfuction perameter accept use karta hai jiska type hota hai observable object isko view ka body ai uske initial view par call karna hoga agar inside add kia toh compile time par error nhi aayega lakin running time par crash ho jayega aplication agar multiple envoirment object use karna ho to initial -ROOT View- me call karna padta hai envoirment object k property ko acess karne k liye @EnvoirmentObject ko use karna padta hai )
    //@Published :- (isme koi bhi var ko published kar sakte hai with the help of observableobject class ye method sirf class me hi chalta hai struct me nahi chalta jisme real time value change hoti hai uske liye @Published ko use karte hai or isko let keyword k sath use nahi kar sakte or jis jagah variables ko acess karna hota hai waha par @observedobject ko define kar k use karte hai )
    //@Observeobject :- (ye class hai jo published property ko acess karne k liye use hoti rahti hai)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PWrappers_Previews: PreviewProvider {
    static var previews: some View {
        PWrappers()
    }
}
