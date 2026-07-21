@id("3b008ec9-1aaa-47eb-bf3a-16c92d59a408")
@nodeType("468")
SELECT
     "payment_type_id" AS "payment_type_id",
     "payment_type" AS "payment_type"
FROM {{ ref('BRONZE', 'payment_type') }} `payment_type`


