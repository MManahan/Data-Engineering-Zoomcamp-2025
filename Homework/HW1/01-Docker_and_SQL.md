# Homework Submission for Module 1 Docker/Terraform

## Module 1 Homework (Docker & SQL)

### Question 1. Knowing docker tags

Run the command to get information on Docker 

```docker --help```

Now run the command to get help on the "docker build" command:

```docker build --help```

Do the same for "docker run".

Which tag has the following text? - *Automatically remove the container when it exits* 

- __`--rm`__


### Question 2. Understanding docker first run 

Run docker with the python:3.9 image in an interactive mode and the entrypoint of bash.
Now check the python modules that are installed ( use ```pip list``` ). 

What is version of the package *wheel* ?

- ~~0.42.0~~
- ~~1.0.0~~
- ~~23.0.1~~
- ~~58.1.0~~

None of the above. It was __`0.45.1`__

## Question 3. Count records 

How many taxi trips were totally made on September 18th 2019?

Tip: started and finished on 2019-09-18. 

~~~~
SELECT count(1)

FROM yellow_taxi_data

WHERE date(tpep_pickup_datetime) = '2019-09-18'
        and date(tpep_dropff_datetime) = '2019-09-18' 
~~~~


`239,842`


## Question 4. Longest trip for each day

Which was the pick up day with the longest trip distance?
Use the pick up time for your calculations.

~~~~
SELECT date(tpep_pickup_datetime)
        , max(trip_distance) as Max_Trip_Distance_by_day
FROM yellow_taxi_data
GROUP BY 1
ORDER BY 2 desc
LIMIT 10
~~~~


- `2019-09-16 (603.5 miles)`



## Question 5. Three biggest pick up Boroughs

Consider lpep_pickup_datetime in '2019-09-18' and ignoring Borough has Unknown

Which were the 3 pick up Boroughs that had a sum of total_amount superior to 50000?
 
- "Brooklyn" "Manhattan" "Queens"
- "Bronx" "Brooklyn" "Manhattan"
- "Bronx" "Manhattan" "Queens" 
- "Brooklyn" "Queens" "Staten Island"

## Question 6. Largest tip

For the passengers picked up in September 2019 in the zone name Astoria which was the drop off zone that had the largest tip?
We want the name of the zone, not the id.

Note: it's not a typo, it's `tip` , not `trip`

- Central Park
- Jamaica
- JFK Airport
- Long Island City/Queens Plaza

## Question 7. Creating Resources

After updating the main.tf and variable.tf files run:

```
terraform apply
```

Paste the output of this command into the homework submission form.

