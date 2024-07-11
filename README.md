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

Last updated: 2024-07-06 18:00:31


Last updated: 2024-07-06 20:00:30

Last updated: 2024-07-06 22:00:33

Last updated: 2024-07-07 03:00:31

Last updated: 2024-07-07 09:00:30

Last updated: 2024-07-07 10:00:31

Last updated: 2024-07-07 11:00:31

Last updated: 2024-07-07 12:00:31

Last updated: 2024-07-07 13:00:30

Last updated: 2024-07-07 17:00:32

Last updated: 2024-07-07 18:00:29

Last updated: 2024-07-07 19:00:32

Last updated: 2024-07-07 20:00:30

Last updated: 2024-07-07 21:00:29

Last updated: 2024-07-07 22:00:32

Last updated: 2024-07-07 23:00:29

Last updated: 2024-07-08 05:00:30

Last updated: 2024-07-08 06:00:31

Last updated: 2024-07-08 08:00:31

Last updated: 2024-07-08 09:00:30

Last updated: 2024-07-08 11:00:33

Last updated: 2024-07-08 12:00:32

Last updated: 2024-07-08 15:00:31

Last updated: 2024-07-08 16:00:34

Last updated: 2024-07-08 21:00:31

Last updated: 2024-07-09 01:00:31

Last updated: 2024-07-09 02:00:32

Last updated: 2024-07-09 05:00:31

Last updated: 2024-07-09 06:00:32

Last updated: 2024-07-09 08:00:32

Last updated: 2024-07-09 10:00:33

Last updated: 2024-07-09 11:00:32

Last updated: 2024-07-09 14:00:34

Last updated: 2024-07-09 15:00:32

Last updated: 2024-07-09 17:00:32

Last updated: 2024-07-09 19:00:32

Last updated: 2024-07-09 20:00:33

Last updated: 2024-07-09 21:00:33

Last updated: 2024-07-09 23:00:33

Last updated: 2024-07-10 00:00:35

Last updated: 2024-07-10 03:00:32

Last updated: 2024-07-10 04:00:33

Last updated: 2024-07-10 06:00:33

Last updated: 2024-07-10 09:00:34

Last updated: 2024-07-10 13:00:32

Last updated: 2024-07-10 16:00:32

Last updated: 2024-07-10 18:00:32

Last updated: 2024-07-10 19:00:29

Last updated: 2024-07-11 04:00:32

Last updated: 2024-07-11 05:00:33

Last updated: 2024-07-11 10:00:32

Last updated: 2024-07-11 11:00:32

Last updated: 2024-07-11 13:00:31

Last updated: 2024-07-11 14:00:34

Last updated: 2024-07-11 17:00:32

Last updated: 2024-07-11 19:00:31

Last updated: 2024-07-11 20:00:30