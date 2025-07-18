This project explores a simulated healthcare database using SQL to analyze patients, appointments, prescriptions, billing, and doctor activity. It includes a wide range of queries to derive insights on healthcare operations, financial performance, and patient behavior.

Database Schema

The project works with a relational database named `healthcare` consisting of the following key tables:

- `patients`: Patient demographic data
- `doctors`: Doctor profiles and specialties
- `appointments`: Appointment scheduling and reasons
- `prescriptions`: Medications and instructions linked to appointments
- `billing`: Financial transactions and payment status


Key SQL Analysis Areas

- Appointments
  - Retrieve all appointments for a specific patient or doctor
  - Count of appointments by medical specialty
  - Identify the most common appointment reasons
  - Find latest appointment date per patient

- Prescriptions
  - Extract prescriptions by appointment
  - Identify high-frequency medications and total dosages
  - List prescriptions linked to unpaid bills

- Billing
  - Total billed vs. paid amount
  - Find all pending or completed transactions
  - Track monthly payment trends
  - Analyze unpaid bills by patient

- Doctors & Patients
  - Total appointments per doctor
  - Patient demographics by gender
  - Patients without appointments
  - Doctors with most billed revenue

---

Sample Queries Included

- Join patients, doctors, and billing for comprehensive appointment summaries
- Use `GROUP BY`, `JOIN`, `DATE_FORMAT`, and subqueries for trend analysis
- Detect data gaps (e.g. unbilled appointments, patients without visits)

 Tools Used

- SQL (MySQL syntax)
- SQL IDEs: MySQL Workbench 

  Files

- `Healthcare Data Analysis.sql` – contains all queries and schema setup



1. Create the database using:
   ```sql
   CREATE DATABASE healthcare;
   USE healthcare;
 -contact Sakshi Sable//email//sakshisable703@gmail.com//www.linkedin.com/in/sakshi-sable-76002b342
 
