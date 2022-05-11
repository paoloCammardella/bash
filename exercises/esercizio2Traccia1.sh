#!/bin/bash

awk 'BEGIN { first = 1; last = 3 }
    {
        for (i = first; i < last; i++)
        {
            printf("%s ", $i)
        }
        print($last)
}' $1