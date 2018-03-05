namespace :notification do
  desc "Sends SMS notification to clients concerning requisites."
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all 
      notification_message = "Please long into the client management dashboard to update requisite status: "
      expiration_message = "You have a requisite expiration approaching. Please log in and check current status: "
      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate over the list of admin users
    # 4. Send the email to each admin
    submitted_posts = Post.submitted 
    admin_users = AdminUser.all 

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin.email).deliver_later
      end
    end
  end

end
