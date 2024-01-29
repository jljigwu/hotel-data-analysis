/*
INSERT INTO dbo.Hotels_test 
select * FROM
(
    SELECT * FROM dbo.['2018$']
    UNION ALL
    SELECT * FROM dbo.['2019$']
    UNION ALL
    SELECT * FROM dbo.['2020$']
) a
*/
--Is our hotel revenue growing yearly?
SELECT arrival_date_year, 
SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)) AS total_revenue
FROM dbo.Hotels_test
GROUP BY arrival_date_year;

-- What is the overall cancellation rate for each hotel?
SELECT hotel, 
COUNT(*) AS total_bookings,
SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS canceled_bookings,
ROUND(SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancellation_rate
FROM dbo.Hotels_test
GROUP BY hotel;

-- Which country has the most guests in a given hotel?
SELECT hotel, country, 
COUNT(*) as NumberOfGuests
FROM dbo.Hotels_test
GROUP BY hotel, country
ORDER BY NumberOfGuests DESC;

-- Which month has the highest number of bookings?
SELECT arrival_date_month, 
COUNT(*) AS total_bookings
FROM dbo.Hotels_test
GROUP BY arrival_date_month
ORDER BY total_bookings DESC;

-- Which room type is most frequently booked?
SELECT reserved_room_type, 
COUNT(*) AS room_type_count
FROM dbo.Hotels_test
GROUP BY reserved_room_type
ORDER BY room_type_count DESC;

-- Should we increase our parking lot size?
SELECT arrival_date_year, hotel,
CONCAT (round((sum(required_car_parking_spaces)/sum(stays_in_week_nights + stays_in_weekend_nights)) * 100, 2), '%') as parking_percentage
FROM dbo.Hotels_test 
GROUP BY arrival_date_year, hotel
ORDER BY parking_percentage DESC;


---
Results:
    
arrival_date_year	total_revenue
2019	            15490103.6700001
2018	            20454349.6800002
2020	            51104339.3099998


hotel	        total_bookings	canceled_bookings	cancellation_rate
City Hotel	    150303	        79818	            53.100000000000
Resort Hotel	78930	        33027	            41.840000000000

hotel	        country	NumberOfGuests
City Hotel	    PRT	        65106
Resort Hotel	PRT	        38565
City Hotel	    FRA	        14724
Resort Hotel	GBR        	11748
City Hotel	    GBR        	10239
City Hotel	    DEU	        9645
City Hotel	    ESP	        8670
Resort Hotel	ESP	        7641
City Hotel	    ITA        	5943
Resort Hotel	IRL	        4002
City Hotel	    BRA	        3300
City Hotel	    BEL	        3210
City Hotel	    USA	        2973
Resort Hotel	FRA	        2886
City Hotel	    NLD	        2553
City Hotel	    IRL        	2349
City Hotel	    CHE        	2109
Resort Hotel	DEU	        1719
City Hotel	    CHN        	1563
City Hotel	    AUT        	1527
Resort Hotel	CN	        1395
City Hotel	    ISR	        1356
City Hotel	    SWE	        1326
City Hotel	    CN	        1131
City Hotel	    POL	        1011
City Hotel	    RUS        	972
Resort Hotel	ITA        	915
Resort Hotel	CHE    	    897
City Hotel	    NOR	        876
Resort Hotel	USA	        876
Resort Hotel	BRA	        873
Resort Hotel	NLD        	846
Resort Hotel	BEL        	843
City Hotel	    AUS	        705
City Hotel	    DNK	        705
Resort Hotel	NULL        648
City Hotel	    AGO        	603
Resort Hotel	SWE	        564
City Hotel	    ROU        	543
City Hotel	    FIN        	495
Resort Hotel	POL        	465
Resort Hotel	AUT        	465
City Hotel	    TUR        	414
Resort Hotel	RUS	        402
City Hotel	    LUX	        402
City Hotel	    MAR	        330
Resort Hotel	ROU	        330
City Hotel    	HUN	        324
City Hotel    	JPN	        315
City Hotel    	ARG	        279
City Hotel    	KOR	        261
Resort Hotel	NOR	        234
City Hotel	    GRC	        228
Resort Hotel	CHN	        228
Resort Hotel	FIN	        219
City Hotel    	CZE	        207
City Hotel    	IND        	186
Resort Hotel	LUX	        174
Resort Hotel	MAR	        171
City Hotel    	DZA	        168
City Hotel	    MEX	        162
Resort Hotel	AUS	        162
City Hotel	    HRV	        159
City Hotel	    IRN	        123
City Hotel	    ZAF	        120
Resort Hotel	DNK	        117
City Hotel	    MOZ        	108
City Hotel    	COL        	108
Resort Hotel	HUN        	105
City Hotel	    BGR        	105
City Hotel    	ARE	        102
Resort Hotel	ARG	        96
City Hotel	    ISL        	90
City Hotel	    SAU        	84
City Hotel	    CYP        	84
City Hotel    	NZL	        81
City Hotel	    EST	        78
City Hotel	    TUN        	75
Resort Hotel	IND        	72
City Hotel    	UKR	        72
Resort Hotel	CZE	        69
City Hotel	    SVN	        66
Resort Hotel	LTU	        66
City Hotel    	SGP        	66
City Hotel    	CHL	        63
City Hotel    	TWN        	63
Resort Hotel	ISR        	63
City Hotel	    LTU	        60
City Hotel	    LBN        	60
City Hotel	    HKG        	60
Resort Hotel	LVA	        60
City Hotel    	NULL	    57
City Hotel	    PHL	        57
City Hotel	    SVK	        54
City Hotel	    IDN	        54
City Hotel	    SRB	        51
City Hotel	    URY	        51
City Hotel	    BLR	        48
City Hotel	    VEN	        48
Resort Hotel	ZAF	        45
City Hotel	    ECU	        45
Resort Hotel	PHL	        45
Resort Hotel	TUR	        45
City Hotel	    JOR	        45
City Hotel	    PER	        45
City Hotel    	MAC	        45
Resort Hotel	AGO	        45
City Hotel	    QAT        	39
City Hotel	    THA	        39
City Hotel	    LVA        	39
City Hotel	    AZE        	36
Resort Hotel	TWN        	36
Resort Hotel	EST        	36
City Hotel	    CRI	        36
City Hotel	    EGY	        33
Resort Hotel	COL	        33
City Hotel	    CPV	        33
Resort Hotel	CHL	        33
Resort Hotel	GEO	        33
City Hotel	    IRQ	        33
Resort Hotel	GIB	        30
Resort Hotel	NZL	        30
City Hotel	    NGA	        30
City Hotel	    DOM	        30
City Hotel	    TJK	        27
Resort Hotel	ARE	        24
City Hotel	    MLT	        24
Resort Hotel	SVK	        24
Resort Hotel	DZA	        24
Resort Hotel	NGA	        24
Resort Hotel	JPN	        24
City Hotel	    GEO	        21
City Hotel    	KWT	        21
City Hotel    	KAZ	        21
Resort Hotel	HRV	        21
Resort Hotel	SVN	        21
City Hotel	    MYS        	21
City Hotel    	BGD        	21
Resort Hotel	ISL	        18
Resort Hotel	UKR        	18
Resort Hotel	KOR	        18
City Hotel    	CMR        	18
City Hotel	    PAN	        18
City Hotel	    ALB	        18
City Hotel	    SEN        	18
City Hotel	    MUS	        15
Resort Hotel	IDN	        15
Resort Hotel	MDV	        15
Resort Hotel	SRB	        15
City Hotel	    PAK        	15
City Hotel    	GIB	        15
Resort Hotel	GRC	        15
Resort Hotel	KAZ	        15
City Hotel	    FRO	        15
City Hotel    	LKA	        15
Resort Hotel	MOZ	        15
Resort Hotel	BLR	        15
City Hotel    	GTM        	12
Resort Hotel	URY        	12
Resort Hotel	PAK	        12
Resort Hotel	OMN	        12
City Hotel    	JEY	        12
Resort Hotel	AND	        12
City Hotel	    MDV	        12
City Hotel	    KEN	        12
City Hotel	    OMN	        12
Resort Hotel	CPV	        12
Resort Hotel	LBN	        12
Resort Hotel	HKG	        12
Resort Hotel	CYP	        9
City Hotel	    BEN	        9
Resort Hotel	VEN	        9
City Hotel	    ETH	        9
City Hotel	    BHR        	9
Resort Hotel	JAM	        9
City Hotel	    GHA	        9
City Hotel	    PRY	        9
Resort Hotel	IRN        	9
Resort Hotel	MEX        	9
City Hotel	    MCO        	9
City Hotel	    CIV        	9
Resort Hotel	BGR	        9
Resort Hotel	JEY	        9
City Hotel	    BIH	        9
City Hotel    	ARM	        9
City Hotel	    ZWE	        6
City Hotel	    AND        	6
City Hotel	    SYR	        6
Resort Hotel	CAF	        6
Resort Hotel	CUB	        6
Resort Hotel	DOM	        6
Resort Hotel	ALB	        6
City Hotel	    KHM        	6
Resort Hotel	KWT        	6
Resort Hotel	AZE	        6
City Hotel    	UZB	        6
City Hotel	    MNE	        6
City Hotel    	STP        	6
Resort Hotel	MYS	        6
City Hotel	    VNM	        6
City Hotel    	IMN        	6
Resort Hotel	PRI	        6
City Hotel	    KNA	        6
City Hotel	    CUB	        6
City Hotel	    GGY	        6
City Hotel	    LAO	        6
Resort Hotel	CRI	        6
City Hotel	    MYT	        6
Resort Hotel	ZWE    	    6
City Hotel	    CAF         6
City Hotel	    LIE	        6
City Hotel    	TZA	        6
City Hotel	    MRT	        3
Resort Hotel	ARM	        3
City Hotel    	ASM	        3
City Hotel    	HND	        3
Resort Hotel	UZB        	3
City Hotel	    UMI        	3
City Hotel    	KIR	        3
Resort Hotel	MKD        	3
Resort Hotel	VNM        	3
City Hotel	    NCL        	3
City Hotel    	TMP	        3
City Hotel    	GAB	        3
Resort Hotel	ZMB	        3
Resort Hotel	LKA	        3
City Hotel    	NIC	        3
Resort Hotel	SYC	        3
City Hotel    	COM	        3
City Hotel    	ATF	        3
City Hotel	    TGO	        3
Resort Hotel	BHS	        3
City Hotel    	SDN	        3
City Hotel    	VGB        	3
Resort Hotel	NPL	        3
Resort Hotel	SUR	        3
Resort Hotel	TUN	        3
Resort Hotel	ECU        	3
Resort Hotel	MDG	        3
Resort Hotel	SMR	        3
City Hotel	    ATA	        3
Resort Hotel	MAC	        3
Resort Hotel	THA	        3
Resort Hotel	BHR	        3
City Hotel    	LBY	        3
City Hotel    	SUR	        3
City Hotel	    PRI	        3
Resort Hotel	TGO	        3
Resort Hotel	DJI	        3
City Hotel    	GNB	        3
City Hotel	    ZMB	        3
City Hotel    	SLE	        3
City Hotel    	ABW         3
Resort Hotel	GGY         3
Resort Hotel	FJI	        3
Resort Hotel	CYM        	3
Resort Hotel	BWA        	3
City Hotel	    MMR        	3
Resort Hotel	JOR        	3
Resort Hotel	SEN        	3
City Hotel	    SLV	        3

---
