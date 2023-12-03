# studentreport
The class teacher of class VII has the scores of his class students in 4 subjects. Now he has to
make a couple of calculations to calculate if the student has scored above/below average
among the fellow students of the same grade. And also prepare a report based on this.
The grade system is as follows.
Grade - (operator) - Total score
A >= 340
340 > B >= 300
C < 300
Now the teacher asks you to write a computer program to solve his problem. All he needs is :-
1. A scorecard for each student
* with the grade he/she falls into.
* is the student above or below average (average being, average of scores of all students in the
same grade).
2. Number of students in each grade
3. Number of students above their grade average.
4. Number of students below their grade average.
Input scores is as follows.
Each record is a comma separated string. The string contains the student id in the beginning,
followed by scores in four subjects. The score will be subject name and actual score separated
by hyphen.
1,S1-88,S2-53,S3-69,S4-64
2,S1-92,S2-86,S3-93,S4-77
3,S1-53,S2-59,S3-72,S4-59
4,S1-60,S2-52,S3-85,S4-62
5,S1-85,S2-53,S3-74,S4-61
6,S1-72,S2-91,S3-72,S4-89
7,S1-72,S2-71,S3-77,S4-91
8,S1-89,S2-60,S3-94,S4-59
9,S1-63,S2-61,S3-80,S4-57
10,S1-86,S2-84,S3-65,S4-72
11,S1-83,S2-75,S3-89,S4-89
12,S1-65,S2-63,S3-65,S4-80
13,S1-57,S2-56,S3-56,S4-59
14,S1-60,S2-52,S3-77,S4-75

15,S1-67,S2-56,S3-85,S4-62
16,S1-75,S2-84,S3-61,S4-90
17,S1-64,S2-53,S3-56,S4-77
18,S1-60,S2-51,S3-55,S4-66
19,S1-83,S2-70,S3-69,S4-65
20,S1-57,S2-76,S3-75,S4-59
21,S1-63,S2-84,S3-52,S4-74
22,S1-61,S2-64,S3-65,S4-53
23,S1-73,S2-83,S3-86,S4-73
24,S1-58,S2-67,S3-74,S4-85
25,S1-52,S2-53,S3-55,S4-83
26,S1-57,S2-81,S3-55,S4-70
27,S1-61,S2-68,S3-55,S4-91
28,S1-63,S2-68,S3-65,S4-72
29,S1-71,S2-63,S3-87,S4-70
30,S1-60,S2-65,S3-79,S4-81
31,S1-52,S2-92,S3-78,S4-81
32,S1-66,S2-65,S3-80,S4-73
33,S1-73,S2-51,S3-55,S4-58
34,S1-86,S2-80,S3-66,S4-71
35,S1-91,S2-69,S3-69,S4-90
36,S1-70,S2-78,S3-72,S4-78
37,S1-66,S2-94,S3-89,S4-52
38,S1-94,S2-52,S3-58,S4-82
39,S1-70,S2-51,S3-57,S4-54
40,S1-92,S2-90,S3-55,S4-84
41,S1-66,S2-81,S3-86,S4-75
42,S1-67,S2-54,S3-77,S4-94
43,S1-56,S2-80,S3-67,S4-57
44,S1-83,S2-72,S3-77,S4-86
45,S1-55,S2-79,S3-79,S4-66
46,S1-53,S2-57,S3-50,S4-84
47,S1-57,S2-76,S3-78,S4-52
48,S1-69,S2-51,S3-69,S4-90
49,S1-68,S2-72,S3-56,S4-81
50,S1-85,S2-63,S3-55,S4-54

Outputs :-

Score card
ID Subject1 Subject2 Subject3 Subject4 Grand-Total Grade Average-Compare
| 01 | 88 | 53 | 69 | 64 | 274 | C | ABOVE |
| 02 | 92 | 86 | 93 | 77 | 348 | A | ABOVE |
| 03 | 53 | 59 | 72 | 59 | 243 | C | BELOW |
| 04 | 60 | 52 | 85 | 62 | 259 | C | BELOW |
| 05 | 85 | 53 | 74 | 61 | 273 | C | ABOVE |
| 06 | 72 | 91 | 72 | 89 | 324 | B | ABOVE |
| 07 | 72 | 71 | 77 | 91 | 311 | B | BELOW |
| 08 | 89 | 60 | 94 | 59 | 302 | B | BELOW |
| 09 | 63 | 61 | 80 | 57 | 261 | C | BELOW |
| 10 | 86 | 84 | 65 | 72 | 307 | B | BELOW |
| 11 | 83 | 75 | 89 | 89 | 336 | B | ABOVE |
| 12 | 65 | 63 | 65 | 80 | 273 | C | ABOVE |
| 13 | 57 | 56 | 56 | 59 | 228 | C | BELOW |
| 14 | 60 | 52 | 77 | 75 | 264 | C | BELOW |
| 15 | 67 | 56 | 85 | 62 | 270 | C | ABOVE |
| 16 | 75 | 84 | 61 | 90 | 310 | B | BELOW |
| 17 | 64 | 53 | 56 | 77 | 250 | C | BELOW |
| 18 | 60 | 51 | 55 | 66 | 232 | C | BELOW |
| 19 | 83 | 70 | 69 | 65 | 287 | C | ABOVE |
| 20 | 57 | 76 | 75 | 59 | 267 | C | ABOVE |
| 21 | 63 | 84 | 52 | 74 | 273 | C | ABOVE |
| 22 | 61 | 64 | 65 | 53 | 243 | C | BELOW |
| 23 | 73 | 83 | 86 | 73 | 315 | B | ABOVE |
| 24 | 58 | 67 | 74 | 85 | 284 | C | ABOVE |
| 25 | 52 | 53 | 55 | 83 | 243 | C | BELOW |
| 26 | 57 | 81 | 55 | 70 | 263 | C | BELOW |
| 27 | 61 | 68 | 55 | 91 | 275 | C | ABOVE |
| 28 | 63 | 68 | 65 | 72 | 268 | C | ABOVE |
| 29 | 71 | 63 | 87 | 70 | 291 | C | ABOVE |
| 30 | 60 | 65 | 79 | 81 | 285 | C | ABOVE |
| 31 | 52 | 92 | 78 | 81 | 303 | B | BELOW |
| 32 | 66 | 65 | 80 | 73 | 284 | C | ABOVE |
| 33 | 73 | 51 | 55 | 58 | 237 | C | BELOW |
| 34 | 86 | 80 | 66 | 71 | 303 | B | BELOW |
| 35 | 91 | 69 | 69 | 90 | 319 | B | ABOVE |
| 36 | 70 | 78 | 72 | 78 | 298 | C | ABOVE |
| 37 | 66 | 94 | 89 | 52 | 301 | B | BELOW |

| 38 | 94 | 52 | 58 | 82 | 286 | C | ABOVE |
| 39 | 70 | 51 | 57 | 54 | 232 | C | BELOW |
| 40 | 92 | 90 | 55 | 84 | 321 | B | ABOVE |
| 41 | 66 | 81 | 86 | 75 | 308 | B | BELOW |
| 42 | 67 | 54 | 77 | 94 | 292 | C | ABOVE |
| 43 | 56 | 80 | 67 | 57 | 260 | C | BELOW |
| 44 | 83 | 72 | 77 | 86 | 318 | B | ABOVE |
| 45 | 55 | 79 | 79 | 66 | 279 | C | ABOVE |
| 46 | 53 | 57 | 50 | 84 | 244 | C | BELOW |
| 47 | 57 | 76 | 78 | 52 | 263 | C | BELOW |
| 48 | 69 | 51 | 69 | 90 | 279 | C | ABOVE |
| 49 | 68 | 72 | 56 | 81 | 277 | C | ABOVE |
| 50 | 85 | 63 | 55 | 54 | 257 | C | BELOW |
---------------------------------------------------------------------------

---------------------------------------------------
Grade report
Number of students in A Grade :: 1
Number of students in B Grade :: 14
Number of students in C Grade :: 35
Number of students above their grade average :: 26
Number of students below their grade average :: 24
---------------------------------------------------
