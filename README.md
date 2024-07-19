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

Last updated: 2024-07-12 00:00:33

Last updated: 2024-07-12 06:00:31

Last updated: 2024-07-12 08:00:32

Last updated: 2024-07-12 09:00:48

Last updated: 2024-07-12 10:00:34

Last updated: 2024-07-12 12:00:32

Last updated: 2024-07-12 14:00:32

Last updated: 2024-07-12 15:00:33

Last updated: 2024-07-12 16:00:33

Last updated: 2024-07-12 17:00:31

Last updated: 2024-07-12 18:00:32

Last updated: 2024-07-12 20:00:29

Last updated: 2024-07-12 22:00:30

Last updated: 2024-07-13 00:00:32

Last updated: 2024-07-13 01:00:29

Last updated: 2024-07-13 02:00:30

Last updated: 2024-07-13 03:00:28

Last updated: 2024-07-13 04:00:30

Last updated: 2024-07-13 05:00:31

Last updated: 2024-07-13 06:00:31

Last updated: 2024-07-13 07:00:32

Last updated: 2024-07-13 09:00:31

Last updated: 2024-07-13 12:00:30

Last updated: 2024-07-13 16:00:32

Last updated: 2024-07-13 23:00:30

Last updated: 2024-07-14 01:00:31

Last updated: 2024-07-14 03:00:31

Last updated: 2024-07-14 04:00:29

Last updated: 2024-07-14 05:00:30

Last updated: 2024-07-14 09:00:31

Last updated: 2024-07-14 10:00:31

Last updated: 2024-07-14 11:00:30

Last updated: 2024-07-14 14:00:30

Last updated: 2024-07-14 15:00:30

Last updated: 2024-07-14 16:00:31

Last updated: 2024-07-14 17:00:33

Last updated: 2024-07-14 19:00:31

Last updated: 2024-07-14 20:00:30

Last updated: 2024-07-14 21:00:32

Last updated: 2024-07-14 22:00:33

Last updated: 2024-07-14 23:00:31

Last updated: 2024-07-15 03:00:32

Last updated: 2024-07-15 05:00:31

Last updated: 2024-07-15 08:00:32

Last updated: 2024-07-15 09:00:32

Last updated: 2024-07-15 13:00:31

Last updated: 2024-07-15 19:00:30

Last updated: 2024-07-15 22:00:32

Last updated: 2024-07-16 00:00:33

Last updated: 2024-07-16 03:00:30

Last updated: 2024-07-16 04:00:29

Last updated: 2024-07-16 10:00:29

Last updated: 2024-07-16 12:00:28

Last updated: 2024-07-16 13:00:31

Last updated: 2024-07-16 14:00:31

Last updated: 2024-07-16 17:00:31

Last updated: 2024-07-16 18:00:31

Last updated: 2024-07-16 19:00:29

Last updated: 2024-07-16 22:00:27

Last updated: 2024-07-16 23:00:27

Last updated: 2024-07-17 00:00:31

Last updated: 2024-07-17 03:00:28

Last updated: 2024-07-17 04:00:28

Last updated: 2024-07-17 07:00:29

Last updated: 2024-07-17 08:00:28

Last updated: 2024-07-17 09:00:29

Last updated: 2024-07-17 10:00:29

Last updated: 2024-07-17 11:00:30

Last updated: 2024-07-17 14:00:30

Last updated: 2024-07-17 15:00:29

Last updated: 2024-07-17 16:00:31

Last updated: 2024-07-17 17:00:30

Last updated: 2024-07-17 18:00:30

Last updated: 2024-07-18 00:00:31

Last updated: 2024-07-18 02:00:29

Last updated: 2024-07-18 03:00:29

Last updated: 2024-07-18 06:00:28

Last updated: 2024-07-18 07:00:29

Last updated: 2024-07-18 08:00:29

Last updated: 2024-07-18 10:00:29

Last updated: 2024-07-18 12:00:30

Last updated: 2024-07-18 15:00:29

Last updated: 2024-07-18 16:00:30

Last updated: 2024-07-18 17:00:29

Last updated: 2024-07-18 18:00:28

Last updated: 2024-07-18 19:00:28

Last updated: 2024-07-19 02:00:31

Last updated: 2024-07-19 04:00:29

Last updated: 2024-07-19 05:00:32

Last updated: 2024-07-19 06:00:33

Last updated: 2024-07-19 07:00:31

Last updated: 2024-07-19 11:00:31

Last updated: 2024-07-19 13:00:31

Last updated: 2024-07-19 16:00:32

Last updated: 2024-07-19 19:00:30