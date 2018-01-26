# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x Auditing

## Features
- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> Integrate with Heroku scheduler
- x Administrate admin dashboard
- x Email summary to managers for approval
- x Needs to be documented if employee did not log overtime
- x Block non admin and guest users
- x Create audit log for each text message
- x Need to update end_date when confirmed
- x Need to oupdate audit log status when an overtime is rejected
- x Home icon
- x Update buttons on employee homepage so they show on mobile
- x Update buttons to include timespan
- x Update button sort order on employee homepage
- x Remove unnecessary buttons from admin nav bars
- x Fix admin dashboard bug
- x Implement Honeybadger for error reporting
- x Implement new relic for keeping the site alive
- x Check on data issue and verify correct hours are being tracked

## UI
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update styles for Forms

## Refactor TODOS
- x Refactor user association test in post_spec
- x Refactor posts_form for admin user with status
- x Fix post_spec.rb:82 to use factories
- x Fix post_spec.rb:52 to have correct user reference and not require update
- x Integrate validation for phone attribute in User:
  - x No spaces of dashes
  - x Exactly 10 characters
  - x All characters must be numbers