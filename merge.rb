# @param {Integer[]} nums1
# @param {Integer} m is length of nums1
# @param {Integer[]} nums2
# @param {Integer} n is length of nums2
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  # remove extra stuff
  nums1 = nums1.slice(0, m)
  nums2 = nums2.slice(0, n)

  nums2.each do |num2|
    index_to_insert = nums1.find_index{|i| i > num2}
    index_to_insert = index_to_insert > 0 ? index_to_insert : 0
    nums1.insert(index_to_insert, num2)
  end
end
