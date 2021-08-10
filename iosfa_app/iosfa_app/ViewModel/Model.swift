//
//  Model.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 01/07/2021.
//

import Foundation

struct Place: Hashable {
    
    let image: String
    let title: String
    let city: String
    let desc:String
    
}


let places = [
    Place(image: "p1", title: "The Red Fort", city: "Delhi", desc: "Established as Shahjahanabad in 1648, The Red Fort was known as the capital of the Mughal Empire in India. Its construction is attributed to Shah Jahan who also built the famous Taj Mahal in Agra, and was also known by the name Quila Mubarak and remained the residence of the Mughal Imperial family for nearly 20 decades."),
    
Place(image: "p2", title: "The Taj Mahal", city: "Agra", desc: "The name Taj Mahal, translates to the ‘Crown Palace’ and is one of the most famous and marvelous buildings in India. Located in the city of Agra, Taj Mahal is actually a mausoleum built to house the remains of Mumtaz Mahal, the wife of Mughal Emperor Shah Jahan. The building is known for its extensive use of white marble and was completed in the mid-17th century"),

Place(image: "pangong", title: "Pangong Lake", city: "Ladakh", desc: "With its location between India and Tibet, Pangong Lake is an enchanting saltwater lake located in the Himalayas in Ladakh. The lake can be reached via a 4-5 hours’ drive from Leh via the scenic Changla Pass. Pangong Tso is known for its hypnotizing blue waters and flocks of migratory birds that can be seen here."),

Place(image: "valleyofflowers", title: "Valley of Flowers", city: "Nainital", desc: "As evident by its name, the Valley of Flowers is known for its vast diversity of alpine flowering shrubs located in the western Himalayas. The place is a part of the larger Nanda Devi Biosphere Reserve in Nainital, Uttarakhand. The valley is covered with snow from October till March, but as the summer arrives, the valley is turned into a palette of colorful flowers that covers the entire landscape."),

Place(image: "jaisalmerfort", title: "Jaisalmer Fort", city: "Jaisalmer", desc: "Located amidst the golden sands of the Thar Desert, the Jaisalmer Fort was built by the Bhati Rajput King Rawal Jaisal. It remained an important trade center during the medieval era before the popularity of maritime trade centers such as Bombay and Calcutta. Today, it is one of the important tourist centers in Rajasthan known for its exquisite Rajput Architecture and scenic beauty."),

Place(image: "ruinsofhampi", title: "Ruins of Hampi", city: "Karnataka", desc: "Hampi was the capital of the erstwhile Vijayanagar Empire and known to be one of the richest cities of its time. Located on the shores of the Tungabhadra River in Karnataka, Hampi is also a UNESCO World Heritage Site famous for its stone carved structures, built in marvelous Dravidian style architecture, temples and monuments."),

Place(image: "ghats", title: "Ghats at Varanasi", city: "Uttar Pradesh", desc: "Also known by the names Kashi and Benares, Varanasi is said to have been continuously inhibited since the 11th century BC and is known to be the spiritual capital of India. The city is also known for its Ghats located on the banks of the Ganges River and were mostly built during the 18th century. Today, the Ghats are known to attract a large number of devotees and tourists who visit Varanasi to Pradeep Kumbhashi seek spiritual salvation."),

Place(image: "backwaters", title: "Backwaters", city: "Kerala", desc: "The Backwaters of Kerala are essentially a group of 5 lagoons that are linked by natural and manmade canals. These waterways were mainly used for trade during the older times and are known for their scenic beauty and a rich variety of flora, fauna, avi-fauna and marine life."),

Place(image: "oldgoa", title: "Old Goa", city: "Goa", desc: "Located in the Northern Goa district of Goa, Old Goa refers to the historic town that served as the seat of the Portuguese in India till the 18th century. The city is also a UNESCO World Heritage Site due to its unique Baroque style architecture and various churches."),

Place(image: "umaidbhavanpalace", title: "Umaid Bhavan", city: "Jodhpur", desc: "A marvelous example of the Indo-European architecture, the Umaid Bhavan was built during the 1920’s and is known as one of the largest private residences in the world. The palace was criticized for its expensive architecture but also helped the citizens of Jodhpur to sustain their living during a 3 year famine. It was commissioned by the 37th Rathore King Umaid Singh."),

Place(image: "jamamasjid", title: "Jama Masjid", city: "Delhi", desc: "Known formally as ‘Masjid-i-Jahan-Numa’, the Jama Masjid was built by the Mughal Emperor Shah Jahan in the mid-17th century. The mosque is built in a majestic Indo-Islamic style mainly in Red Sandstone and marble. Jama Masjid has three gateways, 2 minarets and four towers that provide it with an imposing look."),

Place(image: "akshardham", title: "Akshardham Temple", city: "Delhi", desc: "Inaugurated in 2005, the Akshardham temple in Delhi is known as one of the major Hindu temples in India. The structure of the temple is made from sculpted sandstone and took almost 7000 artisans to complete. The entire complex is decorated with sculpted pillars, sculptures depicting deities, sadhus and animals along with scenes from the Hindu mythology."),

Place(image: "oldbombay", title: "Old Bombay", city: "Mumbai", desc: "Before it was ceded to the British, the port city of Mumbai was a group of 7 islands, which were connected into a single landmass through land reclamation around the late 18th century. Since then the city was developed as a major port town in India after the construction the Suez Canal. The old town is known for its historic architecture and various tourist attractions in Mumbai."),

Place(image: "ajanta", title: "Ajanta and Ellora Caves", city: "Aurangabad", desc: "Ajanta and Ellora Caves in Aurangabad are rock cut Buddhist caves that date back as far as the 2nd century BC to 800 AD. The Ajanta Caves mainly consist of rock cut monuments dedicated to the ancient Buddhist traditions, while Ellora cave contain Hindu, Buddhist and Jain monuments built during the Rashtrakuta Empire."),

Place(image: "thegoldentemple", title: "The Golden Temple", city: "Amritsar", desc: "Known by its formal name Harmandir Sahib, The Golden Temple is one of the most revered places of worship for the Sikh community in India. Located in the pilgrim town of Amritsar in the State of Punjab, Harmandir Sahib is known for its gilded façade and the exquisite architecture that is one of a kind among all other religious places in India.")

]
