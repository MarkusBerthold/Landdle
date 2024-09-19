insert into CountryContinent

select C.Id, (select Id from Continent where Name = 'Africa') from
(
select 'Algeria' as Name
union select 'Angola'
union select 'Benin'
union select 'Botswana'
union select 'Burkina Faso'
union select 'Burundi'
union select 'Cabo Verde'
union select 'Cameroon'
union select 'Central African Republic'
union select 'Chad'
union select 'Comoros'
union select 'Republic of the Congo'
union select 'Democratic Republic of the Congo'
union select 'Djibouti'
union select 'Egypt'
union select 'Equatorial Guinea'
union select 'Eritrea'
union select 'Eswatini'
union select 'Ethiopia'
union select 'Gabon'
union select 'Gambia'
union select 'Ghana'
union select 'Guinea'
union select 'Guinea-Bissau'
union select 'C�te d''Ivoire'
union select 'Kenya'
union select 'Lesotho'
union select 'Liberia'
union select 'Libya'
union select 'Madagascar'
union select 'Malawi'
union select 'Mali'
union select 'Mauritania'
union select 'Mauritius'
union select 'Morocco'
union select 'Mozambique'
union select 'Namibia'
union select 'Niger'
union select 'Nigeria'
union select 'Rwanda'
union select 'Sao Tome and Principe'
union select 'Senegal'
union select 'Seychelles'
union select 'Sierra Leone'
union select 'Somalia'
union select 'South Africa'
union select 'South Sudan'
union select 'Sudan'
union select 'Tanzania'
union select 'Togo'
union select 'Tunisia'
union select 'Uganda'
union select 'Zambia'
union select 'Zimbabwe'
) X left join Country C on C.Name = X.Name

union

select C.Id, (select Id from Continent where Name = 'Asia') from
(
select 'Afghanistan' as Name
union select 'Armenia'
union select 'Azerbaijan'
union select 'Bahrain'
union select 'Bangladesh'
union select 'Bhutan'
union select 'Brunei'
union select 'Cambodia'
union select 'China'
union select 'Cyprus'
union select 'Egypt'
union select 'Georgia'
union select 'India'
union select 'Indonesia'
union select 'Iran'
union select 'Iraq'
union select 'Israel'
union select 'Japan'
union select 'Jordan'
union select 'Kazakhstan'
union select 'Kuwait'
union select 'Kyrgyzstan'
union select 'Laos'
union select 'Lebanon'
union select 'Malaysia'
union select 'Maldives'
union select 'Mongolia'
union select 'Myanmar'
union select 'Nepal'
union select 'North Korea'
union select 'Oman'
union select 'Pakistan'
union select 'Philippines'
union select 'Qatar'
union select 'Russia'
union select 'Saudi Arabia'
union select 'Singapore'
union select 'South Korea'
union select 'Sri Lanka'
union select 'Syria'
union select 'Taiwan'
union select 'Tajikistan'
union select 'Thailand'
union select 'Timor-Leste'
union select 'Turkey'
union select 'Turkmenistan'
union select 'United Arab Emirates'
union select 'Uzbekistan'
union select 'Vietnam'
union select 'Yemen'
) X left join Country C on X.Name = C.Name

union

select C.Id, (select Id from Continent where Name = 'Europe') from
(
select 'Albania' as Name
union select 'Andorra'
union select 'Armenia'
union select 'Austria'
union select 'Azerbaijan'
union select 'Belarus'
union select 'Belgium'
union select 'Bosnia and Herzegovina'
union select 'Bulgaria'
union select 'Croatia'
union select 'Cyprus'
union select 'Czechia'
union select 'Denmark'
union select 'Estonia'
union select 'Finland'
union select 'France'
union select 'Georgia'
union select 'Germany'
union select 'Greece'
union select 'Hungary'
union select 'Iceland'
union select 'Ireland'
union select 'Italy'
union select 'Kazakhstan'
union select 'Latvia'
union select 'Liechtenstein'
union select 'Lithuania'
union select 'Luxembourg'
union select 'Malta'
union select 'Moldova'
union select 'Monaco'
union select 'Montenegro'
union select 'Netherlands'
union select 'North Macedonia'
union select 'Norway'
union select 'Poland'
union select 'Portugal'
union select 'Romania'
union select 'Russia'
union select 'San Marino'
union select 'Serbia'
union select 'Slovakia'
union select 'Slovenia'
union select 'Spain'
union select 'Sweden'
union select 'Switzerland'
union select 'Turkey'
union select 'Ukraine'
union select 'United Kingdom'
union select 'Vatican City'
) X left join Country C on X.Name = C.Name
union

select C.Id, (select Id from Continent where Name = 'North America') from
(
select 'Antigua and Barbuda' as Name
union select 'Bahamas'
union select 'Barbados'
union select 'Belize'
union select 'Canada'
union select 'Costa Rica'
union select 'Cuba'
union select 'Dominica'
union select 'Dominican Republic'
union select 'El Salvador'
union select 'Grenada'
union select 'Guatemala'
union select 'Haiti'
union select 'Honduras'
union select 'Jamaica'
union select 'Mexico'
union select 'Nicaragua'
union select 'Panama'
union select 'Saint Kitts and Nevis'
union select 'Saint Lucia'
union select 'Saint Vincent and the Grenadines'
union select 'Trinidad and Tobago'
union select 'United States of America') X left join Country C on X.Name = C.Nameunionselect C.Id, (select Id from Continent where Name = 'Australia/Oceania') from
(select 'Australia' as Name
union select 'Fiji'
union select 'Kiribati'
union select 'Marshall Islands'
union select 'Micronesia'
union select 'Nauru'
union select 'New Zealand'
union select 'Palau'
union select 'Papua New Guinea'
union select 'Samoa'
union select 'Solomon Islands'
union select 'Tonga'
union select 'Tuvalu'
union select 'Vanuatu'
) X left join Country C on X.Name = C.Name

union

select C.Id, (select Id from Continent where Name = 'South America') from
(
select 'Argentina' as Name
union select 'Bolivia'
union select 'Brazil'
union select 'Chile'
union select 'Colombia'
union select 'Ecuador'
union select 'Guyana'
union select 'Paraguay'
union select 'Peru'
union select 'Suriname'
union select 'Uruguay'
union select 'Venezuela') X left join Country C on X.Name = C.Name