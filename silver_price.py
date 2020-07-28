from bs4 import BeautifulSoup as BS 
import requests 
  
  
# method to get the price of silver
def get_silver_price(url): 
      
    # getting the request from url  
    data = requests.get(url) 
  
    # converting the text  
    soup = BS(data.text, 'html.parser') 
  
    # finding metha info for the current price 
    ans = soup.find("div", class_ = "FL brdr PR20 gr_13").text
          
    # returnng the price 
    return ans 
   


def main():
    # url of the silver price 
    url = "https://www.moneycontrol.com/commodity/silver-price.html"
      
    ans = get_silver_price(url) 
      
    # printing the ans 
    print("1kg silver-price in Rs")
    print(ans) 
    


if __name__ == "__main__":
    main()


