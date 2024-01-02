func numRollsToTarget(_ n: Int, _ k: Int, _ target: Int) -> [[Int]] {
  let MOD = 1_000_000_007

  var dp = Array(repeating: Array(repeating: 0, count: target + 1), count: n + 1)

  dp[0][0] = 1

  for i in 1...n {
    

      for j in 1...target {
        

          for face in 1...k {
            
              if j - face >= 0 {
                  print("n:",i)
                  print("target:",j)
                  print("k, face:",face)
                  print(dp[i][j])
                  dp[i][j] = (dp[i][j] + dp[i - 1][j - face]) % MOD
                  print(dp[i - 1][j - face])
              }
          }
      }
  }

  return dp
}

let n1 = 2, k1 = 6, target1 = 5
print(numRollsToTarget(n1, k1, target1))  // Output: 1