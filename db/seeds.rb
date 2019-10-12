# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ===================== Admins ========================== #
lanee = Admin.create(username:"Lanee", password:"acb123")
Jason = Admin.create(username:"Jason", password:"acb123")
Hy = Admin.create(username:"Hy", password:"acb123")


# ===================== Students ========================== #
chad = Student.create(name: "Chad", grade: 10, school:"Thorton", hours:8, guardian:"Betty ", home_no:"(646) 123-4567", cell: "(917) 398-4815", counselor_info:"Frank Harris, frank@Harris.com", reason:"suspension")

john = Student.create(name: "John", grade: 8, school:"Grady", hours:10, guardian:"Jill ", home_no:"(914) 555-6666", cell: "(914) 333-4444", counselor_info:"jim jones, jones@jimjines.com", reason:"medical")

walter = Student.create(name: "walter", grade: 11, school:"WP High School", hours:8, guardian:"Jill ", home_no:"(845) 993-0749", cell: "(845)303-9984", counselor_info:"Ron Miller, Ron@Miller.com", reason:"transfer")

# # ===================== Instructor ========================== #
Rolando = Instructor.create(name:"Rolando Rodrigez", subject:"Science", specialty: "biology", hours:30)
Hippolita = Instructor.create(name:"Hippolita Johnson", subject:"English", specialty: "Novels", hours:30)
Ken = Instructor.create(name:"Ken Shultz", subject:"Math", specialty: "Algebra", hours:30)

# # ===================== Sessions ========================== #
seesion1 = Session.create(student_id: 1, instructor_id: 1, admin_id:1, date:"20080915T155300+0500", time:"9:30", home: true, subject:"biology", location:"123 Main street, Mt. Vernon, NY 10550", instruction:"Todd is a great student! ") 

seesion2 = Session.create(student_id:2, instructor_id: 3, admin_id:2, date:"20080915T155300+0500", time:"11:30", home: true, subject:"biology", location:"123 Main street, Mt. Vernon, NY 10550", instruction:"John needs double time ") 

seesion3 = Session.create(student_id:3, instructor_id: 2, admin_id:3, date:"20080915T155300+0500", time:"5:30", home: false, subject:"biology", location:"379 Brook street, Pelham, NY 10650", instruction:"Walter needs help ") 
