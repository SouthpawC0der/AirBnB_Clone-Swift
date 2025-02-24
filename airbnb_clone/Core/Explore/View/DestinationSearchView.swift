//
//  DestinationSearchView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 6/1/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    
 
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
  
    
    
    
    
    var body: some View {
        VStack {
            
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocations()
                        show.toggle()
                    }
                }label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
            }
                Spacer()
                
                if !viewModel.searchLocation.isEmpty { //if something is being searched pop up
                    Button("Clear") {
                        viewModel.searchLocation = "" //clears search destination
                        viewModel.updateListingsForLocations()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Destinations", text: $viewModel.searchLocation) //starts search bar
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocations()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    PickView(title: "Where", description: "Add destination")
                }
                
                
            }
            //search background
            .modifier(CollapsedDestinationModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .location}
            }
            
            //Date Selections
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                   Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    PickView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsedDestinationModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .dates}
                }
            
            
    
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                  Text("Who's coming?")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else {return} //makes the number never go negative
                        numGuests -= 1
                    }

                } else {
                    PickView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsedDestinationModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .guests}
                }
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsedDestinationModifier: ViewModifier { //custom modifier
    func body(content: Content) -> some View {
      content
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
    }
}

struct PickView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
                
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
