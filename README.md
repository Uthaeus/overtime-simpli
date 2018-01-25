# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- Auditing

## Features
- Approval Workflow
- SMS Sending -> link to approval or overtime input -> Integrate with Heroku scheduler
- x Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- x Block non admin and guest users
- Create audit log for each text message

## UI
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update styles for Forms

## Refactor TODOS
- x Refactor user association test in post_spec
- x Refactor posts_form for admin user with status
- x Fix post_spec.rb:82 to use factories
- x Fix post_spec.rb:52 to have correct user reference and not require update
- Integrate validation for phone attribute in User:
  - x No spaces of dashes
  - x Exactly 10 characters
  - x All characters must be numbers