--Creating tables and PK and FK
CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

CREATE TABLE "dep_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dep_manager" ADD CONSTRAINT "fk_dep_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dep_manager" ADD CONSTRAINT "fk_dep_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


--Testing tables
SELECT * FROM dep_manager
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

