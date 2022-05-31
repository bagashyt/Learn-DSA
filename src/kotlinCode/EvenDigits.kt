package kotlinCode

import kotlin.math.log10

fun main(){
        val nums = listOf<Int>(12,345,2,6,7896)
        println(digits2(7896))

    }

    /* TODO: "still error"
    fun findNumber(nums: List<Int>): Int{
        var count = 0
        for (num in nums.indices){
            if (even(num)){
                count++
            }
        }
        return count
    }*/

    fun even(num: Int): Boolean{
        var numberOfDigits = digits(num)
        return numberOfDigits % 2 == 0;
    }

    private fun digits(num: Int): Int{
        var nums = num
        if (nums < 0){
            nums *= -1;
        }
        if (nums == 0){
            return 1
        }
        var count = 0
        while (nums > 0){
            count++
            nums = num / 10
        }
        return count
    }

    fun digits2(num: Int): Int{
        var nums = num
        if (num < 0){
            nums = num * -1;
        }
        val digi = log10(nums.toDouble()) +1
        return digi.toInt();
    }
