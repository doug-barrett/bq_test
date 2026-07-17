@id("08ecb258-ba68-438c-abd7-9f25cbc5bb2d")
@nodeType("468")
WITH x AS (
SELECT
     "payment_type_id" AS "payment_type_id",
     "payment_type" AS "payment_type"
FROM {{ ref('BRONZE', 'payment_type') }}
)
SELECT * FROM x