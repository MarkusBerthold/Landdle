update	C
set		C.Population = P.Population,
		C.LandKM2 = P.LandKM2
from	(
		select	P.*
		from	(
		select 'Afghanistan' as Country, 42647500 as Population, 652230 as LandKM2
		union select 'Albania' as Country, 2791760 as Population, 27400 as LandKM2
		union select 'Algeria' as Country, 46814300 as Population, 2381741 as LandKM2
		union select 'American Samoa' as Country, 46765 as Population, 200 as LandKM2
		union select 'Andorra' as Country, 81938 as Population, 470 as LandKM2
		union select 'Angola' as Country, 37885800 as Population, 1246700 as LandKM2
		union select 'Antigua and Barbuda' as Country, 93772 as Population, 440 as LandKM2
		union select 'Azerbaijan' as Country, 10336600 as Population, 82646 as LandKM2
		union select 'Argentina' as Country, 45696200 as Population, 2736690 as LandKM2
		union select 'Australia' as Country, 26713200 as Population, 7692020 as LandKM2
		union select 'Austria' as Country, 9120810 as Population, 82520 as LandKM2
		union select 'Bahamas' as Country, 401283 as Population, 10010 as LandKM2
		union select 'Bahrain' as Country, 1607050 as Population, 785 as LandKM2
		union select 'Bangladesh' as Country, 173562000 as Population, 130170 as LandKM2
		union select 'Armenia' as Country, 2973840 as Population, 28470 as LandKM2
		union select 'Barbados' as Country, 282467 as Population, 430 as LandKM2
		union select 'Belgium' as Country, 11738800 as Population, 30280 as LandKM2
		union select 'Bermuda' as Country, 64636 as Population, 54 as LandKM2
		union select 'Bhutan' as Country, 791524 as Population, 38140 as LandKM2
		union select 'Bolivia' as Country, 12413300 as Population, 1083300 as LandKM2
		union select 'Bosnia and Herzegovina' as Country, 3164250 as Population, 51200 as LandKM2
		union select 'Botswana' as Country, 2521140 as Population, 566730 as LandKM2
		union select 'Brazil' as Country, 211999000 as Population, 8358140 as LandKM2
		union select 'Belize' as Country, 417072 as Population, 22810 as LandKM2
		union select 'Solomon Islands' as Country, 819198 as Population, 27990 as LandKM2
		union select 'British Virgin Islands' as Country, 39471 as Population, 150 as LandKM2
		union select 'Brunei' as Country, 462721 as Population, 5270 as LandKM2
		union select 'Bulgaria' as Country, 6757690 as Population, 108560 as LandKM2
		union select 'Myanmar' as Country, 54500100 as Population, 652670 as LandKM2
		union select 'Burundi' as Country, 14047800 as Population, 25680 as LandKM2
		union select 'Belarus' as Country, 9056700 as Population, 202980 as LandKM2
		union select 'Cambodia' as Country, 17638800 as Population, 176520 as LandKM2
		union select 'Cameroon' as Country, 29123700 as Population, 472710 as LandKM2
		union select 'Canada' as Country, 39742400 as Population, 8965590 as LandKM2
		union select 'Cabo Verde' as Country, 524877 as Population, 4033 as LandKM2
		union select 'Cayman Islands' as Country, 74457 as Population, 240 as LandKM2
		union select 'Central African Republic' as Country, 5330690 as Population, 622980 as LandKM2
		union select 'Sri Lanka' as Country, 23103600 as Population, 61860 as LandKM2
		union select 'Chad' as Country, 20299100 as Population, 1259200 as LandKM2
		union select 'Chile' as Country, 19764800 as Population, 743532 as LandKM2
		union select 'China' as Country, 1419320000 as Population, 9424702 as LandKM2
		union select 'Taiwan' as Country, 23214000 as Population, 36197 as LandKM2
		union select 'Colombia' as Country, 52886400 as Population, 1109500 as LandKM2
		union select 'Comoros' as Country, 866628 as Population, 1861 as LandKM2
		union select 'Mayotte' as Country, 326505 as Population, 374 as LandKM2
		union select 'Republic of the Congo' as Country, 6332960 as Population, 341500 as LandKM2
		union select 'Democratic Republic of the Congo' as Country, 109276000 as Population, 2267050 as LandKM2
		union select 'Cook Islands' as Country, 13729 as Population, 240 as LandKM2
		union select 'Costa Rica' as Country, 5129910 as Population, 51060 as LandKM2
		union select 'Croatia' as Country, 3875320 as Population, 55960 as LandKM2
		union select 'Cuba' as Country, 10979800 as Population, 103800 as LandKM2
		union select 'Cyprus' as Country, 1358280 as Population, 9240 as LandKM2
		union select 'Czechia' as Country, 10735900 as Population, 77198 as LandKM2
		union select 'Benin' as Country, 14462700 as Population, 112760 as LandKM2
		union select 'Denmark' as Country, 5977410 as Population, 40000 as LandKM2
		union select 'Dominica' as Country, 66205 as Population, 750 as LandKM2
		union select 'Dominican Republic' as Country, 11427600 as Population, 48310 as LandKM2
		union select 'Ecuador' as Country, 18135500 as Population, 248360 as LandKM2
		union select 'El Salvador' as Country, 6338190 as Population, 20720 as LandKM2
		union select 'Equatorial Guinea' as Country, 1892520 as Population, 28050 as LandKM2
		union select 'Ethiopia' as Country, 132060000 as Population, 1128571 as LandKM2
		union select 'Eritrea' as Country, 3535600 as Population, 121040 as LandKM2
		union select 'Estonia' as Country, 1360550 as Population, 42750 as LandKM2
		union select 'Faroe Islands' as Country, 55400 as Population, 1366 as LandKM2
		union select 'Falkland Islands' as Country, 3470 as Population, 12173 as LandKM2
		union select 'Fiji' as Country, 928784 as Population, 18270 as LandKM2
		union select 'Finland' as Country, 5617310 as Population, 303940 as LandKM2
		union select 'France' as Country, 66548500 as Population, 547557 as LandKM2
		union select 'French Guiana' as Country, 308522 as Population, 83534 as LandKM2
		union select 'French Polynesia' as Country, 281807 as Population, 3471 as LandKM2
		union select 'Djibouti' as Country, 1168720 as Population, 23180 as LandKM2
		union select 'Gabon' as Country, 2538950 as Population, 257670 as LandKM2
		union select 'Georgia' as Country, 3807670 as Population, 69490 as LandKM2
		union select 'Gambia' as Country, 2759990 as Population, 10120 as LandKM2
		union select 'Palestine' as Country, 5495440 as Population, 6020 as LandKM2
		union select 'Germany' as Country, 84552200 as Population, 349390 as LandKM2
		union select 'Ghana' as Country, 34427400 as Population, 227533 as LandKM2
		union select 'Gibraltar' as Country, 39329 as Population, 6 as LandKM2
		union select 'Kiribati' as Country, 134518 as Population, 810 as LandKM2
		union select 'Greece' as Country, 10047800 as Population, 128900 as LandKM2
		union select 'Greenland' as Country, 55840 as Population, 410450 as LandKM2
		union select 'Grenada' as Country, 117207 as Population, 340 as LandKM2
		union select 'Guadeloupe' as Country, 375106 as Population, 1628 as LandKM2
		union select 'Guam' as Country, 167777 as Population, 540 as LandKM2
		union select 'Guatemala' as Country, 18406400 as Population, 107160 as LandKM2
		union select 'Guinea' as Country, 14754800 as Population, 245720 as LandKM2
		union select 'Guyana' as Country, 831087 as Population, 196850 as LandKM2
		union select 'Haiti' as Country, 11772600 as Population, 27560 as LandKM2
		union select 'Vatican City' as Country, 496 as Population, 0 as LandKM2
		union select 'Honduras' as Country, 10825700 as Population, 111890 as LandKM2
		union select 'Hong Kong' as Country, 7414910 as Population, 1050 as LandKM2
		union select 'Hungary' as Country, 9676140 as Population, 91260 as LandKM2
		union select 'Iceland' as Country, 393396 as Population, 100830 as LandKM2
		union select 'India' as Country, 1450940000 as Population, 2973190 as LandKM2
		union select 'Indonesia' as Country, 283488000 as Population, 1877519 as LandKM2
		union select 'Iran' as Country, 91567700 as Population, 1622500 as LandKM2
		union select 'Iraq' as Country, 46042000 as Population, 434128 as LandKM2
		union select 'Ireland' as Country, 5255020 as Population, 68890 as LandKM2
		union select 'Israel' as Country, 9387020 as Population, 21640 as LandKM2
		union select 'Italy' as Country, 59342900 as Population, 295717 as LandKM2
		union select 'Côte d''Ivoire' as Country, 31934200 as Population, 318000 as LandKM2
		union select 'Jamaica' as Country, 2839180 as Population, 10830 as LandKM2
		union select 'Japan' as Country, 123753000 as Population, 364500 as LandKM2
		union select 'Kazakhstan' as Country, 20592600 as Population, 2699700 as LandKM2
		union select 'Jordan' as Country, 11552900 as Population, 88794 as LandKM2
		union select 'Kenya' as Country, 56432900 as Population, 569140 as LandKM2
		union select 'North Korea' as Country, 26498800 as Population, 120410 as LandKM2
		union select 'South Korea' as Country, 51717600 as Population, 97600 as LandKM2
		union select 'Kuwait' as Country, 4934510 as Population, 17820 as LandKM2
		union select 'Kyrgyzstan' as Country, 7186010 as Population, 191800 as LandKM2
		union select 'Laos' as Country, 7769820 as Population, 230800 as LandKM2
		union select 'Lebanon' as Country, 5805960 as Population, 10230 as LandKM2
		union select 'Lesotho' as Country, 2337420 as Population, 30360 as LandKM2
		union select 'Latvia' as Country, 1871870 as Population, 62230 as LandKM2
		union select 'Liberia' as Country, 5612820 as Population, 96320 as LandKM2
		union select 'Libya' as Country, 7381020 as Population, 1759540 as LandKM2
		union select 'Liechtenstein' as Country, 39870 as Population, 160 as LandKM2
		union select 'Lithuania' as Country, 2859110 as Population, 62620 as LandKM2
		union select 'Luxembourg' as Country, 673036 as Population, 2574 as LandKM2
		union select 'Macau' as Country, 720262 as Population, 32 as LandKM2
		union select 'Madagascar' as Country, 31965000 as Population, 581800 as LandKM2
		union select 'Malawi' as Country, 21655300 as Population, 94280 as LandKM2
		union select 'Malaysia' as Country, 35557700 as Population, 328550 as LandKM2
		union select 'Maldives' as Country, 527799 as Population, 300 as LandKM2
		union select 'Mali' as Country, 24478600 as Population, 1220190 as LandKM2
		union select 'Malta' as Country, 539607 as Population, 320 as LandKM2
		union select 'Martinique' as Country, 343195 as Population, 1128 as LandKM2
		union select 'Mauritania' as Country, 5169400 as Population, 1030700 as LandKM2
		union select 'Mauritius' as Country, 1271170 as Population, 2030 as LandKM2
		union select 'Mexico' as Country, 130861000 as Population, 1943950 as LandKM2
		union select 'Monaco' as Country, 38631 as Population, 2 as LandKM2
		union select 'Mongolia' as Country, 3475540 as Population, 1557506 as LandKM2
		union select 'Moldova' as Country, 3034960 as Population, 32884 as LandKM2
		union select 'Montenegro' as Country, 638479 as Population, 13450 as LandKM2
		union select 'Montserrat' as Country, 4389 as Population, 102 as LandKM2
		union select 'Morocco' as Country, 38081200 as Population, 446300 as LandKM2
		union select 'Mozambique' as Country, 34631800 as Population, 786380 as LandKM2
		union select 'Oman' as Country, 5281540 as Population, 309500 as LandKM2
		union select 'Namibia' as Country, 3030130 as Population, 823290 as LandKM2
		union select 'Nauru' as Country, 11947 as Population, 20 as LandKM2
		union select 'Nepal' as Country, 29651100 as Population, 143350 as LandKM2
		union select 'Netherlands' as Country, 18228700 as Population, 33670 as LandKM2
		union select 'Curacao' as Country, 185482 as Population, 444 as LandKM2
		union select 'Aruba' as Country, 108066 as Population, 180 as LandKM2
		union select 'Sint Maarten' as Country, 43350 as Population, 34 as LandKM2
		union select 'New Caledonia' as Country, 292639 as Population, 18280 as LandKM2
		union select 'Vanuatu' as Country, 327777 as Population, 12190 as LandKM2
		union select 'New Zealand' as Country, 5213940 as Population, 263310 as LandKM2
		union select 'Nicaragua' as Country, 6916140 as Population, 120340 as LandKM2
		union select 'Niger' as Country, 27032400 as Population, 1266700 as LandKM2
		union select 'Nigeria' as Country, 232679000 as Population, 910770 as LandKM2
		union select 'Niue' as Country, 1819 as Population, 261 as LandKM2
		union select 'Norway' as Country, 5576660 as Population, 364285 as LandKM2
		union select 'Northern Mariana Islands' as Country, 44278 as Population, 460 as LandKM2
		union select 'Micronesia' as Country, 113160 as Population, 700 as LandKM2
		union select 'Marshall Islands' as Country, 37548 as Population, 180 as LandKM2
		union select 'Palau' as Country, 17695 as Population, 460 as LandKM2
		union select 'Pakistan' as Country, 251269000 as Population, 770880 as LandKM2
		union select 'Panama' as Country, 4515580 as Population, 74180 as LandKM2
		union select 'Papua New Guinea' as Country, 10576500 as Population, 452860 as LandKM2
		union select 'Paraguay' as Country, 6929150 as Population, 397300 as LandKM2
		union select 'Peru' as Country, 34217800 as Population, 1280000 as LandKM2
		union select 'Philippines' as Country, 115844000 as Population, 298170 as LandKM2
		union select 'Poland' as Country, 38539200 as Population, 306130 as LandKM2
		union select 'Portugal' as Country, 10425300 as Population, 91605 as LandKM2
		union select 'Guinea-Bissau' as Country, 2201350 as Population, 28120 as LandKM2
		union select 'Timor-Leste' as Country, 1400640 as Population, 14870 as LandKM2
		union select 'Puerto Rico' as Country, 3242200 as Population, 8870 as LandKM2
		union select 'Qatar' as Country, 3048420 as Population, 11490 as LandKM2
		union select 'Reunion' as Country, 878591 as Population, 2512 as LandKM2
		union select 'Romania' as Country, 19015100 as Population, 230080 as LandKM2
		union select 'Russia' as Country, 144820000 as Population, 16376870 as LandKM2
		union select 'Rwanda' as Country, 14256600 as Population, 24670 as LandKM2
		union select 'Saint Barthelemy' as Country, 11258 as Population, 25 as LandKM2
		union select 'Saint Kitts and Nevis' as Country, 46843 as Population, 260 as LandKM2
		union select 'Anguilla' as Country, 14598 as Population, 91 as LandKM2
		union select 'Saint Lucia' as Country, 179744 as Population, 610 as LandKM2
		union select 'Saint Martin' as Country, 26129 as Population, 50 as LandKM2
		union select 'Saint Pierre and Miquelon' as Country, 5628 as Population, 242 as LandKM2
		union select 'Saint Vincent and the Grenadines' as Country, 100616 as Population, 390 as LandKM2
		union select 'San Marino' as Country, 33581 as Population, 60 as LandKM2
		union select 'São Tomé and Príncipe' as Country, 235536 as Population, 960 as LandKM2
		union select 'Saudi Arabia' as Country, 33962800 as Population, 2149690 as LandKM2
		union select 'Senegal' as Country, 18502000 as Population, 192530 as LandKM2
		union select 'Serbia' as Country, 6736220 as Population, 87460 as LandKM2
		union select 'Seychelles' as Country, 130418 as Population, 460 as LandKM2
		union select 'Sierra Leone' as Country, 8642020 as Population, 72180 as LandKM2
		union select 'Singapore' as Country, 5832390 as Population, 718 as LandKM2
		union select 'Slovakia' as Country, 5506760 as Population, 49035 as LandKM2
		union select 'Vietnam' as Country, 100988000 as Population, 313429 as LandKM2
		union select 'Slovenia' as Country, 2118700 as Population, 20136 as LandKM2
		union select 'Somalia' as Country, 19009200 as Population, 627340 as LandKM2
		union select 'South Africa' as Country, 64007200 as Population, 1213090 as LandKM2
		union select 'Zimbabwe' as Country, 16634400 as Population, 386850 as LandKM2
		union select 'Spain' as Country, 47910500 as Population, 499556 as LandKM2
		union select 'South Sudan' as Country, 11943400 as Population, 631930 as LandKM2
		union select 'Sudan' as Country, 50449000 as Population, 1868000 as LandKM2
		union select 'Western Sahara' as Country, 590506 as Population, 266000 as LandKM2
		union select 'Suriname' as Country, 634431 as Population, 156000 as LandKM2
		union select 'Eswatini' as Country, 1242820 as Population, 17200 as LandKM2
		union select 'Sweden' as Country, 10607000 as Population, 407283 as LandKM2
		union select 'Switzerland' as Country, 8921980 as Population, 39516 as LandKM2
		union select 'Syria' as Country, 24672800 as Population, 183630 as LandKM2
		union select 'Tajikistan' as Country, 10590900 as Population, 138790 as LandKM2
		union select 'Thailand' as Country, 71668000 as Population, 510890 as LandKM2
		union select 'Togo' as Country, 9515240 as Population, 54390 as LandKM2
		union select 'Tokelau' as Country, 2506 as Population, 10 as LandKM2
		union select 'Tonga' as Country, 104175 as Population, 720 as LandKM2
		union select 'Trinidad and Tobago' as Country, 1507780 as Population, 5130 as LandKM2
		union select 'United Arab Emirates' as Country, 11027100 as Population, 71020 as LandKM2
		union select 'Tunisia' as Country, 12277100 as Population, 155360 as LandKM2
		union select 'Turkey' as Country, 87473800 as Population, 783562 as LandKM2
		union select 'Turkmenistan' as Country, 7494500 as Population, 469930 as LandKM2
		union select 'Turks and Caicos Islands' as Country, 46535 as Population, 948 as LandKM2
		union select 'Tuvalu' as Country, 9646 as Population, 30 as LandKM2
		union select 'Uganda' as Country, 50015100 as Population, 200520 as LandKM2
		union select 'Ukraine' as Country, 37860200 as Population, 579400 as LandKM2
		union select 'North Macedonia' as Country, 1823010 as Population, 25220 as LandKM2
		union select 'Egypt' as Country, 116538000 as Population, 995450 as LandKM2
		union select 'United Kingdom' as Country, 69138200 as Population, 241930 as LandKM2
		union select 'Guernsey' as Country, 64280 as Population, 63 as LandKM2
		union select 'Jersey' as Country, 103846 as Population, 120 as LandKM2
		union select 'Isle of Man' as Country, 84160 as Population, 570 as LandKM2
		union select 'Tanzania' as Country, 68560200 as Population, 885800 as LandKM2
		union select 'United States of America' as Country, 345427000 as Population, 9147420 as LandKM2
		union select 'United States Virgin Islands' as Country, 84905 as Population, 347 as LandKM2
		union select 'Burkina Faso' as Country, 23548800 as Population, 273600 as LandKM2
		union select 'Uruguay' as Country, 3386590 as Population, 175020 as LandKM2
		union select 'Uzbekistan' as Country, 36361900 as Population, 440650 as LandKM2
		union select 'Venezuela' as Country, 28405500 as Population, 882050 as LandKM2
		union select 'Wallis and Futuna' as Country, 11277 as Population, 274 as LandKM2
		union select 'Samoa' as Country, 218019 as Population, 2780 as LandKM2
		union select 'Yemen' as Country, 40583200 as Population, 527970 as LandKM2
		union select 'Zambia' as Country, 21315000 as Population, 743390 as LandKM2
		) P ) P inner join 
		Country C on P.Country = C.Name