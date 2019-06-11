3.times do |topic|
	Topic.create!(
		title:"Topic #{topic}"
		)
end

10.times do |blog|
	Blog.create!(
		title:"My Blog Post #{blog}",
		body: "Send up perps  2ñoiuhygt uyty
			   doejor joeijfoiejoifj eiojriojerioj
			   jhgghj kjuhytg hkijuh kijuhygt kuhy
			   jeorjo jroreoroi wertyuiopñl kjhgfcvb
			   ñiuyt rszxcvh jklñoi uytres xcvbghj
			   poiuytre wq234567890pl,kmnbvcx edrty
			   ouytrdhjklñ. csertyuio'0987543wsd 
			   etyuijhgfdwapo  ijhytfgyu kjuhygf",
			   topic_id: Topic.last.id
		)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title:"Rails #{skill}",
		percent_utilized: 15
		)
end

puts "5 skill created"

8.times do |portfolio_item|
	Portfolio.create!(
		title:"Portfolio title #{portfolio_item}",
		subtitle:"Ruby on Rails",
		body:"Send up perps  2ñoiuhygt uyty
			   doejor joeijfoiejoifj eiojriojerioj
			   jhgghj kjuhytg hkijuh kijuhygt kuhy
			   jeorjo jroreoroi wertyuiopñl kjhgfcvb
			   ñiuyt rszxcvh jklñoi uytres xcvbghj
			   poiuytre wq234567890pl,kmnbvcx edrty
			   ouytrdhjklñ. csertyuio'0987543wsd 
			   etyuijhgfdwapo  ijhytfgyu kjuhygf",
		main_image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0EP39WNrRjFyJo1qbAM-N_BYbPolRP-UdTxWfR2pg1Zpb8om",
		thumb_image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0EP39WNrRjFyJo1qbAM-N_BYbPolRP-UdTxWfR2pg1Zpb8om",
		)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title:"Portfolio title #{portfolio_item}",
		subtitle:"Angular",
		body:"Send up perps  2ñoiuhygt uyty
			   doejor joeijfoiejoifj eiojriojerioj
			   jhgghj kjuhytg hkijuh kijuhygt kuhy
			   jeorjo jroreoroi wertyuiopñl kjhgfcvb
			   ñiuyt rszxcvh jklñoi uytres xcvbghj
			   poiuytre wq234567890pl,kmnbvcx edrty
			   ouytrdhjklñ. csertyuio'0987543wsd 
			   etyuijhgfdwapo  ijhytfgyu kjuhygf",
		main_image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0EP39WNrRjFyJo1qbAM-N_BYbPolRP-UdTxWfR2pg1Zpb8om",
		thumb_image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0EP39WNrRjFyJo1qbAM-N_BYbPolRP-UdTxWfR2pg1Zpb8om",
		)
end

puts "9 porfolio items created"