#include <iostream.h>  
      class Student {  
   public:  
      int id;//data member (also instance variable)      
      string name;//data member(also instance variable)      
}; 
int main(void) {
	// your code goes here
   Student s1; //creating an object of Student   
    s1.id = 201;    
    s1.name = "Sonoo Jaiswal";   
    cout<<s1.id<<endl;  
    cout<<s1.name<<endl;  
    return 0;  
}  
	