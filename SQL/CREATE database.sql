CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE sales (
  id              INT AUTO_INCREMENT PRIMARY KEY,
  fees_status     VARCHAR(10),
  day             INT,
  month           VARCHAR(10),
  Advertising_Channel    VARCHAR(30),
  Advertisement   VARCHAR(20),
  Enrolled_Courses INT,
  Paid_Fees        BIGINT,
  Number_of_phone_calls      INT,
  Average_call_duration DECIMAL(10,4),
  Training_Models   VARCHAR(10),
  Training_Levels   VARCHAR(15),
  Area_Code        VARCHAR(5),
  Sales_Team       VARCHAR(20),
  Consultant       VARCHAR(20)
);