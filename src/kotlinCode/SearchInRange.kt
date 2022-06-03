package kotlinCode

fun main() {
    var arr = intArrayOf(18, 12, -7, 3, 14, 28)
    var target = 14
    println(linearSearch(arr, target, 0, arr.size))
}

// FIXME: 03/06/22  
fun linearSearch(arr: IntArray, target: Int, start: Int, end: Int): Int {
    if (arr.isEmpty()) {
        return -1;
    }
    var index = start
    (index..arr.size).takeWhile { start <= end }.forEach { _ ->
        var element = arr[index]
        if (element == target) {
        }
            return target
    }
    return -1
}