//
//  Constants.swift
//  Chat
//
//  Created by Hezekiah Branch on 4/10/18.
//  Copyright © 2018 Hezekiah Branch. All rights reserved.
//

import Foundation
import Firebase

struct Constants
{
    struct refs
    {
        static let databaseRoot = Database.database().reference()
        static let databaseChats = databaseRoot.child("chats")
    }
}
