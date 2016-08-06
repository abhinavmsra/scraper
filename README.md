# Scraper API 

This app is an API driven application which accepts the url of a page, scrapes it and indexes its contents to be viewed by users.

# API Endpoints

1) [GET] https://enigmatic-sands-52774.herokuapp.com/api/v1/pages
   
   Description: It lists the available scraped pages details.
   
2) [POST] https://enigmatic-sands-52774.herokuapp.com/api/v1/pages
    
    Parameters: 
      - url : URL to be scraped. Present in request body.
      
    Description: It scrapes a new page
    
3) [GET]  https://enigmatic-sands-52774.herokuapp.com/api/v1/pages/:id

    Parameters: 
          - id : ID of page seeked. Present in URL path.
          
    Description: It returns the details of the page
