# Benchmark (Unfinished)

### This page contains all the test cases for each type of bitstream. Each test runs 100,000 iterations.

Note: All results is always in the average not 100% precise sometimes it can be faster or a little bit slower.

---

#### Signed interger 
- I8 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0354s (35.37ms), 0.000354ms/it",
      "Reader" : "0.0455s (45.46ms), 0.000455ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0299s (29.92ms), 0.000299ms/it",
      "Reader" : "0.0489s (48.91ms), 0.000489ms/it"
      ```
- I16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0439s (43.89ms), 0.000439ms/it",
      "Reader" : "0.0564s (56.44ms), 0.000564ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0329s (32.92ms), 0.000329ms/it",
      "Reader" : "0.0596s (59.64ms), 0.000596ms/it"
      ```
- I24 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0488s (48.78ms), 0.000488ms/it",
      "Reader" : "0.0610s (60.95ms), 0.000610ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0374s (37.36ms), 0.000374ms/it",
      "Reader" : "0.0625s (62.49ms), 0.000625ms/it"
      ```
- I32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0401s (40.11ms), 0.000401ms/it",
      "Reader" : "0.0671s (67.13ms), 0.000671ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0348s (34.81ms), 0.000348ms/it",
      "Reader" : "0.0744s (74.44ms), 0.000744ms/it"
      ```
- I40 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0606s (60.64ms), 0.000606ms/it",
      "Reader" : "0.0812s (81.16ms), 0.000812ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0446s (44.58ms), 0.000446ms/it",
      "Reader" : "0.0758s (75.78ms), 0.000758ms/it"
      ```
- I48 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0626s (62.57ms), 0.000626ms/it",
      "Reader" : "0.0825s (82.52ms), 0.000825ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0585s (58.47ms), 0.000585ms/it",
      "Reader" : "0.0781s (78.12ms), 0.000781ms/it"
      ```
- I54 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0642s (64.20ms), 0.000642ms/it",
      "Reader" : "0.0816s (81.58ms), 0.000816ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0495s (49.50ms), 0.000495ms/it",
      "Reader" : "0.0828s (82.77ms), 0.000828ms/it"
      ```
