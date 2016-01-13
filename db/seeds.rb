# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# PersonalDatum.create!( myname: "吳秉勳" )

# 個人資料
User.create(email: "johnwu2613@gmail.com", name: "吳秉勳") # , password: "771115"

PersonalDatum.create(category: "name", content_en: "Ping-Hsun Wu", content_tw: "吳秉勳")

Education.create(
	category: "education", 
	content_en: "B.S., the department of Information Management, Chang Gung University", 
	content_tw: "長庚大學 資訊管理學系 學士",
	s_year: 2007,
	s_month_en: 'Sep',
	s_month_tw: '九月',
	e_year: 2011,
	e_month_en: 'Jun',
	e_month_tw: '六月',
	)
Education.create(
	category: "education", 
	content_en: "M.S., the department of Information Management, Chang Gung University", 
	content_tw: "長庚大學 資訊管理學系 碩士",
	s_year: 2011,
	s_month_en: 'Sep',
	s_month_tw: '九月',
	e_year: 2013,
	e_month_en: 'Jun',
	e_month_tw: '六月',
	)

# 一般常用標題
CommonTitle.create(category: "study", title_en: "Study Process", title_tw: "求學時期")
CommonTitle.create(category: "job_title", title_en: "Software Engineer", title_tw: "軟體工程師")

# 月份
Month.create(name_en: "Sep", name_tw: "九月")
Month.create(name_en: "June", name_tw: "六月")

# 技能
Skill.create(category: "Frontend", category_name_en: "Frontend", category_name_tw: "前端", name: "JavaScript")
Skill.create(category: "Frontend", category_name_en: "Frontend", category_name_tw: "前端", name: "CSS")
Skill.create(category: "Backend", category_name_en: "Backend", category_name_tw: "後端", name: "Ruby on rails")
Skill.create(category: "Server", category_name_en: "Server", category_name_tw: "伺服器", name: "Linux Server")
Skill.create(category: "Version", category_name_en: "Version", category_name_tw: "版本控制", name: "Git")
Skill.create(category: "Database", category_name_en: "Database", category_name_tw: "資料庫", name: "MySQL")
Skill.create(category: "Database", category_name_en: "Database", category_name_tw: "資料庫", name: "PostgreSQL")

# 專案
Project.create(
	category: "cathay",
	company_en: "Cathay United Bank, IT Department", 
	project_name_en: "Response for", 
	project_description_en: "Maintain PostMail system, Easy Loan system, Auto upload report form system. Convert old version application (vb6) to c#.",
	company_tw: "國泰世華銀行-資訊部", 
	project_name_tw: "主要負責", 
	project_description_tw: "開發/維護郵務系統、簡易貸款系統及主機報表備份系統。將舊語言程式 (vb6) 轉換成 c#。",
	s_year: 2014,
	s_month_en: 'Sep',
	s_month_tw: '九月',
	e_year: 2015,
	e_month_en: 'Jun',
	e_month_tw: '六月',)

Project.create(
	category: "iii",
	company_en: "Institute for Information Industry, IDEAS", 
	project_name_en: "DevOps System", 
	project_description_en: "Provide a website for Institute for Information Industry IDEAS department, integrate with Redmine, Gitlab, Jenkins and Puppet.",
	company_tw: "資訊工業策進會-創新服務研究所", 
	project_name_tw: "DevOps 系統", 
	project_description_tw: "建置DevOps全方位整合網站，與Redmine, Gitlab, Jenkins 及 Puppet等系統進行整合，提供所內使用。",
	s_year: 2015,
	s_month_en: 'Oct',
	s_month_tw: '十月',
	e_year: 2016,
	e_month_en: 'Feb',
	e_month_tw: '二月',
	)

Project.create(
	category: "iii",
	company_en: "Institute for Information Industry, IDEAS", 
	project_name_en: "Beacon Management", 
	project_description_en: "We design an easy way to manage beacons, setting push messages and upload file, and deploy their beacon on their plan or Google Map through website or Android APP.",
	company_tw: "資訊工業策進會-創新服務研究所", 
	project_name_tw: "Beacon 管理後台", 
	project_description_tw: "設計簡易Beacon佈署/推播訊息管理平台，使用者可自由上傳檔案/地圖，透過本系統所提供之Android APP佈署Beacon, 並透過介面設定推播訊息排程。",
	s_year: 2015,
	s_month_en: 'Jun',
	s_month_tw: '六月',
	e_year: 2015,
	e_month_en: 'Oct',
	e_month_tw: '十月',
	)