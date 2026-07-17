@id("16690640-9a03-47fe-8785-72d6dba72b63")
@nodeType("468")
WITH x AS (
SELECT
     "location_id" AS "location_id",
     "borough" AS "borough",
     "zone" AS "zone",
     "service_zone" AS "service_zone"
FROM {{ ref('BRONZE', 'location') }}
)
SELECT * FROM x