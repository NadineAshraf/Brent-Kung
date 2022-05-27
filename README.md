**Hello, This project is about Kogge-Stone-8-bits using Verilog HDL.**
# Team Members
> Nadine Ashraf Adeeb.                                                                                                                                                     
> Menna Ahmed Heshmat. ( **Github:** https://github.com/mennaaheshmat )                                                                                                                                                                          
> Tasneem Yassin Mostafa.

# Overview of the adder:
A Parallel Algorithm for the Efficient Solution of a General Class of Recurrence Equations.
The Kogge-Stone adder takes more area to implement than the Brent-Kung adder, but has lower fan-out (the number of gate inputs driven by the output of another single logic gate) at each stage, which increases performance for typical CMOS process nodes.
Each vertical stage produces a "propagate" and a "generate" bit.


![image](https://user-images.githubusercontent.com/91349300/170531608-649ee036-c875-44c5-b000-d3f1d7801ec3.png)




# Design Details:

![image](https://user-images.githubusercontent.com/91349300/170532675-f754d023-9d36-45f0-9d41-c505117a03bd.png)
![image](https://user-images.githubusercontent.com/91349300/170533109-bd791e58-a23a-451e-8ba9-1e6444444451.png)


# Simulation Results:
### 1)Automatic approach
![image](https://user-images.githubusercontent.com/91349300/170533357-8a983981-88f5-4d4e-a41f-39fcaaff9440.png)
### Area:
### Genus timing
![image](https://user-images.githubusercontent.com/91349300/170533760-a5bfdcc6-ba3c-449a-bbd1-482148e471cd.png)

### Timing:
![image](https://user-images.githubusercontent.com/91349300/170533958-274be1b2-5cdd-44d5-b1d1-6d299a49e56b.png)

### 2)Manual Approach:
![image](https://user-images.githubusercontent.com/91349300/170534047-c55bf9cf-428a-4ee1-b598-34e6db0c94a1.png)

### Area:
![image](https://user-images.githubusercontent.com/91349300/170534116-e032ac22-888d-46ce-8a06-e145798d0d8a.png)
### Genus Timing:
![image](https://user-images.githubusercontent.com/91349300/170534258-103a47d0-51af-42f4-b61d-eb00bd1e063c.png)
### Timing:
![image](https://user-images.githubusercontent.com/91349300/170534356-87b027fd-7860-4774-805b-79a9509f5470.png)
**Comparison between the total area of the automatic approach and the manual approach:**

The total area of the automatic approach (1051) is less than the total area of the manual approach (1098).

**Comparison between the speed of the automatic approach and the manual approach:**

The arrival time of the automatic approach is less than the arrival time of the manual approach.





