@id("f6798ed1-7864-4bcc-ade2-544e07f1abc3")
@nodeType("24298d54-248d-48f4-bfe0-5a0e23df2bf7")

SELECT
    TO_HEX(MD5(CAST(payment_type.payment_type_id AS STRING))) AS dim_payment_type_key,
    payment_type.payment_type_id AS payment_type_id @isBusinessKey,
    payment_type.payment_type.payment_type AS payment_type
FROM {{ ref("BRONZE", "payment_type") }} AS payment_type
