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

---

#### Unsigned interger
- U1 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0491s (49.08ms), 0.000491ms/it",
      "Reader" : "0.0580s (58.00ms), 0.000580ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0451s (45.06ms), 0.000451ms/it",
      "Reader" : "0.0402s (40.20ms), 0.000402ms/it"
      ```
- U8 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0289s (28.94ms), 0.000289ms/it",
      "Reader" : "0.0438s (43.81ms), 0.000438ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0482s (48.22ms), 0.000482ms/it",
      "Reader" : "0.0580s (58.00ms), 0.000580ms/it"
      ```
- U16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0300s (29.98ms), 0.000300ms/it",
      "Reader" : "0.0416s (41.57ms), 0.000416ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0401s (40.12ms), 0.000401ms/it",
      "Reader" : "0.0595s (59.52ms), 0.000595ms/it"
      ```
- U24 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0345s (34.51ms), 0.000345ms/it",
      "Reader" : "0.0550s (55.03ms), 0.000550ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0537s (53.69ms), 0.000537ms/it",
      "Reader" : "0.0655s (65.49ms), 0.000655ms/it"
      ```
- U32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0333s (33.26ms), 0.000333ms/it",
      "Reader" : "0.0417s (41.69ms), 0.000417ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0331s (33.07ms), 0.000331ms/it",
      "Reader" : "0.0584s (58.43ms), 0.000584ms/it"
      ```
- U40 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0393s (39.35ms), 0.000393ms/it",
      "Reader" : "0.0572s (57.17ms), 0.000572ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0574s (57.40ms), 0.000574ms/it",
      "Reader" : "0.0829s (82.91ms), 0.000829ms/it"
      ```
- U48 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0778s (77.84ms), 0.000778ms/it",
      "Reader" : "0.0825s (82.52ms), 0.000825ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0447s (44.68ms), 0.000447ms/it",
      "Reader" : "0.0603s (60.29ms), 0.000603ms/it"
      ```
- U54 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0765s (76.54ms), 0.000765ms/it",
      "Reader" : "0.0720s (71.98ms), 0.000720ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0460s (45.96ms), 0.000460ms/it",
      "Reader" : "0.0625s (62.55ms), 0.000625ms/it"
      ```

---

#### Floats
- F16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0741s (74.11ms), 0.000741ms/it",
      "Reader" : "0.0636s (63.64ms), 0.000636ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0461s (46.11ms), 0.000461ms/it",
      "Reader" : "0.0527s (52.70ms), 0.000527ms/it"
      ```
- F32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0461s (46.07ms), 0.000461ms/it",
      "Reader" : "0.0621s (62.10ms), 0.000621ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0302s (30.20ms), 0.000302ms/it",
      "Reader" : "0.0441s (44.11ms), 0.000441ms/it"
      ```
- F64 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0484s (48.45ms), 0.000484ms/it",
      "Reader" : "0.0676s (67.55ms), 0.000676ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0420s (42.02ms), 0.000420ms/it",
      "Reader" : "0.0498s (49.78ms), 0.000498ms/it"
      ```

---

#### Strings
- String :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0525s (52.47ms), 0.000525ms/it",
      "Reader" : "0.0574s (57.37ms), 0.000574ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0502s (50.20ms), 0.000502ms/it",
      "Reader" : "0.0469s (46.91ms), 0.000469ms/it"
      ```
- PrefixedString :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.2706s (270.63ms), 0.002706ms/it",
      "Reader" : "0.1248s (124.84ms), 0.001248ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.2112s (211.20ms), 0.002112ms/it",
      "Reader" : "0.1280s (127.99ms), 0.001280ms/it"
      ```

---

#### Bools
- Bool1 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0281s (28.08ms), 0.000281ms/it",
      "Reader" : "0.0444s (44.44ms), 0.000444ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0228s (22.81ms), 0.000228ms/it",
      "Reader" : "0.0508s (50.81ms), 0.000508ms/it"
      ```
- Bool8 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1022s (102.22ms), 0.001022ms/it",
      "Reader" : "0.1531s (153.12ms), 0.001531ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0627s (62.73ms), 0.000627ms/it",
      "Reader" : "0.1242s (124.25ms), 0.001242ms/it"
      ```

---

#### Vectors
- Vector2float32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0663s (66.35ms), 0.000663ms/it",
      "Reader" : "0.0824s (82.37ms), 0.000824ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0423s (42.34ms), 0.000423ms/it",
      "Reader" : "0.0586s (58.57ms), 0.000586ms/it"
      ```
- Vector2int16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0543s (54.34ms), 0.000543ms/it",
      "Reader" : "0.0908s (90.82ms), 0.000908ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0451s (45.11ms), 0.000451ms/it",
      "Reader" : "0.0624s (62.36ms), 0.000624ms/it"
      ```
- Vector2uint16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0617s (61.66ms), 0.000617ms/it",
      "Reader" : "0.0815s (81.47ms), 0.000815ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0435s (43.53ms), 0.000435ms/it",
      "Reader" : "0.0587s (58.66ms), 0.000587ms/it"
      ```
- Vector2 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0707s (70.73ms), 0.000707ms/it",
      "Reader" : "0.0895s (89.54ms), 0.000895ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0410s (41.01ms), 0.000410ms/it",
      "Reader" : "0.0563s (56.27ms), 0.000563ms/it"
      ```
- Vector3float32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0550s (54.98ms), 0.000550ms/it",
      "Reader" : "0.0747s (74.70ms), 0.000747ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0415s (41.52ms), 0.000415ms/it",
      "Reader" : "0.0572s (57.23ms), 0.000572ms/it"
      ```
- Vector3int16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0711s (71.09ms), 0.000711ms/it",
      "Reader" : "0.0803s (80.34ms), 0.000803ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0469s (46.89ms), 0.000469ms/it",
      "Reader" : "0.0616s (61.58ms), 0.000616ms/it"
      ```
- Vector3uint16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0540s (53.95ms), 0.000540ms/it",
      "Reader" : "0.0723s (72.34ms), 0.000723ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0493s (49.33ms), 0.000493ms/it",
      "Reader" : "0.0568s (56.75ms), 0.000568ms/it"
      ```
- Vector3 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0519s (51.93ms), 0.000519ms/it",
      "Reader" : "0.0712s (71.20ms), 0.000712ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0353s (35.33ms), 0.000353ms/it",
      "Reader" : "0.0525s (52.54ms), 0.000525ms/it"
      ```
