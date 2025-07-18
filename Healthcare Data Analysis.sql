create database healthcare ;
use healthcare;

-- retrive all tabele information
select*from patients;
select*from appointments;
select*from billing;
select*from doctors;
select*from prescriptions;

-- get all appointments for aspecific patient
select*from appointments
where patient_id = 1;

-- presciptions for a specific appointments
select*from prescriptions
where appointment_id = 1;

-- get billing information for a specific appointments
select*from billing
where appointment_id =2;

-- list all appointments with billing status
select a.appointment_id,p.first_name as patient_first_name,p.last_name as patient_last_name,
d.first_name as doctor_first_name,d.last_name as doctor_last_name,
b.amount,b.payment_date,b.status
from appointments a
join patients p on a.patient_id=p.patient_id
join doctors d on a.doctor_id=d.doctor_id
join billing b on a.appointment_id=b.appointment_id;

-- find all paid billing
select*from billing
where status ='paid';

-- total amt billed &and total billed paid
select
(select sum(amount)from billing)as total_billed,
(select sum(amount)from billing where status= 'paid')as total_paid;

-- the number of appointments by specialty
select d.specialty,count(a.appointment_id)  as number_of_appointments
from appointments a
join doctors d on a.doctor_id=d.doctor_id
group by d.specialty;

-- find the most common reson for appointments
select reason,
count(*) as count
from appointments
group by reason
order by count desc;

-- list patients with their lastest appointment date
select p.patient_id,p.first_name,p.last_name,max(a.appointment_date)as lastest_appointment
from patients p
join appointments a on p.patient_id=a.patient_id
group by p.patient_id,p.first_name,p.last_name;

-- list all doc and the number of appointments they had
select d.doctor_id,d.first_name,d.last_name,max(a.appointment_date)as number_of_appointment
from doctors d
 left join appointments a on d.doctor_id=a.doctor_id
group by d.doctor_id,d.first_name,d.last_name;

-- who had appointments 
select distinct p.*
from patients p
join appointments a on p.patient_id=a.patient_id
where a.appointment_date >=curdate()-interval 30 day;

-- 
select pr.prescription_id,pr.medication,pr.dosage,pr.instructions
from prescriptions pr
join appointments a on pr.appointment_id=a.appointment_id
join billing b on a.appointment_id=b.appointment_id
where b.status ='pending';

