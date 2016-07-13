# Tufts Concerns

## Rake Tasks
* <tt>rake tufts:migrate_elections</tt>
    - Migrates election records, currently only migrates a single record
    - To rerun migrations you have to delete migration_report/*.json
* <tt>tufts:clean4</tt>
    - Deletes *everything* from the Fedora 4 repository
    - TODO: Warn on deletion is disable in non-development environments

## Implementation Notes
* Supports LDAP
* Supports user impersonation (for all users right now in dev)
    - Clean up user impersonation for admins only like Trove    


## Environment Notes
* Ruby version
    - Currently using 2.2.1


## TODO: Doc creation topics
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


