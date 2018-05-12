# Multiple PickerViews in a Single View Example 
 
## written in swift 4.1 
 
### Features 
  
  
- provides a basic Datasource 
- can be expanded endlessly 
- only uses basic PickerViews and no custom stuff 
  
  
![screenshot](https://raw.githubusercontent.com/Casual-Coding/Multiple-PickerViews-in-a-View/master/samplePicture.png)
  
### Simple Exaple Project is included - try it 
  
  
### or use the Basic Guide on how to set in up in Your Own Project 
  
  
- add multiple Picker Views in your Project via Interface Builder 
- link them to your View Controller as Outlets 
- make your Viewcontroller conform to "UIPickerViewDelegate, UIPickerViewDataSource" 
- create the Data Sources for your Pickers and fill them with Data 
- implement Methods something like this in your Project : 
  
  
```swift
    //number of coloums
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView1 == pickerView {
            return pickerData1.count
        }
        if pickerView2 == pickerView {
            return pickerData2.count
        }
        return 0
    }
    //getting the Data
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView1 == pickerView {
            return pickerData1[component]
        }
        if pickerView2 == pickerView {
            return pickerData2[component]
        }
        return ""
    }
```
    
- set the delegates and data sources of the Pickers to self

Done
