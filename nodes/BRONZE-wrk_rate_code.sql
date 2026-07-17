@id("7d252ffe-c672-43f3-88bc-c5a0184b70a8")
@nodeType("468")
WITH x AS (
SELECT
     "rate_code_id" AS "rate_code_id",
     "rate_code" AS "rate_code"
FROM {{ ref('BRONZE', 'rate_code') }} AS src
)
SELECT * FROM x