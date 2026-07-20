# Oracle DBA Practice

Hands-on practice project covering Oracle 19c database administration and PL/SQL development on Oracle Linux.

## Environment
- Oracle Database 19c (Standard Edition 2)
- Oracle Linux 7
- SQL*Plus, RMAN

## What's covered
- **User & privilege management** — least-privilege access model (`practice` DBA user vs `reporter` read-only user)
- **Tablespace management** — custom tablespace creation and quota assignment
- **Backup & recovery** — RMAN cold backups
- **PL/SQL development**:
  - `give_raise` — procedure to update employee salary
  - `get_annual_salary` — function to calculate annual salary from monthly
  - `trg_salary_audit` — trigger for automatic salary change auditing

## Structure

sql/
  procedures/   -- stored procedures
  functions/    -- stored functions
  triggers/     -- triggers
  tables/       -- table + schema definitions

## Author
Kaliisa Stephen Covey — Information Systems, Makerere University

