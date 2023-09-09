// faculty leave
#include<iostream>
using namespace std;

class faculty
{
	protected:
		int no;
		char month[20];
		public:
			
			void in_info()
			{
			
			cout<<"Enter the number: ";
			cin>>no;
			cout<<"Enter the month: ";
			cin>>month;
		    }
		    void dis_info()
		    {
		    	cout<<"number = "<<no<<endl;
		    	cout<<"Month is : "<<month<<endl;
		    }
		    
};
class pub_holiday: virtual public faculty
{
	protected: 
	int holiday;
	public:
	void get()
	{
		cout<<"Enter the public holidays of "<<month<<" : ";
		cin>>holiday;
		
	}
	void put()
	{
     cout<<" Public Holiday of "<<month<<": "<<holiday<<endl;		
 
	}
};
class causal_holiday:public virtual  faculty
{
 protected:
      int cd;
      public:
	  void causal_in()
	  {
	  	cout<<"Enter the causal leave of  "<<month<<" : ";
	  	cin>>cd;
	  }
	  void causal_out()
	  {
	  	cout<<"Causal Holiday "<<month<<" : "<<cd<<endl;
	
      }	
};
class tot_leave:public pub_holiday ,public causal_holiday
{
 protected:
   int tot;
   public:
   void cal()
   {
     	tot=0;
    
     	tot=tot+holiday+cd;
        
   }	
   void show()
   {
   	cout<<"Total holiday of "<<month<<" is : "<<tot<<endl;
   }
};
int main()
{
	tot_leave obj;
	
	obj.in_info();
	obj.get();
	obj.causal_in();
	
	obj.dis_info();
	obj.put();
	obj.causal_out();
	
	obj.cal();
	obj.show();
	return 0;
}
