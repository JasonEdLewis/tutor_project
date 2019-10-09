# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ===================== Admins ========================== #
lanee = Admin.create(username:"Lanee", password:"acb123")

# ===================== Students ========================== #
chad = Student.create(name: "John", grade: 8, school:"Grady", hours:10, guardian:"Jill ", home_no:"(914) 555-6666", cell: "(914) 333-4444", counselor_info:"jim jones, jones@jimjines.com", reason:"medical")

# ===================== Instructor ========================== #
Rolando = Instructor.create(name:"Rolando Arroz", subject:"Science", specialty: "biology", hours:30)

# ===================== Sessions ========================== #
seesion1 = Session.create(student_id: 1, instructor_id: 1, admin_id:1, date:"20080915T155300+0500", time:"9:30", home: true, subject:"biology", location:"123 Main street, Mt. Vernon, NY 10550", instruction:"Todd is a great student! ") 