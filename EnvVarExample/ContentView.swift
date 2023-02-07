//
//  ContentView.swift
//  EnvVarExample
//
//  Created by Guilherme Rambo on 07/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            let vars = Array(ProcessInfo.processInfo.environment.keys).sorted(by: { $0 < $1 })
            ForEach(vars.indices, id: \.self) { i in
                VStack(alignment: .leading) {
                    Text(vars[i])
                        .foregroundColor(.secondary)
                        .font(.caption)
                    Text(ProcessInfo.processInfo.environment[vars[i]]!)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
