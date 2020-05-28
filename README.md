Green-Thumb
===========

*A simple Gardening app.*

> _Note_: 
> 
> * This is a forked version to my own repo. This `README.md` update marks its 1st forked commit.
> * Project originally jointly implemented on teammate's repo : [@notayogilee](https://github.com/notayogilee) / [Green-Thumb](https://github.com/notayogilee/green-thumb)
> * Forking occured on May 27, 2020. - after Grad's presentation.
> * Some abandoned components and commented-out code is kept for education puposes.
> #


## Intro
> This is the graduation-project of Lighthouse Labs Bootcamp, presented on 2020-05-22.

This is a gardening app, where a user can view gardening instructions for a list of specific plants.  A registered user can create a garden, add or removed plants from that garden, and delete the garden.  There is the current weather available specific to the location of each garden.

## Developers Team 
* Hatem ([@AH82](https://github.com/AH82)) *(a.k.a Ahmed Attia)*
* Lee Castelani ([@notayogilee](https://github.com/notayogilee)) 

## Stack
| Part        |   Description                     | by:                         |
|:------------|----------------------------------:|:---------------------------:|
| Database    | PostgreSQL                        | **@AH82**                   |
| Back-End    | Ruby-on-Rails                     | **@AH82**                   |
| Front-End   | React JS (functional components)  | **@notayogilee** _+ @AH82_  |
| Styling (1) | Materialize-css                   | **@notayogilee** _+ @AH82_  |
| Styling (2) | custom vanilla CSS                | **@notayogilee**            |

> for a detailed Role breakdown, head to "stats for nerds" at the end of this README.


## Project Environment & Dependencies

### Environment
  * @notayogilee : Ubuntu 18 (frontend) & Vagrant (backend)
  * @AH82 : Ubuntu 18 on WSL on Windows 10

### Major Environment Dependencies
    Ruby 2.3.5
    Rails 5.2.4.2
    psql 10.12
    Node 10.16.3
    npm 6.9.0
    yarn 1.22.4

### FontEnd Dependencies
    react : 16.13.1
    react-bootstrap : 1.0.1
    react-countdown-circle-timer : 2.1.2
    react-dom : 16.13.1
    react-router-dom : 5.1.2
    react-script : 3.4.1
    axios : 0.19.2
    dotenv : 8.2.0
    materialize-css": " : 0-rc.2
    @material-ui/core : 4.9.14
    typescript : 3.9.2
    bootstrap : 4.5.0
    jquery : 1.9.1
    sass : 1.26.5
    node-sass : 4.14.1

### BackEnd Dependencies
    rails : 5.2.4.2
    pg : 2.0
    bcrypt : 3.1.7
    rack-cors : (rails 5.2.4.2)


## Project Setup
### 1. Initial Setup and Cloning
* Clone the project to your desired directory path (replace `<desired-path>` with actual path)
  ```
  $ cd <desired-path>
  $ git clone git@github.com:AH82/green-thumb.git
  ```
  

### 2. Server-side setup


1. Navigate to the `backend` directory, then install all the gem dependencies.
    ```
    $ cd backend
    $ bundle install
    ```
2. Start the database service, if it's not on.
    ```
    sudo service postgresql start
    ```
    * or to restart:
    ```
    sudo service postgresql restart
    ```    
      > _**<ins>Handful Tip</ins>** : to stop it for any reason:_
      > ```
      > sudo service postgresql stop
      > ```
      > .

3. Setup & Seed the database.
    ```
    rails db:reset
    ```
4. Start the Server on port 3000
    * if your server is on your local OS (Linux/Mac) or in Windows-Subsystem-for-Linux (WSL)
      ```
      rails s -p 3000
      ``` 
    * if your server is in Vagrant
      ```
      rails s -p 3000  -b 0.0.0.0
      ```
5. On your browser, go to  [`http://localhost:3000`](http://localhost:3000)
6. Welcome to The Rails server! :)
      

### 3. Client-side setup

1.  In a different Terminal, Navigate to the `client` directory, then install all the node / npm  dependencies.
    ```
    # From root directory

    $ cd backend
    ```
2. Install all dependencies, using `npm` or `yarn`
    > <ins>_**Tip**_</ins> : If you are on WSL, better use yarn.
    * npm :
      ```
      $ npm i
      ```
    * yarn :  
      ```
      $ yarn install
      ```

3. Navigate to [`/client/package.json`](./client/package.json) , make sure it contains the following in its top level properties :
    ```
    { 
      // ...otherProperties,

      "proxy": "http://localhost:3000",
    }
    ```
    If not, add it manually.

4. Start the client's front-end server, use either `npm` or `yarn`
    * npm :
      ```
      $ npm start
      ```
    * yarn :  
      ```
      $ yarn start
      ```
      Make sure it started on port `3006`

5. On your browser, go to  [`http://localhost:3006`](http://localhost:3006)

6. Welcome to our _**Green-Thumb App!**_ -- Have fun!

---

## Web-App Demo & Walkthrough 
> <ins> **Note**</ins> :
> 
> This app is meant to be more friendly to tablets/iPads. That said, it works perfectly fine on Desktops and other platforms.
> * To use the app in a Tablet view, open Chrome's DevTools (`ctrl+shift+i`), 
> * Click on `Toggle the device toolbar` (`ctrl+shift+M`)
> * On the toolbar, click on responsive and select iPad, or use the the block nav bar to select the desired view (i.e. tablet)

1. Upon opening  [`http://localhost:3006`](http://localhost:3006), you will land on a page with a general plant list. feel free to browse the plants.

2. Each plant has an info button that displays further information about it.

3. To view Gardens, you must be a Registered user. 
    * Feel free to register, or you can use one of our preset users for demo purposes. 


      | Name      | Email               | Password   | no. of gardens |
      |:----------|--------------------:|-----------:|---------------:|
      | Andy      | andy@labber.ca      | `labber`   | 1              |
      | Sheldon   | sheldon@labber.ca   | `labber`   | 1              |
      | Felix     | felix@labber.ca     | `labber`   | 1              |
      | Ray       | Ray@labber.ca       | `labber`   | 2              |


    * To **_Register_** or **_Login_** : press the burger button to extend the side-navigation bar and press the corresponding `Register` or `login`
    * After Successful Register/Login, a `Gardens` button will appear in the side bar. Press it.

4. If you wish to add a new garden, press the `Add New Garden` button
5. Each Garden displays the weather based on the garden's city location.
6. If you wish to Edit the Garden's title or location, press the pen-icon button.
7. If you wish to Delete the Garden, press the Trash-icon button.
8. Each garden has 2 more buttons, one to display the plants it has, and one to add plants from a preset list. Identical to the App's Landing page. Feel free to play around.
9. Have fun!

---

# Stats for the Nerds

## Detailed Roles of Implementation
> Please : refer to [@notayogilee](https://github.com/notayogilee) `README.md` on his  [Green-Thumb](https://github.com/notayogilee/green-thumb) version for further details on his side.
### @notayogilee :
  - Project's idea !
  - list of Plants-api (later converted to DB table: Plants)
  - Front-end / Client-Side
    - Weather-api
    - Entire frontend skeleton.
    - All Components namings, heirarchy & inner skeletons.
    - React-Router implementation.
    - Styling:
       - All Vanila/Custom CSS styling
    - Details
      - Components

        | Component           | Participation                   |
        |:--------------------|---------------------------------|
        | App.js              | All, except user-related        |
        | NavBar.js           | Everything                      |
        | SideBar.js          | Everything                      |
        | - Register.js       | abandoned for Register_NEW.js   |
        | - Login.js          | abandoned for Login_NEW.js      |
        | SearchResults.js    | Everything                      |
        | AllPlants.js        | Everything                      |
        | - PlantCard.js      | Everything                      |
        | - PlantCardList.js  | Everything                      |
        | - PlantList.js      | Everything                      |
        | - PlantListItem.js  | Everything                      |
        | - Timer.js          | Everything (abandoned)          |
        | Button.js           | Everything                      |

      - Hooks
      
        | Hooks               | Participation                   |
        |:--------------------|---------------------------------|
        | useGardenData       | Everything                      |

### @AH82 : 
  - Back-end / Server-side:
    - Database: [100%] All models and seeds (incl. SQL injection of plants Table converted from an json file) using Rails' own Active Record)
    - Server: [100%] RESTful api server, all routes design, POST data format.
  - User login and Registration Back- & Front-end [100%]
    - Controllers & Models ( back-end )
      - Registrations
      - Sessions
    - Components ( front-end )
      - Register_NEW.js
      - Login_NEW.js
      - App.js (user related Helper functions)
    - bcrypt ( front & back ) & cookies ( backend )
  - Front-end Participation:
    - Components

      | Component              | Participation                              |
      |:--------------------   |--------------------------------------------|
      | App.js                 | Logged-in user Helper functions            |
      | - Auth/Register_NEW.js | Created & implemented in full              |
      | - Auth/Login_NEW.js    | Created & implemented in full              |
      | Gardens.js             | Minor modification + Styling; except .css  |
      | GardenDetails.js       | JSX, Styling, sub-components; except .css  |
      | - GardenAdd.js         | Created & implemented in full              |
      | - GardenUpdate.js      | Created & implemented in full              |
      | - GardenDelete.js      | Created & implemented in full              |
      
    - Hooks
    
      | Hooks               | Participation                   |
      |:--------------------|---------------------------------|
      | useLoggedInState    | (abandoned)                     |

  - Styling
    - Solved major incompatibility between Materialize-css & React (functional components)
