--Sub-Brands
,CASE WHEN ip.family_description = 'Diamond TOW Dog Samples' THEN 'Taste of the Wild' WHEN ip.family_description = 'Diamond TOW Dog Dry Ad' THEN 'Taste of the Wild' WHEN ip.family_description = 'Diamond TOW Dog Can Ad' THEN 'Taste of the Wild' WHEN ip.family_description = 'Diamond TOW Cat Dry Ad' THEN 'Taste of the Wild' WHEN ip.family_description = 'Diamond TOW Cat Can Ad' THEN 'Taste of the Wild' WHEN ip.family_description = 'Diamond Samples' THEN 'Diamond' WHEN ip.family_description = 'Diamond Premium Edge Samples' THEN 'Premium Edge' WHEN ip.family_description = 'Diamond Premium Edge Dog Dry Sr' THEN 'Premium Edge' WHEN ip.family_description = 'Diamond Premium Edge Dog Dry Pd' THEN 'Premium Edge' WHEN ip.family_description = 'Diamond Premium Edge Dog Dry Ad' THEN 'Premium Edge' WHEN ip.family_description = 'Diamond Premium Edge Cat Dry Sr' THEN 'Premium Edge' WHEN ip.family_description = 'Diamond Premium Edge Cat Dry Pd' THEN 'Premium Edge' WHEN ip.family_description = 'Diamond Premium Edge Cat Dry Ad' THEN 'Premium Edge' WHEN ip.family_description = 'Diamond Nutra Nuggets Dog Dry Pd' THEN 'Nutra Nuggets' WHEN ip.family_description = 'Diamond Nutra Nuggets Dog Dry Ad' THEN 'Nutra Nuggets' WHEN ip.family_description = 'Diamond Nutra Nugget Cat Dry Ad' THEN 'Nutra Nuggets' WHEN ip.family_description = 'Diamond Dog Dry Sr' THEN 'Diamond' WHEN ip.family_description = 'Diamond Dog Dry Pd' THEN 'Diamond' WHEN ip.family_description = 'Diamond Dog Dry Ad' THEN 'Diamond' WHEN ip.family_description = 'Diamond Dog Can AD' THEN 'Diamond' WHEN ip.family_description = 'Diamond Dog Biscuits Pd' THEN 'Diamond' WHEN ip.family_description = 'Diamond Dog Biscuits Ad' THEN 'Diamond' WHEN ip.family_description = 'Diamond Country Value Dog Dry Pd' THEN 'Country Value' WHEN ip.family_description = 'Diamond Country Value Dog Dry Ad' THEN 'Country Value' WHEN ip.family_description = 'Diamond Country Value Cat Dry Ad' THEN 'Country Value' WHEN ip.family_description = 'Diamond Cat Dry Pd' THEN 'Diamond' WHEN ip.family_description = 'Diamond Cat Dry Ad' THEN 'Diamond' WHEN ip.family_description = 'Diamond Cat Can Ad' THEN 'Diamond' WHEN ip.family_description = 'Diamond Bright Bites Dog Treats Ad' THEN 'Bright Bites' WHEN ip.family_description = 'Diam Chick Soup for the Pet Samples' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chick Soup for Pet Cat Can Pd' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chick Soup for Pet Cat Can Ad' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Dog Dry Sr' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Dog Dry Ad' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Dog Can Sr' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Dog Can PD' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Dog Can AD' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Cat Dry Sr' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Cat Dry Pd' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Cat Dry Ad' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for Pet Dog Dry Pd' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for Pet Dog Can Dry Pd' THEN 'Chicken Soup' WHEN ip.family_description = 'Dia Chi Soup for the Pet Cat Dry Pd' THEN 'Chicken Soup' ELSE 'UNKNOWN' END SUB_BRAND
