import SwiftUI

struct ContentView: View {
    @State var sliderValue = 2.0
    @State var output: String = ""
    var body: some View {
        
        VStack {
            
            Group {
                Divider()
                Text("Functions Challenge")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.title)
                Divider()
            }
            
            Text("Slider Position: \(Int(sliderValue))")
            Slider(value: $sliderValue, in: 0...6) {
                Text("Slider")
            } minimumValueLabel: {
                Text("MVP").font(.title2).fontWeight(.thin)
            } maximumValueLabel: {
                Text("Stretch #6").font(.title2).fontWeight(.thin)
            }
            .tint(.blue)
            .padding()
            .onChange(of: sliderValue) { _ in
                switch(Int(sliderValue)){
                case 0:
                    //MARK: MVP - Part II
                    displayMVP()
                    
                    
                    break
                case 1:
                    //MARK: Stretch #1 - Part II
                    output = returnAString()
                    
                    
                    break
                case 2:
                    //MARK: Stretch #2 - Part II
                    output = createSentence(favoriteClass: "Math")
                    
                    
                    
                    break
                case 3:
                    // TODO: - Stretch #3
                    output = createFruitLovingSentence(favoriteFruit1: "apples", favoriteFruit2: "bananas")
                    break
                case 4:
                    let sentence = "Programming Rules"
                    // TODO: - Stretch #4
                    output = "\"\(sentence)\"\n has \(countTheCharacters(sentence: sentence)) characters"
                    break
                case 5:
                    let sentence = "Here is my sentence"
                    // TODO: - Stretch #5
                                        let tuple = findVowelsConsonants(sentence)
                                        output = "\"" + sentence + "\"\n" + "Vowels:\(tuple.0) Consonants:\(tuple.1)"
                    break
                default:
                    let anotherSentence = "My Other Sentence"
                    // TODO: - Stretch #6
                                        let tuple = findVowelsConsonantsPunctuation(sentenceInput: anotherSentence)
                                        output = "\"" + anotherSentence + "\"\nVowels:\(tuple.0) \nConsonants:\(tuple.1) \nPunctuation:\(tuple.2)"
                    break
                }
            }
            
            Text(output)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer()
            Group {
                
                Image("MobileMakersEduNB")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                
            }
            .padding()
        }
    }
    
    
    //MARK: - MVP - Part I
    func displayMVP(){
        output = "MVP Completed"
    }
    
    
    
    //MARK: - Stretch #1 - Part I
    func returnAString() -> String {
        return "Stretch #1 Complete"
    }
    
    
    
    //MARK: - Stretch #2 - Part I
    func createSentence(favoriteClass: String) -> String {
        return "I love \(favoriteClass) class!"
    }
    
    
    
    //MARK: - Stretch #3
    func createFruitLovingSentence(favoriteFruit1: String, favoriteFruit2: String) -> String{
        return "I love \(favoriteFruit1) and \(favoriteFruit2)"
    }
    
    
    
    //MARK: - Stretch #4
    
    func countTheCharacters(sentence:String) -> Int{ 
        return sentence.count 
        
    }
    
    
    //MARK: - Stretch #5
    func findVowelsConsonants (_ sentence: String)-> (Int, Int){
        let sentenceLowercase = sentence.lowercased()
        var tuple = (numberOfVowels: 0, numberOfConsonants: 0, numberOfPunctuation: 0)
        for char in sentenceLowercase{
            switch char{
            case "a", "e", "i", "o", "u":
                tuple.0 += 1
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
                tuple.1 += 1
            default:
                tuple.2 += 1
            }
        }
        return (tuple.0, tuple.1)
    }    
    
    
    //MARK: - Stretch #6
    func findVowelsConsonantsPunctuation(sentenceInput: String) -> (Int, Int, Int) {
        var vowels = 0
        var consonants = 0
        var punctuation = 0
        for character in sentenceInput {
            switch String(character) {
            case "a", "e", "i", "o", "u":
                vowels += 1
            case ".","!",":",";","?", " ", "'", "":
                punctuation += 1
            default:
                consonants += 1
            }
        }
        return (vowels, consonants, punctuation)
    }
    
    
    
}
