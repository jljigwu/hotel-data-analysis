# Hotel Data Analysis

## Business objectives
The aim is to answer the stakeholders questions - Is the hotel revenue grow by year? Is the direction of development of the hotel chain correct? If parking size should be increased? What trends are seen in data? I will answer these questions through SQL queries and the Power BI dashboard.

## Dataset
Excel: https://github.com/jljigwu/hotel-data-analysis/blob/main/hotel.xlsx <br />
Kaggle site: https://www.kaggle.com/datasets/govindkrishnadas/hotel-revenue

## Query results
```sql

Results:
--Is our hotel revenue growing yearly?
arrival_date_year	total_revenue
2019	            15490103.6700001
2018	            20454349.6800002
2020	            51104339.3099998


-- What is the overall cancellation rate for each hotel?
hotel	        total_bookings	canceled_bookings	cancellation_rate
City Hotel	  150303	  79818	                  53.100000000000
Resort Hotel	  78930	          33027	                  41.840000000000


-- Which country has the most guests in a given hotel?
hotel	    country   NumberOfGuests
City Hotel	PRT	65106
Resort Hotel	PRT	38565
City Hotel	FRA	14724
Resort Hotel	GBR	11748
City Hotel	GBR	10239
City Hotel	DEU	9645
City Hotel	ESP	8670
Resort Hotel	ESP	7641
City Hotel	ITA	5943
Resort Hotel	IRL	4002
City Hotel	BRA	3300
City Hotel	BEL	3210
City Hotel	USA	2973
Resort Hotel	FRA	2886
City Hotel	NLD	2553
City Hotel	IRL	2349
City Hotel	CHE	2109
Resort Hotel	DEU	1719
City Hotel	CHN	1563
City Hotel	AUT	1527
Resort Hotel	CN	1395
City Hotel	ISR	1356
City Hotel	SWE	1326
City Hotel	CN	1131
City Hotel	POL	1011
City Hotel	RUS	972
Resort Hotel	ITA	915
Resort Hotel	CHE	897
City Hotel	NOR	876
...
City Hotel	MRT	3
Resort Hotel	ARM	3
City Hotel	ASM	3
City Hotel	HND	3
Resort Hotel	UZB	3
City Hotel	UMI	3
City Hotel	KIR	3
Resort Hotel	MKD	3
Resort Hotel	VNM	3
City Hotel	NCL	3
City Hotel	TMP	3
City Hotel	GAB	3
Resort Hotel	ZMB	3
Resort Hotel	LKA	3
City Hotel	NIC	3
Resort Hotel	SYC	3
City Hotel	COM	3
City Hotel	ATF	3
City Hotel	TGO	3
Resort Hotel	BHS	3
City Hotel	SDN	3
City Hotel	VGB	3
Resort Hotel	NPL	3
Resort Hotel	SUR	3
Resort Hotel	TUN	3
Resort Hotel	ECU	3
Resort Hotel	MDG	3
Resort Hotel	SMR	3
City Hotel	ATA	3
Resort Hotel	MAC	3
Resort Hotel	THA	3
Resort Hotel	BHR	3
City Hotel	LBY	3
City Hotel	SUR	3
City Hotel	PRI	3
Resort Hotel	TGO	3
Resort Hotel	DJI	3
City Hotel	GNB	3
City Hotel	ZMB	3
City Hotel	SLE	3
City Hotel	ABW	3
Resort Hotel	GGY	3
Resort Hotel	FJI	3
Resort Hotel	CYM	3
Resort Hotel	BWA	3
City Hotel	MMR	3
Resort Hotel	JOR	3
Resort Hotel	SEN	3
City Hotel	SLV	3


-- Which month has the highest number of bookings?
arrival_date_month	total_bookings
August	        31629
July	        28593
May	        24258
June	        22767
April	        22440
September       19794
March	        18594
October	        16530
February        15042
January         12045
December         9708
November        7833


-- Which room type is most frequently booked?
reserved_room_type	room_type_count
A	  165207
D	  36204
E  	  13014
F	  5343
G	  4257
C	  2136
B	  1797
H	  1233
P	  24
L	  18


-- Should we increase our parking lot size?
arrival_date_year	hotel	parking_percentage
2018	  Resort Hotel	  3.1%
2020	  Resort Hotel	  2.86%
2020	  City Hotel	  0.62%
2018	  City Hotel	  0.54%
2019	  Resort Hotel	  0%
2019	  City Hotel	  0%
```

## Dashboard
https://github.com/jljigwu/hotel-data-analysis/blob/main/hotel_dashboard.pdf

## Analysis
1. **Hotel Revenue:** The hotel revenue has been increasing yearly. From 2018 to 2020, there is a significant growth in revenue, with the highest revenue recorded in 2020. There is no need to change a strategy of developing.
   
2. **Cancellation Rate:** The City Hotel has a higher cancellation rate (53.1%) compared to the Resort Hotel (41.84%). This could be due to various factors such as pricing, customer service, location, etc. Further analysis needs to be performed.

3. **Guest Nationality:** Guests from Portugal (PRT) visit both the City Hotel and Resort Hotel the most, followed by guests from France (FRA) and Great Britain (GBR) for the City Hotel, and Great Britain (GBR) and Ireland (IRL) for the Resort Hotel. We can add more signs and subtitles with fhose languages.

4. **Bookings by Month:** The highest number of bookings are made in August, followed by July and May. Probably due to the summer holidays when people tend to travel more. 

5. **Room Type:** Room type ‘A’ is the most frequently booked, followed by ‘D’ and ‘E’. This could indicate a preference for these room types among guests. This should be taken into account when building new hotels or renovating them

6. **Parking size :** The parking usage is relatively low for both hotels, with the highest percentage being 3.1% for the Resort Hotel in 2018. This suggests that most guests do not bring cars, possibly due to other forms of transportation being more convenient. Therefore, it may not be necessary to increase the parking lot size.
