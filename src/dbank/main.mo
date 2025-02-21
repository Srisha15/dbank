import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Int "mo:base/Int";
import Float "mo:base/Float";
import Text "mo:base/Text";

actor dBank{
  stable var currentValue : Float = 300;
  // Debug.print(debug_show(currentValue));
  currentValue:= 300;
  Debug.print(debug_show(currentValue));
  let id = 123456789123;
  // Debug.print(debug_show(currentValue));
  // Debug.print("Hello");
  // Debug.print(debug_show(id));

  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));



  //   public func function_name(arugument_name1: datatype,...){
  //   currentValue += amount;
  //   Debug.print(debug_show(currentValue));
  // };
  

  public func topUp(amount: Float){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
    // return : Text "success";
  };

  public func withdraw(amount:Float){

    let tempValue:Float = currentValue - amount;

    if (tempValue >= 0){
       currentValue -= amount;
       Debug.print(debug_show(currentValue));
    }else{
      Debug.print("Amount too large, currentValue is less than zero");
    }
    //  currentValue -= amount;
    //  Debug.print(debug_show(currentValue));

  };


  public query func checkBalance(): async Float{
    return currentValue;
  };


  //   public func topUp(){
  //   currentValue +=1;
  //   Debug.print(debug_show(currentValue));
  // };
  

  public func compound(){
    let currentTime = Time.now();
    let timeElapsedNS= currentTime - startTime;
    let timeElapsedS = timeElapsedNS/1000000000;
    currentValue := currentValue * (1.00000000158 **Float.fromInt(timeElapsedS));
    startTime := currentTime;


  };
}



