# Overtime App

## Key requirement: Need documentation that clients submitted requisite data and the ability to notify of upcoming expirations.

## Models
- x Post -> title:string, date_received:date, estimated_expiration:date
- x User -> Devise
- x AdminUser -> STI
- x Auditing

## Features
- x Approval Workflow
- x SMS Sending -> link to approval or post input -> Integrate with Heroku scheduler
- x Administrate admin dashboard
- x Email summary to managers for approval
- x Block non admin and guest users
- x Need to update end_date when confirmed
- x Need to oupdate audit log status when a post is rejected
- x Home icon
- x Update buttons on client homepage so they show on mobile
- x Update buttons to include timespan
- x Update button sort order on client homepage
- x Remove unnecessary buttons from admin nav bars
- x Fix admin dashboard bug
- x Implement new relic for keeping the site alive

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
  - x No spaces or dashes
  - x Exactly 10 characters
  - x All characters must be numbers