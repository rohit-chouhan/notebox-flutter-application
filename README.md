<h1  align="center" >NoteBox</h1>
A simple note mobile application for Andorid and iOS, to users can easily create and save personal notes in smart phone, this application created in flutter for ui design and functions, all CRUD Operations applying with API JSON which is developed on PHP (Codeigniter Framework).

### Highlighted Feature
- Login/Signup
- Forget Password (via SMTP Server)
- Dashboard
- Add New Notes
- Settings
- Dark Mode

## Getting Started

### Codeigniter Application
All the back-end/ API code is devloped in php, which is commited on folder `codeigniter-api`, open the folder and publish to your shared hosting and connect your domain to dart application in `config.dart` file you can replace host name with your host name where you published your codeigniter application.

### Step for Setup with Codeigniter:
- Download latest Codeigniter application from https://codeigniter.com/download
- Extract the zip file
- Copy `app` folder from here (repository) and past to extracted folder and replace all file.
- Deploy to hosting, database file also available in `app/controllers` folder import to hosting then enjoy coding!

> (Tutorial) How Deploy CodeIgniter 4 to Shared Hosting : https://www.youtube.com/watch?v=k943H5OiIdE

### Step for Setup with Flutter:
- Open VS Code
- Go to File
- Select Open Workspace...
- Now select project and Open it.
- Enjoying Coding!!!

> (Tutorial) Flutter Setup in Visual Studio Code & Running first Flutter app in Android Device : https://www.youtube.com/watch?v=WepTtmHKcoI

## API Parameters
|   name| description  | parameter   | requeste type|
| ------------ | ------------ | ------------ | ------------ |
|   /addUser |  Create new user |  `name` `email` `password`| POST |
|   /login |  Authorize user |  `email` `password`| POST |
|   /reset |  Forget user account|  `email` | POST |
|   /createNote |  Create new note |  `user_id` `heading`  `note` | POST |
|   /getNotes |  Get all notes by user |  `id` | GET |
|   /getuser |  Get user information |  `id` | GET |
|   /updateUser |  Update user information |  `id` `name` `email` | POST |
|   /updatePass |  Update user update |  `id` `cpassword` `password` | POST |

## Workflow
Here the simple workflow how the application working.<br><br>
<img src="https://raw.githubusercontent.com/rohit-chouhan/notebox-flutter-application/main/dartapp.jpg"/>

## Screeshots
<img src="https://raw.githubusercontent.com/rohit-chouhan/notebox-flutter-application/main/screenshots.jpg"/>

## About
This application is developed by <a href="https://www.linkedin.com/in/itsrohitchouhan/">Rohit Chouhan ❤️</a><br>
Create issue pull if you found any problem, Thank You!
