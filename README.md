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

Last updated: 2024-02-07 15:00:30

Last updated: 2024-02-07 16:00:31

Last updated: 2024-02-07 17:00:31

Last updated: 2024-02-07 18:00:30

Last updated: 2024-02-07 19:00:30

Last updated: 2024-02-07 23:00:32

Last updated: 2024-02-08 02:00:28

Last updated: 2024-02-08 03:00:32

Last updated: 2024-02-08 04:00:29

Last updated: 2024-02-08 05:00:32

Last updated: 2024-02-08 08:00:32

Last updated: 2024-02-08 09:00:31

Last updated: 2024-02-08 12:00:29

Last updated: 2024-02-08 13:00:30

Last updated: 2024-02-08 14:00:29

Last updated: 2024-02-08 15:00:31

Last updated: 2024-02-08 16:00:32

Last updated: 2024-02-08 17:00:31

Last updated: 2024-02-08 18:00:29

Last updated: 2024-02-08 21:00:30

Last updated: 2024-02-09 00:00:30

Last updated: 2024-02-09 03:00:29

Last updated: 2024-02-09 13:00:31

Last updated: 2024-02-09 14:00:33

Last updated: 2024-02-09 18:00:32

Last updated: 2024-02-09 19:00:28

Last updated: 2024-02-09 20:00:29

Last updated: 2024-02-09 21:00:29

Last updated: 2024-02-09 22:00:28

Last updated: 2024-02-09 23:00:28

Last updated: 2024-02-10 00:00:33

Last updated: 2024-02-10 01:00:29

Last updated: 2024-02-10 06:00:29

Last updated: 2024-02-10 07:00:30

Last updated: 2024-02-10 09:00:32

Last updated: 2024-02-10 11:00:33

Last updated: 2024-02-10 12:00:31

Last updated: 2024-02-10 13:00:29

Last updated: 2024-02-10 15:00:29

Last updated: 2024-02-10 17:00:32

Last updated: 2024-02-10 18:00:32

Last updated: 2024-02-10 21:00:33

Last updated: 2024-02-10 23:00:34

Last updated: 2024-02-11 01:00:30

Last updated: 2024-02-11 02:00:31

Last updated: 2024-02-11 05:00:31

Last updated: 2024-02-11 06:00:32

Last updated: 2024-02-11 09:00:34

Last updated: 2024-02-11 11:00:32

Last updated: 2024-02-11 13:00:33

Last updated: 2024-02-11 15:00:32

Last updated: 2024-02-11 17:00:35

Last updated: 2024-02-11 18:00:33

Last updated: 2024-02-11 19:00:32

Last updated: 2024-02-12 03:00:33

Last updated: 2024-02-12 08:00:34

Last updated: 2024-02-12 11:00:35

Last updated: 2024-02-12 12:00:31

Last updated: 2024-02-12 14:00:34

Last updated: 2024-02-12 15:00:32

Last updated: 2024-02-12 16:00:32

Last updated: 2024-02-12 17:00:35

Last updated: 2024-02-12 19:00:32

Last updated: 2024-02-12 20:00:32

Last updated: 2024-02-12 21:00:34

Last updated: 2024-02-12 23:00:30

Last updated: 2024-02-13 02:00:32

Last updated: 2024-02-13 03:00:30

Last updated: 2024-02-13 04:00:32

Last updated: 2024-02-13 05:00:34

Last updated: 2024-02-13 07:00:34

Last updated: 2024-02-13 08:00:34

Last updated: 2024-02-13 10:00:32

Last updated: 2024-02-13 12:00:31

Last updated: 2024-02-13 13:00:34

Last updated: 2024-02-13 16:00:34

Last updated: 2024-02-13 20:00:32

Last updated: 2024-02-13 21:00:31

Last updated: 2024-02-13 22:00:31

Last updated: 2024-02-14 02:00:28

Last updated: 2024-02-14 03:00:32

Last updated: 2024-02-14 05:00:31

Last updated: 2024-02-14 06:00:30

Last updated: 2024-02-14 07:00:32

Last updated: 2024-02-14 08:00:34

Last updated: 2024-02-14 10:00:33

Last updated: 2024-02-14 13:00:32

Last updated: 2024-02-14 14:00:31

Last updated: 2024-02-14 16:00:34

Last updated: 2024-02-14 17:00:32

Last updated: 2024-02-14 20:00:31

Last updated: 2024-02-15 02:00:29

Last updated: 2024-02-15 03:00:30

Last updated: 2024-02-15 05:00:34

Last updated: 2024-02-15 10:00:32

Last updated: 2024-02-15 12:00:34

Last updated: 2024-02-15 15:00:32

Last updated: 2024-02-15 16:00:32

Last updated: 2024-02-15 20:00:32

Last updated: 2024-02-15 22:00:31

Last updated: 2024-02-15 23:00:31

Last updated: 2024-02-16 00:00:31

Last updated: 2024-02-16 03:00:31

Last updated: 2024-02-16 06:00:33

Last updated: 2024-02-16 07:00:32

Last updated: 2024-02-16 08:00:32

Last updated: 2024-02-16 09:00:36

Last updated: 2024-02-16 11:00:35

Last updated: 2024-02-16 13:00:36

Last updated: 2024-02-16 18:00:35

Last updated: 2024-02-17 01:00:30

Last updated: 2024-02-17 07:00:33

Last updated: 2024-02-17 08:00:32

Last updated: 2024-02-17 09:00:35

Last updated: 2024-02-17 10:00:35

Last updated: 2024-02-17 12:00:31

Last updated: 2024-02-17 13:00:34

Last updated: 2024-02-17 14:00:33

Last updated: 2024-02-17 15:00:32

Last updated: 2024-02-17 17:00:35

Last updated: 2024-02-17 18:00:35

Last updated: 2024-02-17 19:00:34

Last updated: 2024-02-17 20:00:34

Last updated: 2024-02-17 23:00:34

Last updated: 2024-02-18 02:00:33

Last updated: 2024-02-18 03:00:31

Last updated: 2024-02-18 04:00:32

Last updated: 2024-02-18 06:00:33

Last updated: 2024-02-18 07:00:34

Last updated: 2024-02-18 08:00:32

Last updated: 2024-02-18 13:00:34

Last updated: 2024-02-18 15:00:33

Last updated: 2024-02-18 16:00:35

Last updated: 2024-02-18 20:00:34

Last updated: 2024-02-18 22:00:31

Last updated: 2024-02-19 00:00:32

Last updated: 2024-02-19 01:00:32

Last updated: 2024-02-19 03:00:27

Last updated: 2024-02-19 04:00:33

Last updated: 2024-02-19 05:00:32

Last updated: 2024-02-19 06:00:33

Last updated: 2024-02-19 07:00:35

Last updated: 2024-02-19 08:00:32

Last updated: 2024-02-19 13:00:35

Last updated: 2024-02-19 14:00:36

Last updated: 2024-02-19 18:00:34

Last updated: 2024-02-19 19:00:33

Last updated: 2024-02-19 20:00:34

Last updated: 2024-02-19 22:00:32

Last updated: 2024-02-20 00:00:34

Last updated: 2024-02-20 01:00:33

Last updated: 2024-02-20 02:00:31

Last updated: 2024-02-20 05:00:34

Last updated: 2024-02-20 06:00:34

Last updated: 2024-02-20 07:00:32

Last updated: 2024-02-20 10:00:34

Last updated: 2024-02-20 11:00:34

Last updated: 2024-02-20 12:00:33

Last updated: 2024-02-20 13:00:31

Last updated: 2024-02-20 14:00:34

Last updated: 2024-02-20 15:00:33

Last updated: 2024-02-20 19:00:34

Last updated: 2024-02-20 20:00:32

Last updated: 2024-02-20 21:00:32

Last updated: 2024-02-21 04:00:31

Last updated: 2024-02-21 05:00:31

Last updated: 2024-02-21 06:00:31

Last updated: 2024-02-21 07:00:30

Last updated: 2024-02-21 10:00:35

Last updated: 2024-02-21 12:00:34

Last updated: 2024-02-21 13:00:32

Last updated: 2024-02-21 15:00:33

Last updated: 2024-02-21 16:00:35

Last updated: 2024-02-21 17:00:37

Last updated: 2024-02-21 20:00:33

Last updated: 2024-02-22 01:00:32

Last updated: 2024-02-22 02:00:33

Last updated: 2024-02-22 07:00:32

Last updated: 2024-02-22 08:00:35

Last updated: 2024-02-22 10:00:34

Last updated: 2024-02-22 12:00:37

Last updated: 2024-02-22 14:00:33

Last updated: 2024-02-22 15:00:35

Last updated: 2024-02-22 16:00:34

Last updated: 2024-02-22 19:00:35

Last updated: 2024-02-22 22:00:34

Last updated: 2024-02-23 00:00:37

Last updated: 2024-02-23 02:00:33

Last updated: 2024-02-23 04:00:32

Last updated: 2024-02-23 05:00:35

Last updated: 2024-02-23 06:00:30

Last updated: 2024-02-23 07:00:35

Last updated: 2024-02-23 08:00:47

Last updated: 2024-02-23 09:00:37

Last updated: 2024-02-23 11:00:36

Last updated: 2024-02-23 12:00:36

Last updated: 2024-02-23 15:00:34

Last updated: 2024-02-23 17:00:37

Last updated: 2024-02-23 20:00:33

Last updated: 2024-02-23 22:00:31

Last updated: 2024-02-23 23:00:36

Last updated: 2024-02-24 00:00:35

Last updated: 2024-02-24 04:00:33

Last updated: 2024-02-24 07:00:32

Last updated: 2024-02-24 08:00:35

Last updated: 2024-02-24 11:00:37

Last updated: 2024-02-24 12:00:35

Last updated: 2024-02-24 13:00:35

Last updated: 2024-02-24 15:00:35

Last updated: 2024-02-24 16:00:34

Last updated: 2024-02-24 22:00:34

Last updated: 2024-02-24 23:00:37

Last updated: 2024-02-25 03:00:34

Last updated: 2024-02-25 05:00:35

Last updated: 2024-02-25 06:00:35

Last updated: 2024-02-25 07:00:35

Last updated: 2024-02-25 08:00:35

Last updated: 2024-02-25 09:00:35

Last updated: 2024-02-25 10:00:37

Last updated: 2024-02-25 11:00:36

Last updated: 2024-02-25 12:00:36

Last updated: 2024-02-25 14:00:36

Last updated: 2024-02-25 16:00:38

Last updated: 2024-02-25 17:00:36

Last updated: 2024-02-25 19:00:34

Last updated: 2024-02-25 21:00:35

Last updated: 2024-02-25 22:00:34

Last updated: 2024-02-25 23:00:33

Last updated: 2024-02-26 00:00:35

Last updated: 2024-02-26 02:00:33

Last updated: 2024-02-26 05:00:35

Last updated: 2024-02-26 10:00:38

Last updated: 2024-02-26 11:00:38

Last updated: 2024-02-26 14:00:38

Last updated: 2024-02-26 15:00:37

Last updated: 2024-02-26 16:00:39

Last updated: 2024-02-26 18:00:36

Last updated: 2024-02-26 20:00:34

Last updated: 2024-02-26 21:00:34

Last updated: 2024-02-26 22:00:35

Last updated: 2024-02-27 00:00:35

Last updated: 2024-02-27 06:00:36

Last updated: 2024-02-27 10:00:37

Last updated: 2024-02-27 11:00:36

Last updated: 2024-02-27 15:00:34

Last updated: 2024-02-27 16:00:35

Last updated: 2024-02-27 17:00:37

Last updated: 2024-02-27 18:00:33

Last updated: 2024-02-27 20:00:37

Last updated: 2024-02-27 22:00:35

Last updated: 2024-02-28 00:00:35

Last updated: 2024-02-28 01:00:35

Last updated: 2024-02-28 02:00:34

Last updated: 2024-02-28 03:00:33

Last updated: 2024-02-28 04:00:34

Last updated: 2024-02-28 05:00:37

Last updated: 2024-02-28 07:00:36

Last updated: 2024-02-28 08:00:35

Last updated: 2024-02-28 11:00:38

Last updated: 2024-02-28 12:00:35

Last updated: 2024-02-28 13:00:37

Last updated: 2024-02-28 15:00:36

Last updated: 2024-02-28 17:00:37

Last updated: 2024-02-28 19:00:35

Last updated: 2024-02-28 21:00:34

Last updated: 2024-02-28 22:00:37

Last updated: 2024-02-29 00:00:36

Last updated: 2024-02-29 03:00:33

Last updated: 2024-02-29 04:00:35

Last updated: 2024-02-29 06:00:34

Last updated: 2024-02-29 07:00:36

Last updated: 2024-02-29 08:00:36

Last updated: 2024-02-29 09:00:34

Last updated: 2024-02-29 10:00:36

Last updated: 2024-02-29 11:00:35

Last updated: 2024-02-29 12:00:35

Last updated: 2024-02-29 13:00:33

Last updated: 2024-02-29 14:00:37

Last updated: 2024-02-29 15:00:32

Last updated: 2024-02-29 17:00:36

Last updated: 2024-02-29 18:00:36

Last updated: 2024-02-29 21:00:35

Last updated: 2024-02-29 23:00:37

Last updated: 2024-03-01 01:00:43

Last updated: 2024-03-01 02:00:46

Last updated: 2024-03-01 03:00:43

Last updated: 2024-03-01 04:00:43

Last updated: 2024-03-01 05:00:44

Last updated: 2024-03-01 06:00:42

Last updated: 2024-03-01 08:00:43

Last updated: 2024-03-01 10:00:44

Last updated: 2024-03-01 11:00:44

Last updated: 2024-03-01 14:00:42

Last updated: 2024-03-01 20:00:41

Last updated: 2024-03-01 21:00:41

Last updated: 2024-03-01 22:00:42

Last updated: 2024-03-01 23:00:45

Last updated: 2024-03-02 01:00:43

Last updated: 2024-03-02 03:00:42

Last updated: 2024-03-02 04:00:39

Last updated: 2024-03-02 11:00:32

Last updated: 2024-03-02 13:00:31

Last updated: 2024-03-02 16:00:32

Last updated: 2024-03-02 17:00:35

Last updated: 2024-03-02 19:00:32

Last updated: 2024-03-02 21:00:32

Last updated: 2024-03-03 00:00:33

Last updated: 2024-03-03 04:00:30

Last updated: 2024-03-03 05:00:33

Last updated: 2024-03-03 06:00:32

Last updated: 2024-03-03 07:00:33

Last updated: 2024-03-03 09:00:32

Last updated: 2024-03-03 12:00:33

Last updated: 2024-03-03 14:00:33

Last updated: 2024-03-03 15:00:32

Last updated: 2024-03-03 16:00:35

Last updated: 2024-03-03 19:00:33

Last updated: 2024-03-04 01:00:35

Last updated: 2024-03-04 02:00:33

Last updated: 2024-03-04 06:00:34