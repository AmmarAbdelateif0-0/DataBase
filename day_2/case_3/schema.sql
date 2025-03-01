CREATE TABLE Sales_office (
    office_id INT PRIMARY KEY,
    location VARCHAR(20),
    manager_id INT UNIQUE
);

CREATE TABLE Employee (
    Employee_id INT PRIMARY KEY,
    Employee_name VARCHAR(20),
    office_id INT,
    FOREIGN KEY (office_id) REFERENCES Sales_office(office_id)
);

ALTER TABLE Sales_office
ADD CONSTRAINT FK_Manager FOREIGN KEY (manager_id) REFERENCES Employee(Employee_id);
