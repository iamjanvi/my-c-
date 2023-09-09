// virtual 
#include<iostream>
using namespace std;

class stud_info
{
	protected:
		int no;
		public:
			
			void get_info()
			{
			
			cout<<"Enter the number:";
			cin>>no;
		    }
		    void put_info()
		    {
		    	cout<<"number = "<<no<<endl;
			}
		    
};
class sub_mark: virtual public stud_info
{
	protected: 
	int m[3];
	public:
	void get()
	{
		for(int i=0;i<3;i++)
		{
		  cout<<"enter the mark"<<i+1<<": "<<endl;
		  cin>>m[i];	
		}
		
	}
	void put()
	{
		for(int i=0;i<3;i++)
		{
			cout<<"mark"<<i+1<<"= "<<m[i]<<endl;
		}
	}
};
class sport_mark:public virtual  stud_info
{
 protected:
      int sm;
      public:
	  void get_sm()
	  {
	  	cout<<"Enter the sport mark: ";
	  	cin>>sm;
	  }
	  void put_sm()
	  {
	  	cout<<"sport mark : "<<sm<<endl;
	
      }	
};
class per:public sub_mark,public sport_mark
{
 protected:
   int tot;
   float per;
   public:
   void cal()
   {
     	tot=0;
     	per=0;
     	for(int i=0;i<3;i++)
     	{
		 
     	tot=tot+m[i];
        }
     	tot=tot+sm;
     	per=tot/4;
        
   }	
   void show()
   {
   	cout<<"Total = "<<tot<<endl;
   	cout<<"percentage = "<<per<<endl;
   }
};
int main()
{
	per obj;
	
	obj.get_info();
	obj.get();
	obj.get_sm();
	
	obj.put_info();
	obj.put();
	obj.put_sm();
	
	obj.cal();
	obj.show();
	return 0;
}
