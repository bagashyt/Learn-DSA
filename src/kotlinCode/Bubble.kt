package kotlinCode

fun main() {
    val arr = intArrayOf(5, 3, 4, 1, 2)
    bubble(arr)
    println(arr)
}

fun bubble(arr: IntArray) {
    var swapped: Boolean

    // FIXME: 02/06/22  
    for (i in arr.indices) {
        swapped = false
        for (j in arr.indices - i) {
            if (arr[j] < arr[j - 1]) {
                var temp = arr[j]
                arr[j] = arr[j - 1]
                arr[j - 1] = temp
                swapped = true
            }
        }
        if (!swapped) {
            break
        }
    }
}