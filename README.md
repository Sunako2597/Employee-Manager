**Employee Management System Database**

This project is a simple university-level database assignment. It includes a user-friendly interface and basic SQL commands, developed using resources like YouTube tutorials, Google, GitHub, Stack Overflow, and freely available online templates.

### Key Features:

**Admin Panel:**
- Separate login systems for Admins and Employees.
- Admins can:
  - Add new employees.
  - Assign individual projects.
  - View salaries and project statuses.
  - Grade projects and update the leaderboard.
  - Award bonuses based on project grades.

**Employee Panel:**
- Employees can:
  - View the leaderboard, pending projects, and salary details.
  - Access and update their profile information.
  - Submit project deliverables.
  - Apply for leave.

### Technologies Used:
- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP,MySQL

The project includes an **ER Diagram** and **Relational Schema** provided as PDFs.

### Installation Guide:
1. Clone the repository to your localhost directory.
2. Launch XAMPP (or a similar service) and start **Apache** and **MySQL**.
3. Navigate to **phpMyAdmin** and:
   - Create a database named `370project`.
   - Import the provided `370project.sql` file.
4. Access the site via your localhost.

### Login Credentials:
**Admin Panel:**
- **Username:** `admin`
- **Password:** `admin`

**Employee Panel:**
- **Username:** Employee's email address
- **Password:** `1234` (default, can be changed by the user).
