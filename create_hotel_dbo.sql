USE [Projects]
GO

/****** Object:  Table [dbo].['2018$']    Script Date: 1/29/2024 3:40:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].['2018$'](
	[hotel] [nvarchar](255) NULL,
	[is_canceled] [float] NULL,
	[lead_time] [float] NULL,
	[arrival_date_year] [float] NULL,
	[arrival_date_month] [nvarchar](255) NULL,
	[arrival_date_week_number] [float] NULL,
	[arrival_date_day_of_month] [float] NULL,
	[stays_in_weekend_nights] [float] NULL,
	[stays_in_week_nights] [float] NULL,
	[adults] [float] NULL,
	[children] [float] NULL,
	[babies] [float] NULL,
	[meal] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[market_segment] [nvarchar](255) NULL,
	[distribution_channel] [nvarchar](255) NULL,
	[is_repeated_guest] [float] NULL,
	[previous_cancellations] [float] NULL,
	[previous_bookings_not_canceled] [float] NULL,
	[reserved_room_type] [nvarchar](255) NULL,
	[assigned_room_type] [nvarchar](255) NULL,
	[booking_changes] [float] NULL,
	[deposit_type] [nvarchar](255) NULL,
	[agent] [float] NULL,
	[company] [nvarchar](255) NULL,
	[days_in_waiting_list] [float] NULL,
	[customer_type] [nvarchar](255) NULL,
	[adr] [float] NULL,
	[required_car_parking_spaces] [float] NULL,
	[total_of_special_requests] [float] NULL,
	[reservation_status] [nvarchar](255) NULL,
	[reservation_status_date] [datetime] NULL
) ON [PRIMARY]
GO
