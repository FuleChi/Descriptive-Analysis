SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[Room_book_req] AS

SELECT
client_name,
r.request_id,
r.room_type,
request_type,
r.start_date AS Req_start_date,
r.end_date AS Req_end_date,
adults,
children,
Booking_ID,
Room,
rb.Start_date AS Bk_start_date,
rb.end_date AS Bk_end_date,
Room_ID, 
price_day,
capacity,
prefix,
Booking_year,
Booking_month,
Booking_day,
DATEDIFF(day, rb.start_date, rb.end_date) AS #Days,
price_day * DATEDIFF(day, rb.start_date, rb.end_date) AS Room_revenu

FROM requests r
INNER JOIN Room_booking rb
ON r.request_id = rb.request_id

GO
