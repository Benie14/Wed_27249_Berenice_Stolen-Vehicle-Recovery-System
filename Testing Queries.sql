2️⃣ Testing Queries

Basic retrieval:

SQL> SELECT * FROM Owner WHERE ROWNUM <= 5; --

  OWNER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE           EMAIL
--------------- --------------------------------------------------
OWNER_ADDRESS
--------------------------------------------------------------------------------
         1
Owner_1
555-1001        owner1@example.com
Address 1


  OWNER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE           EMAIL
--------------- --------------------------------------------------
OWNER_ADDRESS
--------------------------------------------------------------------------------
         2
Owner_2
555-1002        owner2@example.com
Address 2


  OWNER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE           EMAIL
--------------- --------------------------------------------------
OWNER_ADDRESS
--------------------------------------------------------------------------------
         3
Owner_3
555-1003        owner3@example.com
Address 3


  OWNER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE           EMAIL
--------------- --------------------------------------------------
OWNER_ADDRESS
--------------------------------------------------------------------------------
         4
Owner_4
555-1004        owner4@example.com
Address 4


  OWNER_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
PHONE           EMAIL
--------------- --------------------------------------------------
OWNER_ADDRESS
--------------------------------------------------------------------------------
         5
Owner_5
555-1005        owner5@example.com
Address 5

SQL> SELECT * FROM Vehicle WHERE Vehicle_Year > 2018;

VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
         4 PLATE00004 Camry
                              4 Active                       2019

         5 PLATE00005 Focus
                              5 Active                       2020

         6 PLATE00006 Civic
                              6 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
         7 PLATE00007 Camry
                              7 Active                       2022

        12 PLATE00012 Civic
                             12 Active                       2019

        13 PLATE00013 Camry
                             13 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        14 PLATE00014 Focus
                             14 Active                       2021

        15 PLATE00015 Civic
                             15 Active                       2022

        20 PLATE00020 Focus
                             20 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        21 PLATE00021 Civic
                             21 Active                       2020

        22 PLATE00022 Camry
                             22 Active                       2021

        23 PLATE00023 Focus
                             23 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        28 PLATE00028 Camry
                             28 Active                       2019

        29 PLATE00029 Focus
                             29 Active                       2020

        30 PLATE00030 Civic
                             30 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        31 PLATE00031 Camry
                             31 Active                       2022

        36 PLATE00036 Civic
                             36 Active                       2019

        37 PLATE00037 Camry
                             37 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        38 PLATE00038 Focus
                             38 Active                       2021

        39 PLATE00039 Civic
                             39 Active                       2022

        44 PLATE00044 Focus
                             44 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        45 PLATE00045 Civic
                             45 Active                       2020

        46 PLATE00046 Camry
                             46 Active                       2021

        47 PLATE00047 Focus
                             47 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        52 PLATE00052 Camry
                             52 Active                       2019

        53 PLATE00053 Focus
                             53 Active                       2020

        54 PLATE00054 Civic
                             54 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        55 PLATE00055 Camry
                             55 Active                       2022

        60 PLATE00060 Civic
                             60 Active                       2019

        61 PLATE00061 Camry
                             61 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        62 PLATE00062 Focus
                             62 Active                       2021

        63 PLATE00063 Civic
                             63 Active                       2022

        68 PLATE00068 Focus
                             68 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        69 PLATE00069 Civic
                             69 Active                       2020

        70 PLATE00070 Camry
                             70 Active                       2021

        71 PLATE00071 Focus
                             71 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        76 PLATE00076 Camry
                             76 Active                       2019

        77 PLATE00077 Focus
                             77 Active                       2020

        78 PLATE00078 Civic
                             78 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        79 PLATE00079 Camry
                             79 Active                       2022

        84 PLATE00084 Civic
                             84 Active                       2019

        85 PLATE00085 Camry
                             85 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        86 PLATE00086 Focus
                             86 Active                       2021

        87 PLATE00087 Civic
                             87 Active                       2022

        92 PLATE00092 Focus
                             92 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
        93 PLATE00093 Civic
                             93 Active                       2020

        94 PLATE00094 Camry
                             94 Active                       2021

        95 PLATE00095 Focus
                             95 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       100 PLATE00100 Camry
                            100 Active                       2019

       101 PLATE00101 Focus
                              1 Active                       2020

       102 PLATE00102 Civic
                              2 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       103 PLATE00103 Camry
                              3 Active                       2022

       108 PLATE00108 Civic
                              8 Active                       2019

       109 PLATE00109 Camry
                              9 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       110 PLATE00110 Focus
                             10 Active                       2021

       111 PLATE00111 Civic
                             11 Active                       2022

       116 PLATE00116 Focus
                             16 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       117 PLATE00117 Civic
                             17 Active                       2020

       118 PLATE00118 Camry
                             18 Active                       2021

       119 PLATE00119 Focus
                             19 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       124 PLATE00124 Camry
                             24 Active                       2019

       125 PLATE00125 Focus
                             25 Active                       2020

       126 PLATE00126 Civic
                             26 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       127 PLATE00127 Camry
                             27 Active                       2022

       132 PLATE00132 Civic
                             32 Active                       2019

       133 PLATE00133 Camry
                             33 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       134 PLATE00134 Focus
                             34 Active                       2021

       135 PLATE00135 Civic
                             35 Active                       2022

       140 PLATE00140 Focus
                             40 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       141 PLATE00141 Civic
                             41 Active                       2020

       142 PLATE00142 Camry
                             42 Active                       2021

       143 PLATE00143 Focus
                             43 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       148 PLATE00148 Camry
                             48 Active                       2019

       149 PLATE00149 Focus
                             49 Active                       2020

       150 PLATE00150 Civic
                             50 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       151 PLATE00151 Camry
                             51 Active                       2022

       156 PLATE00156 Civic
                             56 Active                       2019

       157 PLATE00157 Camry
                             57 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       158 PLATE00158 Focus
                             58 Active                       2021

       159 PLATE00159 Civic
                             59 Active                       2022

       164 PLATE00164 Focus
                             64 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       165 PLATE00165 Civic
                             65 Active                       2020

       166 PLATE00166 Camry
                             66 Active                       2021

       167 PLATE00167 Focus
                             67 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       172 PLATE00172 Camry
                             72 Active                       2019

       173 PLATE00173 Focus
                             73 Active                       2020

       174 PLATE00174 Civic
                             74 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       175 PLATE00175 Camry
                             75 Active                       2022

       180 PLATE00180 Civic
                             80 Active                       2019

       181 PLATE00181 Camry
                             81 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       182 PLATE00182 Focus
                             82 Active                       2021

       183 PLATE00183 Civic
                             83 Active                       2022

       188 PLATE00188 Focus
                             88 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       189 PLATE00189 Civic
                             89 Active                       2020

       190 PLATE00190 Camry
                             90 Active                       2021

       191 PLATE00191 Focus
                             91 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       196 PLATE00196 Camry
                             96 Active                       2019

       197 PLATE00197 Focus
                             97 Active                       2020

       198 PLATE00198 Civic
                             98 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       199 PLATE00199 Camry
                             99 Active                       2022


100 rows selected.

Joins Test results:

-- Vehicles with owner names
SQL> SELECT v.Vehicle_ID, v.Model, o.Full_Name
  2  FROM Vehicle v
  3  JOIN Owner o ON v.Owner_ID = o.Owner_ID;

VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
         1 Camry
Owner_1

         2 Focus
Owner_2

         3 Civic
Owner_3


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
         4 Camry
Owner_4

         5 Focus
Owner_5

         6 Civic
Owner_6


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
         7 Camry
Owner_7

         8 Focus
Owner_8

         9 Civic
Owner_9


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        10 Camry
Owner_10

        11 Focus
Owner_11

        12 Civic
Owner_12


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        13 Camry
Owner_13

        14 Focus
Owner_14

        15 Civic
Owner_15


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        16 Camry
Owner_16

        17 Focus
Owner_17

        18 Civic
Owner_18


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        19 Camry
Owner_19

        20 Focus
Owner_20

        21 Civic
Owner_21


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        22 Camry
Owner_22

        23 Focus
Owner_23

        24 Civic
Owner_24


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        25 Camry
Owner_25

        26 Focus
Owner_26

        27 Civic
Owner_27


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        28 Camry
Owner_28

        29 Focus
Owner_29

        30 Civic
Owner_30


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        31 Camry
Owner_31

        32 Focus
Owner_32

        33 Civic
Owner_33


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        34 Camry
Owner_34

        35 Focus
Owner_35

        36 Civic
Owner_36


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        37 Camry
Owner_37

        38 Focus
Owner_38

        39 Civic
Owner_39


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        40 Camry
Owner_40

        41 Focus
Owner_41

        42 Civic
Owner_42


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        43 Camry
Owner_43

        44 Focus
Owner_44

        45 Civic
Owner_45


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        46 Camry
Owner_46

        47 Focus
Owner_47

        48 Civic
Owner_48


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        49 Camry
Owner_49

        50 Focus
Owner_50

        51 Civic
Owner_51


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        52 Camry
Owner_52

        53 Focus
Owner_53

        54 Civic
Owner_54


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        55 Camry
Owner_55

        56 Focus
Owner_56

        57 Civic
Owner_57


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        58 Camry
Owner_58

        59 Focus
Owner_59

        60 Civic
Owner_60


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        61 Camry
Owner_61

        62 Focus
Owner_62

        63 Civic
Owner_63


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        64 Camry
Owner_64

        65 Focus
Owner_65

        66 Civic
Owner_66


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        67 Camry
Owner_67

        68 Focus
Owner_68

        69 Civic
Owner_69


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        70 Camry
Owner_70

        71 Focus
Owner_71

        72 Civic
Owner_72


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        73 Camry
Owner_73

        74 Focus
Owner_74

        75 Civic
Owner_75


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        76 Camry
Owner_76

        77 Focus
Owner_77

        78 Civic
Owner_78


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        79 Camry
Owner_79

        80 Focus
Owner_80

        81 Civic
Owner_81


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        82 Camry
Owner_82

        83 Focus
Owner_83

        84 Civic
Owner_84


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        85 Camry
Owner_85

        86 Focus
Owner_86

        87 Civic
Owner_87


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        88 Camry
Owner_88

        89 Focus
Owner_89

        90 Civic
Owner_90


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        91 Camry
Owner_91

        92 Focus
Owner_92

        93 Civic
Owner_93


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        94 Camry
Owner_94

        95 Focus
Owner_95

        96 Civic
Owner_96


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
        97 Camry
Owner_97

        98 Focus
Owner_98

        99 Civic
Owner_99


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       100 Camry
Owner_100

       101 Focus
Owner_1

       102 Civic
Owner_2


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       103 Camry
Owner_3

       104 Focus
Owner_4

       105 Civic
Owner_5


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       106 Camry
Owner_6

       107 Focus
Owner_7

       108 Civic
Owner_8


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       109 Camry
Owner_9

       110 Focus
Owner_10

       111 Civic
Owner_11


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       112 Camry
Owner_12

       113 Focus
Owner_13

       114 Civic
Owner_14


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       115 Camry
Owner_15

       116 Focus
Owner_16

       117 Civic
Owner_17


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       118 Camry
Owner_18

       119 Focus
Owner_19

       120 Civic
Owner_20


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       121 Camry
Owner_21

       122 Focus
Owner_22

       123 Civic
Owner_23


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       124 Camry
Owner_24

       125 Focus
Owner_25

       126 Civic
Owner_26


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       127 Camry
Owner_27

       128 Focus
Owner_28

       129 Civic
Owner_29


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       130 Camry
Owner_30

       131 Focus
Owner_31

       132 Civic
Owner_32


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       133 Camry
Owner_33

       134 Focus
Owner_34

       135 Civic
Owner_35


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       136 Camry
Owner_36

       137 Focus
Owner_37

       138 Civic
Owner_38


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       139 Camry
Owner_39

       140 Focus
Owner_40

       141 Civic
Owner_41


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       142 Camry
Owner_42

       143 Focus
Owner_43

       144 Civic
Owner_44


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       145 Camry
Owner_45

       146 Focus
Owner_46

       147 Civic
Owner_47


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       148 Camry
Owner_48

       149 Focus
Owner_49

       150 Civic
Owner_50


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       151 Camry
Owner_51

       152 Focus
Owner_52

       153 Civic
Owner_53


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       154 Camry
Owner_54

       155 Focus
Owner_55

       156 Civic
Owner_56


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       157 Camry
Owner_57

       158 Focus
Owner_58

       159 Civic
Owner_59


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       160 Camry
Owner_60

       161 Focus
Owner_61

       162 Civic
Owner_62


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       163 Camry
Owner_63

       164 Focus
Owner_64

       165 Civic
Owner_65


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       166 Camry
Owner_66

       167 Focus
Owner_67

       168 Civic
Owner_68


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       169 Camry
Owner_69

       170 Focus
Owner_70

       171 Civic
Owner_71


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       172 Camry
Owner_72

       173 Focus
Owner_73

       174 Civic
Owner_74


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       175 Camry
Owner_75

       176 Focus
Owner_76

       177 Civic
Owner_77


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       178 Camry
Owner_78

       179 Focus
Owner_79

       180 Civic
Owner_80


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       181 Camry
Owner_81

       182 Focus
Owner_82

       183 Civic
Owner_83


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       184 Camry
Owner_84

       185 Focus
Owner_85

       186 Civic
Owner_86


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       187 Camry
Owner_87

       188 Focus
Owner_88

       189 Civic
Owner_89


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       190 Camry
Owner_90

       191 Focus
Owner_91

       192 Civic
Owner_92


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       193 Camry
Owner_93

       194 Focus
Owner_94

       195 Civic
Owner_95


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       196 Camry
Owner_96

       197 Focus
Owner_97

       198 Civic
Owner_98


VEHICLE_ID MODEL
---------- --------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       199 Camry
Owner_99

       200 Focus
Owner_100


200 rows selected.

-- Alerts and related theft report status
SQL> SELECT a.Alert_ID, a.Alert_Type, t.Status AS Report_Status
  2  FROM Alert a
  3  JOIN Theft_Report t ON a.Report_ID = t.Report_ID;

  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
         1 Email
Recovered

         2 Push
Rejected

         3 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
         4 Email
Recovered

         5 Push
Rejected

         6 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
         7 Email
Recovered

         8 Push
Rejected

         9 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        10 Email
Recovered

        11 Push
Rejected

        12 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        13 Email
Recovered

        14 Push
Rejected

        15 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        16 Email
Recovered

        17 Push
Rejected

        18 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        19 Email
Recovered

        20 Push
Rejected

        21 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        22 Email
Recovered

        23 Push
Rejected

        24 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        25 Email
Recovered

        26 Push
Rejected

        27 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        28 Email
Recovered

        29 Push
Rejected

        30 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        31 Email
Recovered

        32 Push
Rejected

        33 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        34 Email
Recovered

        35 Push
Rejected

        36 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        37 Email
Recovered

        38 Push
Rejected

        39 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        40 Email
Recovered

        41 Push
Rejected

        42 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        43 Email
Recovered

        44 Push
Rejected

        45 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        46 Email
Recovered

        47 Push
Rejected

        48 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        49 Email
Recovered

        50 Push
Rejected

        51 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        52 Email
Recovered

        53 Push
Rejected

        54 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        55 Email
Recovered

        56 Push
Rejected

        57 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        58 Email
Recovered

        59 Push
Rejected

        60 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        61 Email
Recovered

        62 Push
Rejected

        63 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        64 Email
Recovered

        65 Push
Rejected

        66 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        67 Email
Recovered

        68 Push
Rejected

        69 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        70 Email
Recovered

        71 Push
Rejected

        72 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        73 Email
Recovered

        74 Push
Rejected

        75 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        76 Email
Recovered

        77 Push
Rejected

        78 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        79 Email
Recovered

        80 Push
Rejected

        81 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        82 Email
Recovered

        83 Push
Rejected

        84 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        85 Email
Recovered

        86 Push
Rejected

        87 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        88 Email
Recovered

        89 Push
Rejected

        90 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        91 Email
Recovered

        92 Push
Rejected

        93 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        94 Email
Recovered

        95 Push
Rejected

        96 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
        97 Email
Recovered

        98 Push
Rejected

        99 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       100 Email
Recovered

       101 Push
Rejected

       102 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       103 Email
Recovered

       104 Push
Rejected

       105 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       106 Email
Recovered

       107 Push
Rejected

       108 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       109 Email
Recovered

       110 Push
Rejected

       111 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       112 Email
Recovered

       113 Push
Rejected

       114 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       115 Email
Recovered

       116 Push
Rejected

       117 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       118 Email
Recovered

       119 Push
Rejected

       120 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       121 Email
Recovered

       122 Push
Rejected

       123 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       124 Email
Recovered

       125 Push
Rejected

       126 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       127 Email
Recovered

       128 Push
Rejected

       129 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       130 Email
Recovered

       131 Push
Rejected

       132 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       133 Email
Recovered

       134 Push
Rejected

       135 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       136 Email
Recovered

       137 Push
Rejected

       138 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       139 Email
Recovered

       140 Push
Rejected

       141 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       142 Email
Recovered

       143 Push
Rejected

       144 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       145 Email
Recovered

       146 Push
Rejected

       147 SMS
Pending


  ALERT_ID ALERT_TYPE
---------- --------------------------------------------------
REPORT_STATUS
--------------------
       148 Email
Recovered

       149 Push
Rejected

       150 SMS
Pending


150 rows selected.

Aggregations Test results:

-- Number of vehicles per owner
SQL> SELECT Owner_ID, COUNT(*) AS Vehicle_Count
  2  FROM Vehicle
  3  GROUP BY Owner_ID;

  OWNER_ID VEHICLE_COUNT
---------- -------------
         1             2
         2             2
         3             2
         4             2
         5             2
         6             2
         7             2
         8             2
         9             2
        10             2
        11             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        12             2
        13             2
        14             2
        15             2
        16             2
        17             2
        18             2
        19             2
        20             2
        21             2
        22             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        23             2
        24             2
        25             2
        26             2
        27             2
        28             2
        29             2
        30             2
        31             2
        32             2
        33             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        34             2
        35             2
        36             2
        37             2
        38             2
        39             2
        40             2
        41             2
        42             2
        43             2
        44             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        45             2
        46             2
        47             2
        48             2
        49             2
        50             2
        51             2
        52             2
        53             2
        54             2
        55             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        56             2
        57             2
        58             2
        59             2
        60             2
        61             2
        62             2
        63             2
        64             2
        65             2
        66             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        67             2
        68             2
        69             2
        70             2
        71             2
        72             2
        73             2
        74             2
        75             2
        76             2
        77             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        78             2
        79             2
        80             2
        81             2
        82             2
        83             2
        84             2
        85             2
        86             2
        87             2
        88             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
        89             2
        90             2
        91             2
        92             2
        93             2
        94             2
        95             2
        96             2
        97             2
        98             2
        99             2

  OWNER_ID VEHICLE_COUNT
---------- -------------
       100             2

100 rows selected.

-- Number of alerts by type
SQL> SELECT Alert_Type, COUNT(*) AS Num_Alerts
  2  FROM Alert
  3  GROUP BY Alert_Type;

ALERT_TYPE                                         NUM_ALERTS
-------------------------------------------------- ----------
Email                                                      50
Push                                                       50
SMS                                                        50

