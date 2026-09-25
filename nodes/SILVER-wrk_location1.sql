@id("d6b6e1c5-0921-47d3-b03f-5bf33a2e16e1")
@nodeType("BaseSQL:::705")
@materializationType("table")

SELECT
     `location_id` AS `location_id`,
     `borough` AS `borough`,
     `zone` AS `zone`,
     `service_zone` AS `service_zone`,
     cast(zone||service_zone as string) as full_zone
FROM {{ ref('BRONZE', 'location') }} `location`