Create Table Projects(
  project_id serial primary key,
  project_name varchar (100),
  client_name varchar (100),
  project_type varchar (100),
  location varchar (50),
  start_date date,
  estimate_budget decimal,
  status varchar (50),
  engineer_id int,
  architect_id int
)

select * from Projects

Insert into Projects (project_name,client_name,project_type,location,start_date,estimate_budget,status,engineer_id,
architect_id)
values
('Sunset Boulevard Revamp', 'Sunshine Corp', 'Infrastructure', 'Los Angeles, CA', '2023-01-15', 1200000.00, 'In Progress', 101, 201),
('Greenfield Tower', 'EcoBuild Ltd.', 'Commercial', 'Austin, TX', '2022-05-20', 2500000.00, 'Completed', 102, 202),
('Lakeview Apartments', 'Urban Living', 'Residential', 'Seattle, WA', '2023-03-10', 1800000.00, 'Planning', 103, 203),
('Skyline Plaza', 'Highrise Inc.', 'Commercial', 'New York, NY', '2021-11-30', 3000000.00, 'Completed', 104, 204),
('Riverside Bridge', 'CityWorks', 'Infrastructure', 'Portland, OR', '2022-08-22', 500000.00, 'In Progress', 105, 205),
('Coastal Wind Farm', 'Green Energy LLC', 'Energy', 'San Francisco, CA', '2023-04-25', 3200000.00, 'Planning', 106, 206),
('Downtown Mall', 'Retail Giant', 'Commercial', 'Chicago, IL', '2021-09-15', 2750000.00, 'Completed', 107, 207),
('Mountain Resort', 'Luxury Escapes', 'Hospitality', 'Aspen, CO', '2023-06-05', 1500000.00, 'In Progress', 108, 208),
('Eastside Park', 'City Greens', 'Recreational', 'Boston, MA', '2022-10-10', 600000.00, 'Completed', 109, 209),
('Tech Campus', 'Innovatech', 'Commercial', 'San Jose, CA', '2021-07-25', 2200000.00, 'In Progress', 110, 210),
('Historic Museum', 'Cultural Heritage', 'Institutional', 'Philadelphia, PA', '2023-02-14', 1400000.00, 'Planning', 111, 211),
('Seaside Hotel', 'Vacation Stays', 'Hospitality', 'Miami, FL', '2022-12-01', 2000000.00, 'In Progress', 112, 212),
('Metro Station', 'Urban Transit', 'Infrastructure', 'Washington, DC', '2021-04-18', 800000.00, 'Completed', 113, 213),
('Solar Power Plant', 'SunPower Inc.', 'Energy', 'Phoenix, AZ', '2023-05-29', 3500000.00, 'Planning', 114, 214),
('Central Library', 'City Education', 'Institutional', 'Denver, CO', '2022-07-12', 1100000.00, 'Completed', 115, 215),
('Lakeside Villas', 'Home Haven', 'Residential', 'Orlando, FL', '2023-03-22', 1700000.00, 'Planning', 116, 216),
('Industrial Park', 'Factory Builders', 'Industrial', 'Houston, TX', '2021-12-15', 2600000.00, 'In Progress', 117, 217),
('Urban Renewal Project', 'City Development', 'Residential', 'Detroit, MI', '2022-06-09', 1300000.00, 'Completed', 118, 218),
('Suburban Housing', 'Family Homes', 'Residential', 'Charlotte, NC', '2023-01-30', 1900000.00, 'Planning', 119, 219),
('Northside Stadium', 'Sports Authority', 'Recreational', 'Dallas, TX', '2022-11-05', 2400000.00, 'In Progress', 120, 220);

Create Table Material(
  material_id serial primary key,
  material_name varchar (100),
  supplier_name varchar (50),
  material_type varchar (100),
  unit_cost decimal,
  project_id int,
  foreign key (project_id) references Projects(project_id)
)

select * from Material

INSERT INTO Material (material_name, supplier_name, material_type, unit_cost, project_id)
values
('Steel Beams', 'ABC Supplies', 'Construction Material', 120.50, 1),
('Concrete Mix', 'XYZ Cement Co.', 'Construction Material', 95.00, 2),
('Bricks', 'BrickMasters', 'Construction Material', 0.50, 1),
('Glass Panels', 'ClearView Glass', 'Finishing Material', 200.00, 3),
('Wiring', 'Electric Essentials', 'Electrical Material', 75.25, 4),
('Paint', 'ColorWorks', 'Finishing Material', 25.75, 2),
('Pipes', 'PlumbPerfect', 'Plumbing Material', 15.00, 1),
('Tiles', 'TileExperts', 'Finishing Material', 30.00, 3),
('Insulation', 'WarmHouse', 'Construction Material', 8.50, 5),
('Lumber', 'WoodWorld', 'Construction Material', 50.00, 4),
('Drywall', 'SheetRock Suppliers', 'Construction Material', 10.00, 2),
('Roofing Shingles', 'TopRoof', 'Construction Material', 120.00, 1),
('Nails', 'Fasteners Inc.', 'Construction Material', 0.10, 2),
('Adhesive', 'Sticky Solutions', 'Construction Material', 5.00, 3),
('Plywood', 'BoardMasters', 'Construction Material', 22.00, 4),
('Lighting Fixtures', 'Bright Lights Co.', 'Electrical Material', 75.00, 5),
('PVC Pipes', 'PlumbPerfect', 'Plumbing Material', 12.00, 3),
('Sand', 'BulkMaterials Co.', 'Construction Material', 0.25, 1),
('Gravel', 'GravelWorks', 'Construction Material', 0.75, 2),
('Copper Wiring', 'Electric Essentials', 'Electrical Material', 80.00, 4);

Create Table Test(
  test_id serial primary key,
  project_id int,
  material_id int,
  test_type varchar (100),
  test_date date,
  test_result decimal,
  foreign key (project_id) references Projects(project_id)
)

select * from test

INSERT INTO test (project_id,material_id,test_type, test_date, test_result) 
VALUES
(1, 101, 'Compression', '2023-01-15', 150.50),
(2, 102, 'Tensile', '2023-02-18', 200.75),
(3, 103, 'Flexural', '2023-03-20', 175.25),
(4, 104, 'Shear', '2023-04-22', 190.00),
(5, 105, 'Impact', '2023-05-25', 210.50),
(1, 106, 'Hardness', '2023-06-15', 300.80),
(2, 107, 'Fatigue', '2023-07-18', 250.60),
(3, 108, 'Creep', '2023-08-20', 270.40),
(4, 109, 'Fracture Toughness', '2023-09-22', 180.30),
(5, 110, 'Thermal Expansion', '2023-10-25', 220.90),
(1, 111, 'Corrosion', '2023-11-15', 230.50),
(2, 112, 'Abrasion', '2023-12-18', 240.75),
(3, 113, 'Adhesion', '2024-01-20', 260.25),
(4, 114, 'Chemical Resistance', '2024-02-22', 290.00),
(5, 115, 'UV Resistance', '2024-03-25', 310.50),
(1, 116, 'Conductivity', '2024-04-15', 330.80),
(2, 117, 'Thermal Conductivity', '2024-05-18', 350.60),
(3, 118, 'Electrical Conductivity', '2024-06-20', 370.40),
(4, 119, 'Magnetic Permeability', '2024-07-22', 390.30),
(5, 120, 'Optical Clarity', '2024-08-25', 410.90);

Create Table Employees(
  emp_id serial primary key,
  emp_name varchar (100),
  designation varchar (50),
  department varchar (100),
  experienein_year int,
  highest_qualification varchar (100),
  salary decimal,
  project_id int,
  foreign key (project_id) references Projects(project_id)
);

select * from Employees

INSERT INTO Employees (emp_name,designation,department, experienein_year, highest_qualification, salary, project_id)
VALUES
('John Doe', 'Civil Engineer', 'Construction', 5, 'Bachelor of Engineering (Civil)', 75000.00, 1),
('Jane Smith', 'Project Manager', 'Infrastructure', 10, 'Master of Science (Civil Engineering)', 120000.00, 2),
('Michael Lee', 'Site Supervisor', 'Building', 8, 'Diploma in Civil Engineering', 50000.00, 3),
('Sarah Garcia', 'Structural Engineer', 'Design', 7, 'Bachelor of Engineering (Civil)', 85000.00, 4),
('David Hernandez', 'Drafting Technician', 'CAD', 3, 'Associate Degree in Civil Engineering Technology', 35000.00, 5),
('Amanda Rodriguez', 'Quantity Surveyor', 'Estimation', 4, 'Bachelor of Science (Construction Management)', 60000.00, 1),
('Christopher Allen', 'Health and Safety Officer', 'Safety', 6, 'NEBOSH Construction Certificate', 45000.00, 6),
('Jennifer Williams', 'Environmental Engineer', 'Sustainability', 9, 'Master of Engineering (Environmental Engineering)', 100000.00, 2),
('Brian Johnson', 'Building Inspector', 'Quality Control', 12, 'Chartered Engineer (Civil)', 135000.00, 7),
('Susan Brown', 'Civil Planner', 'Urban Development', 8, 'Master of City Planning', 90000.00, 4),
('Daniel Miller', 'Geotechnical Engineer', 'Soil Mechanics', 15, 'Doctor of Philosophy (Geotechnical Engineering)', 150000.00, 8),
('Elizabeth Moore', 'Water Resources Engineer', 'Hydraulics', 11, 'Master of Science (Water Resources Engineering)', 110000.00, 5),
('Richard Lewis', 'Transportation Engineer', 'Traffic', 7, 'Bachelor of Engineering (Civil)', 80000.00, 3),
('Patricia Clark', 'Construction Manager', 'Project Delivery', 13, 'Master of Business Administration (Construction)', 140000.00, 9),
('Ronald Garcia', 'Cost Estimator', 'Budgeting', 5, 'Bachelor of Science (Construction Science)', 65000.00, 6),
('Kimberly Allen', 'Materials Engineer', 'Testing', 10, 'Master of Science (Materials Science)', 105000.00, 10),
('Steven Baker', 'Fire Safety Engineer', 'Fire Protection', 8, 'Bachelor of Engineering (Fire Engineering)', 95000.00, 7),
('Ashley Hernandez', 'Land Surveyor', 'Site Mapping', 4, 'Associate Degree in Surveying Technology', 40000.00, 2),
('Kevin Rodriguez', 'Building Code Analyst', 'Regulations', 6, 'Bachelor of Science (Architectural Engineering)', 70000.00, 8);

select * from Projects
select * from Material
select * from Test
select * from Employees

-- 1) group by,having, order by 

select project_name,location,min(estimate_budget) from Projects
group by project_name,location
having min(estimate_budget) > 150000
order by min(estimate_budget)

-- 2) join , having , group by 

select p.project_name,p.project_type,p.estimate_budget,m.material_name,m.unit_cost,m.supplier_name from Projects as p
inner join Material as m
on p.project_id = m.material_id
group by p.project_name,p.project_type,p.estimate_budget,m.material_name,m.unit_cost,m.supplier_name 
having p.estimate_budget > 50


-- 3) window function 
-- a) window function using rank 

select material_type,unit_cost,
rank() over(
     partition by unit_cost
	 order by material_id
),material_name
from Material

-- b) window function using row number

select location, row_number()
over(
     partition by location
    )
from Projects

-- c) window function using dense rank

select material_name,unit_cost,dense_rank()
over(partition by material_name
	order by unit_cost desc) from Material
where unit_cost between 30 and 180	

-- 4) subquery

select * from Projects where project_id in(
  select distinct material_id from material where unit_cost >30
)

-- 5) join with where

select * from Projects as p
inner join Material as m
on p.project_id = m.material_id
inner join Test as t
on m.material_id = t.test_id
inner join employees as e
on t.test_id = e.emp_id
where project_type = 'Commercial'

-- 6) 3 table join

select * from Projects as p
inner join Material as m
on p.project_id = m.material_id
inner join Test as t
on m.material_id = t.test_id

-- 7) create a new table using select query 

create table  projects_copy as
 select project_id,client_name,project_name,location,status from Projects
 
select * from projects_copy

select * from Projects
select * from Material
select * from Test
select * from Employees


