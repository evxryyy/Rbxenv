# Benchmark

### This page contains all the test cases for each type of bitstream. Each test runs 100,000 iterations.

Note: All results are always in the average not 100% precise sometimes it can be faster or a little bit slower. And types who take more than `1 seconds` will get improved.

---

#### Signed integer 
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

#### Unsigned integer
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

---

#### CFrames
- CFrameQuaternion :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0956s (95.57ms), 0.000956ms/it",
      "Reader" : "0.0983s (98.25ms), 0.000983ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0588s (58.80ms), 0.000588ms/it",
      "Reader" : "0.0985s (98.51ms), 0.000985ms/it"
      ```
- CFrameF32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0866s (86.59ms), 0.000866ms/it",
      "Reader" : "0.1117s (111.67ms), 0.001117ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0504s (50.37ms), 0.000504ms/it",
      "Reader" : "0.0725s (72.51ms), 0.000725ms/it"
      ```
- CFrameF64 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0772s (77.16ms), 0.000772ms/it",
      "Reader" : "0.0809s (80.89ms), 0.000809ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0506s (50.56ms), 0.000506ms/it",
      "Reader" : "0.0740s (73.99ms), 0.000740ms/it"
      ```
- CFrameQuantized :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0873s (87.27ms), 0.000873ms/it",
      "Reader" : "0.1160s (115.99ms), 0.001160ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0602s (60.18ms), 0.000602ms/it",
      "Reader" : "0.0954s (95.38ms), 0.000954ms/it"
      ```

---

#### Others
- Color3 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0637s (63.71ms), 0.000637ms/it",
      "Reader" : "0.0815s (81.50ms), 0.000815ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0468s (46.81ms), 0.000468ms/it",
      "Reader" : "0.0642s (64.23ms), 0.000642ms/it"
      ```
- Color3F32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0738s (73.83ms), 0.000738ms/it",
      "Reader" : "0.0758s (75.76ms), 0.000758ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0398s (39.80ms), 0.000398ms/it",
      "Reader" : "0.0593s (59.31ms), 0.000593ms/it"
      ```
- Color3F64 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0666s (66.63ms), 0.000666ms/it",
      "Reader" : "0.0786s (78.64ms), 0.000786ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0407s (40.65ms), 0.000407ms/it",
      "Reader" : "0.0604s (60.37ms), 0.000604ms/it"
      ```
- UDim :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0512s (51.24ms), 0.000512ms/it",
      "Reader" : "0.0835s (83.45ms), 0.000835ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0353s (35.29ms), 0.000353ms/it",
      "Reader" : "0.0592s (59.23ms), 0.000592ms/it"
      ```
- UDim2 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1065s (106.47ms), 0.001065ms/it",
      "Reader" : "0.0624s (62.39ms), 0.000624ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0699s (69.85ms), 0.000699ms/it",
      "Reader" : "0.0604s (60.45ms), 0.000604ms/it"
      ```
- RectFloat32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0962s (96.17ms), 0.000962ms/it",
      "Reader" : "0.0700s (69.99ms), 0.000700ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0671s (67.07ms), 0.000671ms/it",
      "Reader" : "0.0655s (65.49ms), 0.000655ms/it"
      ```
- Rect :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1039s (103.91ms), 0.001039ms/it",
      "Reader" : "0.0704s (70.36ms), 0.000704ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0669s (66.92ms), 0.000669ms/it",
      "Reader" : "0.0589s (58.90ms), 0.000589ms/it"
      ```
- Enum :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0470s (47.05ms), 0.000470ms/it",
      "Reader" : "0.0733s (73.28ms), 0.000733ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0326s (32.55ms), 0.000326ms/it",
      "Reader" : "0.0556s (55.57ms), 0.000556ms/it"
      ```
- Region3 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0906s (90.59ms), 0.000906ms/it",
      "Reader" : "0.2096s (209.56ms), 0.002096ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0620s (61.97ms), 0.000620ms/it",
      "Reader" : "0.2002s (200.21ms), 0.002002ms/it"
      ```
- Region3Quaternion :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1276s (127.56ms), 0.001276ms/it",
      "Reader" : "0.2314s (231.41ms), 0.002314ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0750s (75.05ms), 0.000750ms/it",
      "Reader" : "0.2344s (234.40ms), 0.002344ms/it"
      ```
- Region3CFrameF32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1056s (105.63ms), 0.001056ms/it",
      "Reader" : "0.2465s (246.46ms), 0.002465ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0614s (61.43ms), 0.000614ms/it",
      "Reader" : "0.2028s (202.83ms), 0.002028ms/it"
      ```
- Region3Quantized :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1171s (117.07ms), 0.001171ms/it",
      "Reader" : "0.2258s (225.84ms), 0.002258ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0785s (78.50ms), 0.000785ms/it",
      "Reader" : "0.2317s (231.69ms), 0.002317ms/it"
      ```
- Region3int16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1061s (106.12ms), 0.001061ms/it",
      "Reader" : "0.1746s (174.59ms), 0.001746ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0691s (69.05ms), 0.000691ms/it",
      "Reader" : "0.1779s (177.90ms), 0.001779ms/it"
      ```
- RotationCurveKey :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1598s (159.79ms), 0.012302ms/it",
      "Reader" : "0.1919s (191.30ms), 0.001919ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1148s (114.79ms), 0.001148ms/it",
      "Reader" : "0.1663s (166.32ms), 0.001663ms/it"
      ```
- RotationCurveKeyQuaternion :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1812s (181.16ms), 0.001814ms/it",
      "Reader" : "0.1868s (186.79ms), 0.001868ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1261s (126.12ms), 0.001261ms/it",
      "Reader" : "0.1891s (189.12ms), 0.001891ms/it"
      ```
- RotationCurveKeyCFrameF32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1674s (167.37ms), 0.001674ms/it",
      "Reader" : "0.1592s (159.18ms), 0.001592ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1592s (159.18ms), 0.001592ms/it",
      "Reader" : "0.1611s (161.13ms), 0.001611ms/it"
      ```
- RotationCurveKeyQuantized :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1542s (154.21ms), 0.001542ms/it",
      "Reader" : "0.1818s (181.78ms), 0.001818ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1227s (122.67ms), 0.001227ms/it",
      "Reader" : "0.1914s (191.39ms), 0.001914ms/it"
      ```
- FloatCurveKey :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1111s (111.14ms), 0.001111ms/it",
      "Reader" : "0.0899s (89.88ms), 0.000899ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0752s (75.17ms), 0.000752ms/it",
      "Reader" : "0.0827s (82.66ms), 0.000827ms/it"
      ```
- FloatCurveKeyF32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1157s (115.74ms), 0.001157ms/it",
      "Reader" : "0.0824s (82.43ms), 0.000824ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0747s (74.74ms), 0.000747ms/it",
      "Reader" : "0.0823s (82.32ms), 0.000823ms/it"
      ```
- FloatCurveKeyF16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1162s (116.20ms), 0.001162ms/it",
      "Reader" : "0.0960s (96.03ms), 0.000960ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0800s (80.04ms), 0.000800ms/it",
      "Reader" : "0.0903s (90.28ms), 0.000903ms/it"
      ```
- ColorSequence :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.2348s (234.79ms), 0.002348ms/it",
      "Reader" : "0.2290s (228.99ms), 0.002290ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1843s (184.27ms), 0.001843ms/it",
      "Reader" : "0.2446s (244.55ms), 0.002446ms/it"
      ```
- ColorSequenceF32 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.2564s (256.38ms), 0.002564ms/it",
      "Reader" : "0.2319s (231.89ms), 0.002319ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1847s (184.68ms), 0.001847ms/it",
      "Reader" : "0.2357s (235.67ms), 0.002357ms/it"
      ```
- ColorSequenceF64 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.2470s (246.96ms), 0.002470ms/it",
      "Reader" : "0.2423s (242.32ms), 0.002423ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1895s (189.48ms), 0.001895ms/it",
      "Reader" : "0.2280s (227.99ms), 0.002280ms/it"
      ```
- NumberRange :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0519s (51.90ms), 0.000519ms/it",
      "Reader" : "0.0868s (86.81ms), 0.000868ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0382s (38.17ms), 0.000382ms/it",
      "Reader" : "0.0579s (57.89ms), 0.000579ms/it"
      ```
- NumberRangeF16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0767s (76.68ms), 0.000767ms/it",
      "Reader" : "0.0887s (88.69ms), 0.000887ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0556s (55.56ms), 0.000556ms/it",
      "Reader" : "0.0706s (70.62ms), 0.000706ms/it"
      ```
- NumberRangeF64 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.0616s (61.60ms), 0.000616ms/it",
      "Reader" : "0.0832s (83.18ms), 0.000832ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.0394s (39.44ms), 0.000394ms/it",
      "Reader" : "0.0608s (60.83ms), 0.000608ms/it"
      ```
- NumberSequence :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1592s (159.23ms), 0.001592ms/it",
      "Reader" : "0.0620s (61.98ms), 0.000620ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1147s (114.72ms), 0.001147ms/it",
      "Reader" : "0.0609s (60.90ms), 0.000609ms/it"
      ```
- NumberSequenceF16 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1824s (182.36ms), 0.001824ms/it",
      "Reader" : "0.0738s (73.79ms), 0.000738ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1458s (145.82ms), 0.001458ms/it",
      "Reader" : "0.0731s (73.09ms), 0.000731ms/it"
      ```
- NumberSequenceF64 :
  -  With `AutoAllocation`:
      ```json
      "Writer" : "0.1555s (155.52ms), 0.001555ms/it",
      "Reader" : "0.0590s (59.05ms), 0.000590ms/it"
      ```
  -  Without `AutoAllocation`:
      ```json
      "Writer" : "0.1173s (117.35ms), 0.001173ms/it",
      "Reader" : "0.0593s (59.25ms), 0.000593ms/it"
      ```
