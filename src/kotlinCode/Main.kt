package kotlinCode

    fun main(){
        val nums = listOf<Int>(23, 45, 1, 2, 8, 19, -3, 16, -11, 28)
        val target = 19
        val ans = linearSearch(nums, target)
        println(ans)
    }

    private fun linearSearch(arr: List<Int>, target: Int): Int {
        if (arr.isEmpty()){
            return -1
        }

        for (index in arr.indices){
            val element = arr[index]
            if (element == target){
                return index
            }
        }
        return  -1
    }
