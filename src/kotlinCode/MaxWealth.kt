package kotlinCode

fun main() {
    val accounts = arrayOf(intArrayOf(1, 2, 3), intArrayOf(3, 2, 1))
    println(maxWealth(accounts))
}

fun maxWealth(accounts: Array<IntArray>): Int {
    var ans = Integer.MIN_VALUE
    for (ints: IntArray in accounts) {
        var sum = 0
        for (anInt: Int in ints) {
            sum += anInt
        }
        if (sum > ans) {
            ans = sum;
        }
    }
    return ans
}