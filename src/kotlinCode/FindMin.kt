package kotlinCode

    fun main(){
        val arr = listOf<Int>(18, 12, 7, 3, 14, 28)
        println(min(arr))
    }

    fun min( arr: List<Int>): Int{
        var ans = arr[0]
        for (i in arr.indices){
            if (arr[i] < ans){
                ans = arr[i]
            }
        }
        return ans
    }
