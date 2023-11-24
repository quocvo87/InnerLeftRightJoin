| 1. Introduction
----------------
    1.1 What is Join (inner), Left Join, Right Join
        + Firstly, 
        + What is RaceData: When multiple process are called to process and they use same CriticalRegion so 

    1.2 How to understand their operating principles 
 


| 2. db Struct
-----------------------

    test(database name)
    |__inner_join1
    |       |__id
    |       |__inner_join1
    |       |__inner_join_id
    |
    |__inner_join2
    |       |__id
    |       |__inner_join2
    |       |__inner_join_id
    |
    |__left_join1
    |       |__id
    |       |__left_join1
    |       |__left_join_id
    |
    |__left_join2
    |       |__id
    |       |__left_join2
    |       |__left_join_id


-----------------------


| 3. Step by step do it
-----------------------

    3.1 Clone/download InnerLeftRightJoin folder to your computer
        3.1.1 Download from browser
            3.1.1.1 Goto folder > D:\YourFolder\InnerLeftRightJoin
            3.1.1.2 Create new database: test 
                and import D:\YourFolder\InnerLeftRightJoin\sql\InnerLeftRightJoin.sql
            3.1.1.3 You have database as step 2 above after import sql success
                

-----------------------

| 4. Do Inner Join, Left Join, Right Join
-----------------------

    4.1 Inner Join
        4.1.1 View current data
            4.1.1.1 inner_join1 table
                + run sql
                    SELECT * 
                    FROM test.inner_join1 i1;
                + Result
                    id     inner_join_1       inner_join_id
                    ---------------------------------------
                    1      inner join text 1      111
                    2      inner join text 2      222
                    3      inner join 1 text 3    111
                    4      inner join 1, text 4   777


            4.1.1.2 inner_join2 table
                + run sql
                    SELECT * 
                    FROM test.inner_join2 i2;
                + Result
                    id      inner_join_2              inner_join_id
                    ---------------------------------------
                    1       inner join 2 text 11        111
                    2       inner join 2 text 222       222
                    3       inner join 2 text 33        111
                    4       Inner join 2 texxt 444      444
                    5       Inner Join 2 text 55        222

            
        4.1.2 Try Inner Join
        + run sql
            SELECT * 
            FROM test.inner_join1 i1
            JOIN test.inner_join2 i2
            ON i1.inner_join_id = i2.inner_join_id

        + Result
            id     inner_join_1       inner_join_id      id     inner_join_2           inner_join_id
            ----------------------------------------------------------------------------------------
            1      inner join text 1      111            1      inner join 2 text 11       111
            3      inner join 1 text 3    111            1      inner join 2 text 11       111
            2      inner join text 2      222            2      inner join 2 text 222      222
            1      inner join text 1      111            3      inner join 2 text 33       111
            3      inner join 1 text 3    111            3      inner join 2 text 33       111
            2      inner join text 2      222            5      Inner Join 2 text 55       222


    4.2 Left Join
        4.2.1 View current data
            4.2.1.1 left_join1 table
                + run sql
                    SELECT * 
                    FROM test.left_join1 l1;

                + Result
                    id      left_join_1           left_join_id
                    ---------------------------------------
                    1      left join text 1         111
                    2      left join text 2         222
                    3      left join 1 text 3       111
                    4      Left joij 1, text 4      999

            4.2.1.2 left_join2 table
                + run sql
                    SELECT * 
                    FROM test.left_join2 l2;

                + Result
                    id      left_join_2           left_join_id
                    ---------------------------------------
                    1      left join 2 text 11        111
                    2      left join 2 text 222       222
                    3      left join 2 text 33        111
                    4      left join 2 texxt 444      444
                    5      left Join 2 text 55        222
                    6      Left join 2, texxti 66     222

        4.2.2 Try Left Join
        + run sql
            SELECT * 
            FROM test.left_join1 l1
            left JOIN test.left_join2 l2
                ON l1.left_join_id = l2.left_join_id;

        + Result
            id     left_join_1            left_join_id       id    left_join_2         left_join_id
            ---------------------------------------------------------------------------------------
            1      left join text 1       111                1      left join 2 text 11        111
            3      left join 1 text 3     111                1      left join 2 text 11        111
            2      left join text 2       222                2      left join 2 text 222       222
            1      left join text 1       111                3      left join 2 text 33        111
            3      left join 1 text 3     111                3      left join 2 text 33        111
            2      left join text 2       222                5      left Join 2 text 55        222
            2      left join text 2       222                6      Left join 2, texxti 66     222
            4      Left joij 1, text 4    999                NULL   NULL                       NULL


-----------------------



