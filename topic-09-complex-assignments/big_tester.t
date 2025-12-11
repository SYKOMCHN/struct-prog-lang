print("Running Outputs");

print "example 1";

for (i = 0; i < 5; i = i + 1) {
    print i
}

print "example 2";
for (i = 0; i < 3; i = i + 1) {
    print "*" * i; 
    for (j = 0; j < 3; j = j + 1) {
        print "*" * j;
    }
}

print("Finish Running Outputs");

print("Running Test Cases");

print "Testing basic for loop with all components...";
sum = 0;
for (i = 0; i < 5; i = i + 1) {
    sum = sum + i
}
assert sum == 10;  // 0 + 1 + 2 + 3 + 4

print "Testing for loop with empty init...";
i = 0;
sum = 0;
for (; i < 5; i = i + 1) {
    sum = sum + i
}
assert sum == 10;
assert i == 5;

print "Testing for loop with empty condition (infinite loop with break)...";
sum = 0;
for (i = 0; ; i = i + 1) {
    sum = sum + i;
    if (i >= 4) {
        break
    }
}
assert sum == 10;
assert i == 4;

print "Testing for loop with empty increment...";
sum = 0;
for (i = 0; i < 5; ) {
    sum = sum + i;
    i = i + 1
}
assert sum == 10;

print "Testing for loop with break statement...";
sum = 0;
for (i = 0; i < 10; i = i + 1) {
    if (i == 5) {
        break
    }
    sum = sum + i
}
assert sum == 10;  // 0 + 1 + 2 + 3 + 4

print "Testing for loop with continue statement...";
sum = 0;
for (i = 0; i < 5; i = i + 1) {
    if (i == 2) {
        continue
    }
    sum = sum + i
}
assert sum == 8;  // 0 + 1 + 3 + 4 (skipped 2)

print "Testing nested for loops...";
sum = 0;
for (i = 0; i < 3; i = i + 1) {
    for (j = 0; j < 3; j = j + 1) {
        sum = sum + 1
    }
}
assert sum == 9;  // 3 x 3

print "Testing nested for loops with multiplication...";
sum = 0;
for (i = 1; i <= 3; i = i + 1) {
    for (j = 1; j <= 3; j = j + 1) {
        sum = sum + i * j
    }
}
assert sum == 36;  // (1*1 + 1*2 + 1*3) + (2*1 + 2*2 + 2*3) + (3*1 + 3*2 + 3*3)

print "Testing for loop iterating backwards...";
sum = 0;
for (i = 5; i > 0; i = i - 1) {
    sum = sum + i
}
assert sum == 15;  // 5 + 4 + 3 + 2 + 1

print "Testing for loop with multiple increment...";
sum = 0;
for (i = 0; i < 10; i = i + 2) {
    sum = sum + i
}
assert sum == 20;  // 0 + 2 + 4 + 6 + 8

print "Testing for loop with break in nested loop...";
sum = 0;
for (i = 0; i < 3; i = i + 1) {
    for (j = 0; j < 5; j = j + 1) {
        if (j == 2) {
            break
        }
        sum = sum + 1
    }
}
assert sum == 6;  // (2 + 2 + 2) iterations

print "Testing for loop with continue in nested loop...";
sum = 0;
for (i = 0; i < 3; i = i + 1) {
    for (j = 0; j < 3; j = j + 1) {
        if (j == 1) {
            continue
        }
        sum = sum + 1
    }
}
assert sum == 6;  // (2 + 2 + 2) iterations (skipped middle of each)

print "Testing for loop modifying external variable...";
x = 100;
for (i = 0; i < 5; i = i + 1) {
    x = x - 10
}
assert x == 50;
assert i == 5;

print "Testing for loop with complex condition...";
count = 0;
for (i = 0; i < 10 && i < 5; i = i + 1) {
    count = count + 1
}
assert count == 5;

print "Testing for loop with assignment in init...";
sum = 0;
for (x = 0; x < 5; x = x + 1) {
    sum = sum + x
}
assert sum == 10;

print "Testing for loop with floating point...";
sum = 0.0;
for (i = 0.0; i < 3.0; i = i + 0.5) {
    sum = sum + i
}
assert sum == 7.5;  // 0.0 + 0.5 + 1.0 + 1.5 + 2.0 + 2.5

print "Testing for loop accessing array elements...";
arr = [1, 2, 3, 4, 5];
sum = 0;
for (i = 0; i < 5; i = i + 1) {
    sum = sum + arr[i]
}
assert sum == 15;

print "Testing for loop modifying array elements...";
arr = [0, 0, 0];
for (i = 0; i < 3; i = i + 1) {
    arr[i] = i + 1
}
assert arr[0] == 1;
assert arr[1] == 2;
assert arr[2] == 3;

print "Testing triple nested for loops...";
count = 0;
for (i = 0; i < 2; i = i + 1) {
    for (j = 0; j < 2; j = j + 1) {
        for (k = 0; k < 2; k = k + 1) {
            count = count + 1
        }
    }
}
assert count == 8;  // 2 x 2 x 2

print("Finished Running Test Cases");
