@id("77d0a3b7-902a-4e1f-9f3d-3f06b085f77b")
@nodeType("24298d54-248d-48f4-bfe0-5a0e23df2bf7")

SELECT
    TO_HEX(MD5(CAST(rate_code.rate_code_id AS STRING))) AS dim_rate_code_key,
    rate_code.rate_code_id AS rate_code_id @isBusinessKey,
    rate_code.rate_code AS rate_code
FROM {{ ref("BRONZE", "rate_code") }} AS rate_code
