\ Model relief
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  10 x[A,1] + 11 x[A,2] + 12 x[B,1] + 13 x[B,2] + 2 w[1] + 2 w[2]
   + 6 y[low,A,1] + 6.5 y[low,A,2] + 7 y[low,B,1] + 7.5 y[low,B,2]
   + 3.6 y[med,A,1] + 3.9 y[med,A,2] + 4.2 y[med,B,1] + 4.5 y[med,B,2]
   + 2.4 y[high,A,1] + 2.6 y[high,A,2] + 2.8 y[high,B,1] + 3 y[high,B,2]
   + 10 z[low,C,1] + 11 z[low,C,2] + 6 z[med,C,1] + 6.6 z[med,C,2]
   + 4 z[high,C,1] + 4.4 z[high,C,2] + 2.5 delta[low,1] + 2.5 delta[low,2]
   + 1.5 delta[med,1] + 1.5 delta[med,2] + delta[high,1] + delta[high,2]
   + 25 u[low,1] + 25 u[low,2] + 15 u[med,1] + 15 u[med,2] + 10 u[high,1]
   + 10 u[high,2]
Subject To
 pre_cap_A_1: x[A,1] <= 200
 pre_cap_A_2: x[A,2] <= 200
 pre_cap_B_1: x[B,1] <= 150
 pre_cap_B_2: x[B,2] <= 150
 flex_low_A_1: - 0.5 x[A,1] + y[low,A,1] <= 0
 flex_low_A_2: - 0.5 x[A,2] + y[low,A,2] <= 0
 flex_low_B_1: - 0.4 x[B,1] + y[low,B,1] <= 0
 flex_low_B_2: - 0.4 x[B,2] + y[low,B,2] <= 0
 flex_med_A_1: - 0.5 x[A,1] + y[med,A,1] <= 0
 flex_med_A_2: - 0.5 x[A,2] + y[med,A,2] <= 0
 flex_med_B_1: - 0.4 x[B,1] + y[med,B,1] <= 0
 flex_med_B_2: - 0.4 x[B,2] + y[med,B,2] <= 0
 flex_high_A_1: - 0.5 x[A,1] + y[high,A,1] <= 0
 flex_high_A_2: - 0.5 x[A,2] + y[high,A,2] <= 0
 flex_high_B_1: - 0.4 x[B,1] + y[high,B,1] <= 0
 flex_high_B_2: - 0.4 x[B,2] + y[high,B,2] <= 0
 backup_cap_low_C_1: z[low,C,1] <= 100
 backup_cap_low_C_2: z[low,C,2] <= 100
 backup_cap_med_C_1: z[med,C,1] <= 100
 backup_cap_med_C_2: z[med,C,2] <= 100
 backup_cap_high_C_1: z[high,C,1] <= 100
 backup_cap_high_C_2: z[high,C,2] <= 100
 warehouse_1: x[A,1] + x[B,1] - w[1] + 0.5 y[low,A,1] + 0.5 y[low,B,1]
   + 0.3 y[med,A,1] + 0.3 y[med,B,1] + 0.2 y[high,A,1] + 0.2 y[high,B,1]
   + 0.5 z[low,C,1] + 0.3 z[med,C,1] + 0.2 z[high,C,1] <= 0
 warehouse_2: x[A,2] + x[B,2] - w[2] + 0.5 y[low,A,2] + 0.5 y[low,B,2]
   + 0.3 y[med,A,2] + 0.3 y[med,B,2] + 0.2 y[high,A,2] + 0.2 y[high,B,2]
   + 0.5 z[low,C,2] + 0.3 z[med,C,2] + 0.2 z[high,C,2] <= 0
 demand_low_1: x[A,1] + x[B,1] + y[low,A,1] + y[low,B,1] + z[low,C,1]
   >= 100
 demand_low_2: x[A,2] + x[B,2] + y[low,A,2] + y[low,B,2] + z[low,C,2]
   + delta[low,1] - delta[low,2] + u[low,1] - u[low,2] >= 120
 demand_med_1: x[A,1] + x[B,1] + y[med,A,1] + y[med,B,1] + z[med,C,1]
   >= 200
 demand_med_2: x[A,2] + x[B,2] + y[med,A,2] + y[med,B,2] + z[med,C,2]
   + delta[med,1] - delta[med,2] + u[med,1] - u[med,2] >= 180
 demand_high_1: x[A,1] + x[B,1] + y[high,A,1] + y[high,B,1] + z[high,C,1]
   >= 230
 demand_high_2: x[A,2] + x[B,2] + y[high,A,2] + y[high,B,2] + z[high,C,2]
   + delta[high,1] - delta[high,2] + u[high,1] - u[high,2] >= 240
Bounds
End
