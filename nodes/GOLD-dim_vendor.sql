@id("4e8cffcf-39a8-4783-8b01-8b1593a6760a")
@nodeType("24298d54-248d-48f4-bfe0-5a0e23df2bf7")

SELECT
    TO_HEX(MD5(CAST(vendor.vendor_id AS STRING))) AS dim_vendor_key,
    vendor.vendor_id AS vendor_id @isBusinessKey,
    vendor.vendor_name AS vendor_name,
    vendor_details.phone AS phone,
    vendor_details.drivers AS drivers,
    STRING(vendor_details.hq_address_details.ADDRESS) AS hq_address,
    STRING(vendor_details.hq_address_details.STATE) AS hq_state,
    STRING(vendor_details.hq_address_details.COUNTRY) AS hq_country
FROM {{ ref("BRONZE", "vendor") }} AS vendor
INNER JOIN {{ ref("BRONZE", "vendor_details") }} AS vendor_details
    ON vendor.vendor_id = vendor_details.vendor_id
