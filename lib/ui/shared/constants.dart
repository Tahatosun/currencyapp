const List<String> curencyBaseList = [
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'DKK',
  'INR',
  'CHF',
  'MXN',
  'CZK',
  'SGD',
  'THB',
  'HRK',
  'MYR',
  'NOK',
  'CNY',
  'BGN',
  'PHP',
  'SEK',
  'PLN',
  'ZAR',
  'CAD',
  'ISK',
  'BRL',
  'RON',
  'NZD',
  'TRY',
  'JPY',
  'RUB',
  'KRW',
  'USD',
  'HUF',
  'AUD'
];

const Map<String, dynamic> currencyMap = {
  'AFA': 'Afghanistan Afghani (AFA)',
  'ALL': 'Albanian Lek (ALL)',
  'DZD': 'Algerian Dinar (DZD)',
  'AOA': 'Angolan New Kwanza (AOA)',
  'ARS': 'Argentine Peso (ARS)',
  'AMD': 'Armenian Dram (AMD)',
  'AWG': 'Aruba Florin (AWG)',
  'AUD': 'Australian Dollar (AUD)',
  'AZM': 'Azerbaijani Manat (AZM)',
  'BSD': 'Bahamian Dollar (BSD)',
  'BHD': 'Bahraini Dinar (BHD)',
  'BDT': 'Bangladesh Taka (BDT)',
  'BBD': 'Barbados Dollar (BBD)',
  'BYR': 'Belarus Ruble (BYR)',
  'BZD': 'Belize Dollar (BZD)',
  'BMD': 'Bermuda Dollar (BMD)',
  'BTN': 'Bhutan Ngultrum (BTN)',
  'BOB': 'Bolivian Boliviano (BOB)',
  'BAM': 'Bosnian Marka (BAM)',
  'BWP': 'Botswana Pula (BWP)',
  'BRL': 'Brazilian Real (BRL)',
  'GBP': 'British Pound (GBP)',
  'BND': 'Brunei Dollar (BND)',
  'BGN': 'Bulgarian Lev (BGN)',
  'BIF': 'Burundi Franc (BIF)',
  'KHR': 'Cambodia Riel (KHR)',
  'CAD': 'Canadian Dollar (CAD)',
  'CVE': 'Cape Verde Escudo (CVE)',
  'KYD': 'Cayman Islands Dollar (KYD)',
  'XOF': 'CFA Franc (BCEAO) (XOF)',
  'XAF': 'CFA Franc (BEAC) (XAF)',
  'CLP': 'Chilean Peso (CLP)',
  'CNY': 'Chinese Yuan (CNY)',
  'COP': 'Colombian Peso (COP)',
  'KMF': 'Comoros Franc (KMF)',
  'CDF': 'Congolese Franc (CDF)',
  'CRC': 'Costa Rica Colon (CRC)',
  'HRK': 'Croatian Kuna (HRK)',
  'CUP': 'Cuban Peso (CUP)',
  'CZK': 'Czech Koruna (CZK)',
  'DKK': 'Danish Krone (DKK)',
  'DJF': 'Dijibouti Franc (DJF)',
  'DOP': 'Dominican Peso (DOP)',
  'XCD': 'East Caribbean Dollar (XCD)',
  'EGP': 'Egyptian Pound (EGP)',
  'SVC': 'El Salvador Colon (SVC)',
  'ERN': 'Eritrea Nakfa (ERN)',
  'ETB': 'Ethiopian Birr (ETB)',
  'EUR': 'Euro (EUR)',
  'FKP': 'Falkland Islands Pound (FKP)',
  'FJD': 'Fiji Dollar (FJD)',
  'GMD': 'Gambian Dalasi (GMD)',
  'GEL': 'Georgian Lari (GEL)',
  'GHC': 'Ghanian Cedi (GHC)',
  'GIP': 'Gibraltar Pound (GIP)',
  'XAU': 'Gold Ounces (XAU)',
  'GTQ': 'Guatemala Quetzal (GTQ)',
  'GGP': 'Guernsey Pound (GGP)',
  'GNF': 'Guinea Franc (GNF)',
  'GYD': 'Guyana Dollar (GYD)',
  'HTG': 'Haiti Gourde (HTG)',
  'HNL': 'Honduras Lempira (HNL)',
  'HKD': 'Hong Kong Dollar (HKD)',
  'HUF': 'Hungarian Forint (HUF)',
  'ISK': 'Iceland Krona (ISK)',
  'INR': 'Indian Rupee (INR)',
  'IDR': 'Indonesian Rupiah (IDR)',
  'IRR': 'Iran Rial (IRR)',
  'IQD': 'Iraqi Dinar (IQD)',
  'IMP': 'Isle of Man Pound (IMP)',
  'ILS': 'Israeli Shekel (ILS)',
  'JMD': 'Jamaican Dollar (JMD)',
  'JPY': 'Japanese Yen (JPY)',
  'JEP': 'Jersey Pound (JEP)',
  'JOD': 'Jordanian Dinar (JOD)',
  'KZT': 'Kazakhstan Tenge (KZT)',
  'KES': 'Kenyan Shilling (KES)',
  'KRW': 'Korean Won (KRW)',
  'KWD': 'Kuwaiti Dinar (KWD)',
  'KGS': 'Kyrgyzstan Som (KGS)',
  'LAK': 'Lao Kip (LAK)',
  'LBP': 'Lebanese Pound (LBP)',
  'LSL': 'Lesotho Loti (LSL)',
  'LRD': 'Liberian Dollar (LRD)',
  'LYD': 'Libyan Dinar (LYD)',
  'MOP': 'Macau Pataca (MOP)',
  'MKD': 'Macedonian Denar (MKD)',
  'MGF': 'Malagasy Franc (MGF)',
  'MWK': 'Malawi Kwacha (MWK)',
  'MYR': 'Malaysian Ringgit (MYR)',
  'MVR': 'Maldives Rufiyaa (MVR)',
  'MRO': 'Mauritania Ougulya (MRO)',
  'MUR': 'Mauritius Rupee (MUR)',
  'MXN': 'Mexican Peso (MXN)',
  'MDL': 'Moldovan Leu (MDL)',
  'MNT': 'Mongolian Tugrik (MNT)',
  'MAD': 'Moroccan Dirham (MAD)',
  'MZM': 'Mozambique Metical (MZM)',
  'MMK': 'Myanmar Kyat (MMK)',
  'NAD': 'Namibian Dollar (NAD)',
  'NPR': 'Nepalese Rupee (NPR)',
  'ANG': 'Neth Antilles Guilder (ANG)',
  'NZD': 'New Zealand Dollar (NZD)',
  'NIO': 'Nicaragua Cordoba (NIO)',
  'NGN': 'Nigerian Naira (NGN)',
  'KPW': 'North Korean Won (KPW)',
  'NOK': 'Norwegian Krone (NOK)',
  'OMR': 'Omani Rial (OMR)',
  'XPF': 'Pacific Franc (XPF)',
  'PKR': 'Pakistani Rupee (PKR)',
  'XPD': 'Palladium Ounces (XPD)',
  'PAB': 'Panama Balboa (PAB)',
  'PGK': 'Papua New Guinea Kina (PGK)',
  'PYG': 'Paraguayan Guarani (PYG)',
  'PEN': 'Peruvian Nuevo Sol (PEN)',
  'PHP': 'Philippine Peso (PHP)',
  'XPT': 'Platinum Ounces (XPT)',
  'PLN': 'Polish Zloty (PLN)',
  'QAR': 'Qatar Rial (QAR)',
  'RON': 'Romanian Leu (RON)',
  'RUB': 'Russian Rouble (RUB)',
  'RWF': 'Rwanda Franc (RWF)',
  'WST': 'Samoa Tala (WST)',
  'STD': 'Sao Tome Dobra (STN)',
  'SAR': 'Saudi Arabian Riyal (SAR)',
  'SCR': 'Seychelles Rupee (SCR)',
  'SLL': 'Sierra Leone Leone (SLL)',
  'XAG': 'Silver Ounces (XAG)',
  'SGD': 'Singapore Dollar (SGD)',
  'SBD': 'Solomon Islands Dollar (SBD)',
  'SOS': 'Somali Shilling (SOS)',
  'ZAR': 'South African Rand (ZAR)',
  'LKR': 'Sri Lanka Rupee (LKR)',
  'SHP': 'St Helena Pound (SHP)',
  'SSP': 'Sudanese Pound (SSP)',
  'SRD': 'Surinam Dollar (SRD)',
  'SZL': 'Swaziland Lilageni (SZL)',
  'SEK': 'Swedish Krona (SEK)',
  'CHF': 'Swiss Franc (CHF)',
  'SYP': 'Syrian Pound (SYP)',
  'TWD': 'Taiwan Dollar (TWD)',
  'TZS': 'Tanzanian Shilling (TZS)',
  'THB': 'Thai Baht (THB)',
  'TOP': "Tonga Pa'anga (TOP)",
  'TTD': 'Trinidad&Tobago Dollar (TTD)',
  'TND': 'Tunisian Dinar (TND)',
  'TRY': 'Turkish Lira (TRY)',
  'TMM': 'Turkmen Manat (TMM)',
  'USD': 'U.S. Dollar (USD)',
  'AED': 'UAE Dirham (AED)',
  'UGX': 'Ugandan Shilling (UGX)',
  'UAH': 'Ukraine Hryvnia (UAH)',
  'UYU': 'Uruguayan New Peso (UYU)',
  'UZS': 'Uzbekistani Sum (UZS)',
  'VUV': 'Vanuatu Vatu (VUV)',
  'VEB': 'Venezuelan Bolivar (VEB)',
  'VND': 'Vietnam Dong (VND)',
  'YER': 'Yemen Riyal (YER)',
  'YUM': 'Yugoslav Dinar (YUM)',
  'ZRN': 'Zaire New Zaire (ZRN)',
  'ZMK': 'Zambian Kwacha (ZMK)',
  'ZWD': 'Zimbabwe Dollar (ZWD)'
};
