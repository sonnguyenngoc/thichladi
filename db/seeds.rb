# Create default admin user for developing
Erp::User.destroy_all
puts "Create default admin user"
Erp::User.create(
  email: "admin@thichladi.info",
  password: "aA456321@",
  name: "Du Lịch Khám Phá Mới",
  backend_access: true,
  confirmed_at: Time.now-1.day,
  active: true
) if Erp::User.where(email: "admin@thichladi.info").empty?