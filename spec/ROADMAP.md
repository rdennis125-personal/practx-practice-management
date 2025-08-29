# Solution Roadmap

This document outlines major projects within the practice-management solution to guide the design of a future-state API specification. Each item will be revisited as we evaluate how its functionality influences external interface requirements.

## Core Application
- **OpenDental** – WinForms client containing user-facing workflows for clinical, administrative, and reporting tasks.
- **OpenDentalWpf** – WPF components providing UI controls and dialogs.
- **OpenDentalGraph** – Graph-based features for visualizing relationships and dependencies.

## Business Layer
- **OpenDentBusiness** – Central business logic and domain models; primary source for patient, appointment, and billing concepts.
- **CodeBase** / **CodeBaseStandard** – Shared infrastructure utilities used across projects.
- **DataConnectionBase** – Low-level database connection helpers and abstractions.
- **DatabaseIntegrityCheck** – Utilities for validating database consistency.

## Services and Integrations
- **OpenDentHL7** – Handles HL7 messaging for interoperability with external systems.
- **OpenDentalCloud** – Cloud-hosted service endpoints for remote operations.
- **OpenDentalServer** – Service host enabling remote client connections.
- **MobileWeb** – Web interface for mobile usage, exposing a subset of functionality.
- **ServiceManager** – Manages Windows services related to automated tasks.

## Tools and Utilities
- **xCrudGenerator** – Generates CRUD scaffolding based on database schema.
- **QueryExecutor** – Executes custom SQL queries for diagnostics or maintenance.
- **RdlDesign / RdlEngine / RdlViewer** – Components for building and rendering reports.
- **SlowQueryLogTool** – Analyzes and reports slow database queries.

## Testing
- **UnitTests** and **UnitTestsCore** – Automated tests covering business logic and core components.

## Database and Scripts
- **db** – Database project containing schema definitions and migration scripts.
- **Packaging / scripts / batches** – Deployment and build scripts.

## Planned Evaluation
Each project will be reviewed to determine necessary endpoints for a React + TypeScript frontend. This roadmap will be updated with findings and design decisions as analysis progresses.

