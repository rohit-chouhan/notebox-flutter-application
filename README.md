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


Last updated: 2024-01-25 12:10:01

Last updated: 2024-01-25 12:17:37

Last updated: 2024-01-25 12:17:42

Last updated: 2024-01-25 12:17:51

Last updated: 2024-01-25 13:00:34

Last updated: 2024-01-25 14:00:34

Last updated: 2024-01-25 15:00:34

Last updated: 2024-01-25 17:00:33

Last updated: 2024-01-25 18:00:34

Last updated: 2024-01-25 19:00:31

Last updated: 2024-01-25 21:00:33

Last updated: 2024-01-26 00:00:33

Last updated: 2024-01-26 01:00:32

Last updated: 2024-01-26 03:00:34

Last updated: 2024-01-26 06:00:31

Last updated: 2024-01-26 07:00:37

Last updated: 2024-01-26 10:00:35

Last updated: 2024-01-26 12:00:33

Last updated: 2024-01-26 14:00:33

Last updated: 2024-01-26 15:00:32

Last updated: 2024-01-26 17:00:34

Last updated: 2024-01-26 19:00:32

Last updated: 2024-01-26 20:00:33

Last updated: 2024-01-26 21:00:31

Last updated: 2024-01-27 00:00:33

Last updated: 2024-01-27 03:00:31

Last updated: 2024-01-27 05:00:32

Last updated: 2024-01-27 06:00:31

Last updated: 2024-01-27 07:00:32

Last updated: 2024-01-27 08:00:31

Last updated: 2024-01-27 10:00:32

Last updated: 2024-01-27 15:00:30

Last updated: 2024-01-27 21:00:30

Last updated: 2024-01-27 23:00:32

Last updated: 2024-01-28 00:00:32

Last updated: 2024-01-28 03:00:30

Last updated: 2024-01-28 05:00:32

Last updated: 2024-01-28 09:00:29

Last updated: 2024-01-28 16:00:32

Last updated: 2024-01-28 20:00:30

Last updated: 2024-01-28 21:00:32

Last updated: 2024-01-28 22:00:31

Last updated: 2024-01-28 23:00:33

Last updated: 2024-01-29 00:00:32

Last updated: 2024-01-29 05:00:34

Last updated: 2024-01-29 06:00:32

Last updated: 2024-01-29 08:00:32

Last updated: 2024-01-29 12:00:34

Last updated: 2024-01-29 13:00:33

Last updated: 2024-01-29 16:00:33

Last updated: 2024-01-29 17:00:34

Last updated: 2024-01-29 18:00:34

Last updated: 2024-01-29 19:00:32

Last updated: 2024-01-29 21:00:29

Last updated: 2024-01-29 22:00:32

Last updated: 2024-01-29 23:00:34

Last updated: 2024-01-30 00:00:32

Last updated: 2024-01-30 01:00:32

Last updated: 2024-01-30 02:00:31

Last updated: 2024-01-30 03:00:31

Last updated: 2024-01-30 06:00:33

Last updated: 2024-01-30 07:00:33

Last updated: 2024-01-30 08:00:33

Last updated: 2024-01-30 10:00:31

Last updated: 2024-01-30 11:00:31

Last updated: 2024-01-30 14:00:31

Last updated: 2024-01-30 20:00:31

Last updated: 2024-01-30 21:00:32

Last updated: 2024-01-30 22:00:31

Last updated: 2024-01-31 01:00:31

Last updated: 2024-01-31 02:00:32

Last updated: 2024-01-31 03:00:30

Last updated: 2024-01-31 04:00:31

Last updated: 2024-01-31 08:00:32

Last updated: 2024-01-31 17:00:33

Last updated: 2024-01-31 19:00:32

Last updated: 2024-02-01 03:00:33

Last updated: 2024-02-01 04:00:31

Last updated: 2024-02-01 05:00:31

Last updated: 2024-02-01 07:00:32

Last updated: 2024-02-01 11:00:32

Last updated: 2024-02-01 12:00:31

Last updated: 2024-02-01 13:00:33

Last updated: 2024-02-01 14:00:33

Last updated: 2024-02-01 18:00:31

Last updated: 2024-02-01 19:00:33

Last updated: 2024-02-01 22:00:31

Last updated: 2024-02-01 23:00:33

Last updated: 2024-02-02 04:00:32

Last updated: 2024-02-02 05:00:30

Last updated: 2024-02-02 12:00:32

Last updated: 2024-02-02 14:00:32

Last updated: 2024-02-02 17:00:33

Last updated: 2024-02-02 18:00:30

Last updated: 2024-02-02 19:00:27

Last updated: 2024-02-02 20:00:31

Last updated: 2024-02-02 21:00:30

Last updated: 2024-02-02 22:00:32

Last updated: 2024-02-02 23:00:30

Last updated: 2024-02-03 00:00:32

Last updated: 2024-02-03 01:00:30

Last updated: 2024-02-03 03:00:29

Last updated: 2024-02-03 08:00:31

Last updated: 2024-02-03 09:00:27

Last updated: 2024-02-03 10:00:31

Last updated: 2024-02-03 11:00:32

Last updated: 2024-02-03 12:00:29

Last updated: 2024-02-03 14:00:30

Last updated: 2024-02-03 16:00:30

Last updated: 2024-02-03 19:00:30

Last updated: 2024-02-03 20:00:28

Last updated: 2024-02-03 21:00:30

Last updated: 2024-02-03 23:00:33

Last updated: 2024-02-04 01:00:29

Last updated: 2024-02-04 02:00:29

Last updated: 2024-02-04 03:00:31

Last updated: 2024-02-04 05:00:33

Last updated: 2024-02-04 07:00:30

Last updated: 2024-02-04 08:00:30

Last updated: 2024-02-04 09:00:31

Last updated: 2024-02-04 10:00:30

Last updated: 2024-02-04 11:00:30

Last updated: 2024-02-04 15:00:30

Last updated: 2024-02-04 17:00:32

Last updated: 2024-02-04 18:00:33

Last updated: 2024-02-04 19:00:31

Last updated: 2024-02-04 21:00:31

Last updated: 2024-02-04 22:00:30

Last updated: 2024-02-05 01:00:30

Last updated: 2024-02-05 07:00:33

Last updated: 2024-02-05 09:00:32

Last updated: 2024-02-05 11:00:34

Last updated: 2024-02-05 14:00:33

Last updated: 2024-02-05 17:00:31

Last updated: 2024-02-05 18:00:31

Last updated: 2024-02-06 04:00:30

Last updated: 2024-02-06 05:00:31

Last updated: 2024-02-06 10:00:32

Last updated: 2024-02-06 13:00:32

Last updated: 2024-02-06 15:00:32

Last updated: 2024-02-06 16:00:33

Last updated: 2024-02-06 17:00:33

Last updated: 2024-02-06 19:00:30

Last updated: 2024-02-06 21:00:33

Last updated: 2024-02-07 00:00:29

Last updated: 2024-02-07 03:00:29

Last updated: 2024-02-07 04:00:31

Last updated: 2024-02-07 06:00:30

Last updated: 2024-02-07 07:00:31

Last updated: 2024-02-07 08:00:31

Last updated: 2024-02-07 09:00:31

Last updated: 2024-02-07 10:00:31

Last updated: 2024-02-07 12:00:32

Last updated: 2024-02-07 14:00:32