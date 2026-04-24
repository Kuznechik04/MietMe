//
//  SupabaseManager.swift
//  MietMe
//
//  Created by Philip Weber on 23.04.26.
//

import Foundation
import Supabase

class SupabaseManager {
    static let shared = SupabaseManager()
    
    let client = SupabaseClient(
        supabaseURL: URL(string: "https://supabase.com/dashboard/project/sofakoqtlogitjxkvrwx/editor/17560?schema=public")!,
        supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvZmFrb3F0bG9naXRqeGt2cnd4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY5NjYzNjcsImV4cCI6MjA5MjU0MjM2N30.dY_RIekEDFNoa1BlpI2IU_ibmyr3hUXepCf9-sPsOmc"
    )
    
    private init() {}
}
