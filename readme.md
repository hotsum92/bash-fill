# fill

##### read sample.tsv

```
cat ./sample.tsv
```

```tsv
v1	v2	v3
1	1	1
2		2
	3	3
4	4	
```

##### column -t

shift empty columns to the left

```
cat ./sample.tsv | column -t
```

```tsv
v1  v2  v3
1   1   1
2   2
3   3
4   4
```


##### fill | column -t

avoid shift empty columns to the left

```
cat ./sample.tsv | ./bin/fill | column -t
```

```tsv
v1  v2  v3
1   1   1
2   -   2
-   3   3
4   4   -
```

##### fill | column -t | fill

```
cat ./sample.tsv | ./bin/fill 'O' | column -t
```

```tsv
v1  v2  v3
1   1   1
2   O   2
O   3   3
4   4   O
```
