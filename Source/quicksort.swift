
func partition(a: [Int], low: Int, high: Int) -> Int
{
    var arr = a
    var pivot = arr[high]
    var i = -1
    for j in low...high {
        if arr[j] <= pivot {
            i++
            arr.swap(j, i)
        }
    }
    arr.swap(high, i+1)
    return i+1
}

func quickSort(arr: inout [Int], low: Int, high: Int)
{
    if low<high {
        let index = partition(a: arr, low: low, high: high)
        quickSort(arr: &arr, low: low, high: index-1)
        quickSort(arr: &arr, low: index+1, high: high)
    }
}

func runQuickSort()
{
    var arr: [Int] = [5, 2, 7, 8, 4]
    quickSort(arr: &arr, low: 0, high: 4)
    print(arr)
}