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
- Need to update end_date when confirmed
- Need to oupdate audit log status when an overtime is rejected
- Home icon
- Update buttons on employee homepage so they show on mobile
- Update buttons to include timespan
- Update button sort order on employee homepage
- Remove unnecessary buttons from admin nav bars
- Fix admin dashboard bug
- Implement Honeybadger for error reporting
- Implement new relic for keeping the site alive
- Check on data issue and verify correct hours are being tracked

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