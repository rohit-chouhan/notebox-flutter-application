<h1  align="center" >NoteBox</h1>
A simple note mobile application for Android and iOS, wherein users can easily create and save personal notes on their smartphones.

### Highlighted Feature
- Log-in/Sign-up
- Forget Password (via SMTP Server)
- Dashboard
- Add New Notes
- Settings
- Dark Mode

### Built with
- *Flutter*. UI design
- *PHP (CodeIgniter Framework)*. CRUD operations with API JSON

## Getting Started

### CodeIgniter Application
All the back-end/API code is developed in PHP, which is commited on folder `codeigniter-api`. Open the folder and publish to your shared hosting and connect your domain to dart application in `config.dart` file. You can replace the host name with your host name where you published your CodeIgniter application.

### Set-up Codeigniter:
- Download latest CodeIgniter application from https://codeigniter.com/download.
- Extract the zip file.
- Copy the `app` folder from here (repository), paste to the extracted folder and replace all the files.
- Deploy to hosting. Database file is also available in `app/controllers` folder. Import to hosting, then enjoy coding!

> (Tutorial) How Deploy CodeIgniter 4 to Shared Hosting : https://www.youtube.com/watch?v=k943H5OiIdE

### Set-up Flutter:
- Open VS Code.
- Go to File.
- Select Open Workspace..
- Select project and open it.
- Enjoy coding!!!

> (Tutorial) Flutter Setup in Visual Studio Code & Running first Flutter app in Android Device : https://www.youtube.com/watch?v=WepTtmHKcoI

## API Parameters
An API Parameter will be passed in CodeIgniter/PHP application from Flutter.
|   name| description  | parameter   | request type|
| ------------ | ------------ | ------------ | ------------ |
|   /addUser |  Create new user |  `name` `email` `password`| POST |
|   /login |  Authorize user |  `email` `password`| POST |
|   /reset |  Forget user account|  `email` | POST |
|   /createNote |  Create new note |  `user_id` `heading`  `note` | POST |
|   /getNotes |  Get all notes by user |  `id` | GET |
|   /getuser |  Get user information |  `id` | GET |
|   /updateUser |  Update user information |  `id` `name` `email` | POST |
|   /updatePass |  Update user |  `id` `cpassword` `password` | POST |

## Workflow
Here is the simple workflow of how the application works:<br><br>
<img src="https://raw.githubusercontent.com/rohit-chouhan/notebox-flutter-application/main/dartapp.jpg"/>

## Screeshots
<img src="https://raw.githubusercontent.com/rohit-chouhan/notebox-flutter-application/main/screenshots.jpg"/>

## About
This application is developed by <a href="https://www.linkedin.com/in/itsrohitchouhan/">Rohit Chouhan ❤️</a><br>
Create an issue and pull request if you find any problem. Thank you!


Last updated: 2024-06-19 09:00:55


Last updated: 2024-06-19 11:00:53

Last updated: 2024-06-19 12:00:51

Last updated: 2024-06-19 13:00:52

Last updated: 2024-06-19 17:00:50

Last updated: 2024-06-19 18:00:51

Last updated: 2024-06-19 21:00:52

Last updated: 2024-06-19 22:00:50

Last updated: 2024-06-19 23:00:50

Last updated: 2024-06-20 00:00:51

Last updated: 2024-06-20 02:00:49

Last updated: 2024-06-20 04:00:53

Last updated: 2024-06-20 05:00:50

Last updated: 2024-06-20 06:00:52

Last updated: 2024-06-20 07:00:50

Last updated: 2024-06-20 08:00:51

Last updated: 2024-06-20 09:00:51

Last updated: 2024-06-20 16:00:52

Last updated: 2024-06-20 17:00:50

Last updated: 2024-06-20 18:00:51

Last updated: 2024-06-20 19:00:51

Last updated: 2024-06-20 21:00:50

Last updated: 2024-06-20 23:00:49

Last updated: 2024-06-21 03:00:48

Last updated: 2024-06-21 04:00:51

Last updated: 2024-06-21 06:00:51

Last updated: 2024-06-21 07:00:52

Last updated: 2024-06-21 08:00:55

Last updated: 2024-06-21 10:00:57

Last updated: 2024-06-21 18:00:52

Last updated: 2024-06-21 19:00:50

Last updated: 2024-06-21 20:00:50

Last updated: 2024-06-21 22:00:51

Last updated: 2024-06-21 23:00:49

Last updated: 2024-06-22 02:00:48

Last updated: 2024-06-22 04:00:52

Last updated: 2024-06-22 05:00:50

Last updated: 2024-06-22 06:00:51

Last updated: 2024-06-22 09:00:50

Last updated: 2024-06-22 10:00:51

Last updated: 2024-06-22 14:00:50

Last updated: 2024-06-22 15:00:53

Last updated: 2024-06-22 16:00:52

Last updated: 2024-06-22 18:00:51

Last updated: 2024-06-22 20:00:52

Last updated: 2024-06-22 22:00:52

Last updated: 2024-06-22 23:00:52

Last updated: 2024-06-23 01:00:51

Last updated: 2024-06-23 02:00:50

Last updated: 2024-06-23 03:00:52

Last updated: 2024-06-23 05:00:51

Last updated: 2024-06-23 06:00:53

Last updated: 2024-06-23 07:00:50

Last updated: 2024-06-23 11:00:51

Last updated: 2024-06-23 15:00:51

Last updated: 2024-06-23 18:00:55

Last updated: 2024-06-23 21:00:51

Last updated: 2024-06-23 22:00:52

Last updated: 2024-06-24 00:00:54

Last updated: 2024-06-24 01:00:50

Last updated: 2024-06-24 05:00:53

Last updated: 2024-06-24 08:00:54

Last updated: 2024-06-24 09:00:55

Last updated: 2024-06-24 10:00:55

Last updated: 2024-06-24 13:01:03

Last updated: 2024-06-24 15:00:56

Last updated: 2024-06-24 16:00:58

Last updated: 2024-06-24 18:00:56

Last updated: 2024-06-24 19:00:55

Last updated: 2024-06-24 22:01:06

Last updated: 2024-06-24 23:00:53

Last updated: 2024-06-25 00:00:53

Last updated: 2024-06-25 01:00:51

Last updated: 2024-06-25 03:00:55

Last updated: 2024-06-25 05:00:55

Last updated: 2024-06-25 06:00:54

Last updated: 2024-06-25 08:00:54

Last updated: 2024-06-25 09:00:55

Last updated: 2024-06-25 13:00:58

Last updated: 2024-06-25 14:00:58

Last updated: 2024-06-25 17:00:56

Last updated: 2024-06-25 19:00:56

Last updated: 2024-06-26 01:00:54

Last updated: 2024-06-26 02:00:52

Last updated: 2024-06-26 07:00:58

Last updated: 2024-06-26 09:00:58