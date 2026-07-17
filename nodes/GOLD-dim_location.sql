@id("97e005e3-f094-49db-ba47-755e51627ece")
@nodeType("24298d54-248d-48f4-bfe0-5a0e23df2bf7")

SELECT
    TO_HEX(MD5(CAST(location.location_id AS STRING))) AS dim_location_key,
    location.location_id AS location_id @isBusinessKey,
    location.borough AS borough,
    location.zone AS zone,
    location.service_zone AS service_zone
FROM {{ ref("BRONZE", "location") }} AS location
