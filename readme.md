### Supplementary for dataset DBLP

Dear Reviewer,

Thank you again for your careful work and collaboration.

If convenient, could you please verify the following file sizes?  

- **Dataset DBLP** (located in `~/BCviz/datasets/`) should be about **183.9 MB**.  
- **Index files** `DBLP_*.txt` (i.e., `DBLP_MEB_BCviz.txt`, `DBLP_MEB_BCviz+.txt`, …, 9 files in total, located in `~/BCviz/Index-results/`) should each be around **13 MB**.

If the sizes match, please let me know and ignore the rest of this document. 

If any file is much smaller, the indexing for DBLP likely failed, and we would need to rebuild the indexes to update Figure 2. 

---

First, please download the files I have attached:  

- A brief guide `Supplementary.md` for re‑building the indexes,  
- 4 scripts `DBLP-index-time*.sh` to run the experiment, and  
- The `DBLP.tar.xz` archive for convenience.  

Then, the rebuild process are as follows.

#### 1.Obtain dataset DBLP

Place the file `DBLP.tar.xz` in the dataset folder "~/BCviz/datasets". Use the following command to extract `DBLP.tar.xz` into the file named **DBLP**.  

```shell
tar -xJvf DBLP.tar.xz
```

#### 2.Two ways to rebuild index

Please turn to directory  "~/BCviz/construct-BCviz", place the scripts `DBLP-index-time.sh` , `DBLP-index-time1.sh`, `DBLP-index-time2.sh` and `DBLP-index-time3.sh` in this directory.

**Method 1** (Serial,  9 hours) : run `DBLP-index-time.sh`

```
chmod +x DBLP-index-time.sh
nohup ./DBLP-index-time.sh >> ../experiments/2.IndexConstructionTime/DBLP-index-time.txt 
2>&1 &
```

**Method 2** (Parallel, 3 hours): run `DBLP-index-time1.sh`, `DBLP-index-time2.sh` and `DBLP-index-time3.sh` in parallel

```
chmod +x DBLP-index-time1.sh
chmod +x DBLP-index-time2.sh
chmod +x DBLP-index-time3.sh
nohup ./DBLP-index-time1.sh >> ../experiments/2.IndexConstructionTime/DBLP-index-time.txt 
2>&1 &
nohup ./DBLP-index-time2.sh >> ../experiments/2.IndexConstructionTime/DBLP-index-time.txt 
2>&1 &
nohup ./DBLP-index-time3.sh >> ../experiments/2.IndexConstructionTime/DBLP-index-time.txt 
2>&1 &
```

---

The index time is written in `DBLP-index-time.txt`.

Once the script completes, check that the following 9 new index files in `~/BCviz/Index-results/` have been created and that each file is roughly **13 MB**.

```
DBLP_MEB_BCviz.txt
DBLP_MEB_BCviz+.txt
DBLP_MEB_BCviz-.txt

DBLP_MVB_BCviz.txt
DBLP_MVB_BCviz+.txt
DBLP_MVB_BCviz-.txt

DBLP_MBB_BCviz.txt
DBLP_MBB_BCviz+.txt
DBLP_MBB_BCviz-.txt
```

#### 3.Update the result file

**Replace** the following similar contents of **DBLP** in `index-time.txt`  by the results in `DBLP-index-time.txt`.

```
MEB BCviz DBLP 3 3 4018.13
MEB BCviz+ DBLP 3 3 4054.48
MEB BCviz- DBLP 3 3 2262.01
MVB BCviz DBLP 3 3 4048.83
MVB BCviz+ DBLP 3 3 4107.6
MVB BCviz- DBLP 3 3 2282.58
MBB BCviz DBLP 3 3 4011.46
MBB BCviz+ DBLP 3 3 4113
MBB BCviz- DBLP 3 3 1857.48
```

#### 4.Plot the new figures

Turn to directory "~\BCviz\experiments\2.IndexConstructionTime" and run the program "Fig.9.py".

Three new files "MEB-IndexTime.jpg", "MVB-IndexTime.jpg" and "MBB-IndexTime.jpg" will be generated in current directory.



#### If anything goes wrong, please feel free to contact me.



