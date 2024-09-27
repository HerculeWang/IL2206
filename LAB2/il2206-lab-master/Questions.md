# 2.2 Questions

## 2.2.1
For this and the following questions you may need to again consult 
chapter 16, which describes the functions in MicroC/OS-II in detail.
When dealing with *message queues* does MicroC/OS-II provide a

- (a) non-blocking write? ***OSQPost()*** ***OSQPostFront()*** ***OSQPostOpt()***
- (b) blocking write with timeout?
- (c) blocking write?
- (d) non-blocking read? ***OSQAccept()*** ***OSQQuery()***
- (e) blocking read with timeout? ***OSQPend()***
- (f) blocking read? ***OSQPend() timeout = 0***

## 2.2.2
Which memory management functions can you use to allocate or free
memory in MicroC/OS-II? How do they work and what is the advantage
of these functions compared to usual C-functions as malloc?

In MicroC/OS-II, the following memory management functions are available:

1. **OSMemCreate()**: This function is used to create a memory partition. It takes the following arguments:
   - `void *addr`: The starting address of the memory partition.
   - `INT32U nblocks`: The number of blocks in the partition.
   - `INT32U blksize`: The size of each block in bytes.
   - `INT8U *err`: A pointer to an error code variable.

   The function returns a pointer to the memory partition control block. This control block is used to manage the memory partition.

2. **OSMemGet()**: This function is used to allocate a memory block from a partition. It takes the following arguments:
   - `OS_MEM *pmem`: A pointer to the memory partition control block.
   - `INT8U *err`: A pointer to an error code variable.

   The function returns a pointer to the allocated memory block or `NULL` if no block is available.

3. **OSMemPut()**: This function is used to return a memory block to a partition. It takes the following arguments:
   - `OS_MEM *pmem`: A pointer to the memory partition control block.
   - `void *pblk`: A pointer to the memory block to be returned.

   The function returns the error code.

The advantage of using these MicroC/OS-II memory management functions over the standard C `malloc()` and `free()` functions is that they are designed specifically for use in a real-time operating system environment. Some key advantages include:

1. **Deterministic behavior**: The MicroC/OS-II memory management functions have deterministic behavior, meaning that the time taken to allocate or free a memory block is bounded and predictable. This is important in real-time systems where unpredictable memory management can lead to missed deadlines.

2. **Reduced memory fragmentation**: MicroC/OS-II uses a fixed-size memory block approach, which helps to reduce memory fragmentation compared to the dynamic memory allocation used by `malloc()` and `free()`.

3. **Reduced overhead**: The MicroC/OS-II memory management functions have lower overhead compared to the standard C library functions, as they are optimized for use in a real-time operating system environment.

4. **Integrated with the RTOS**: The MicroC/OS-II memory management functions are tightly integrated with the operating system, allowing for efficient coordination between memory management and other RTOS features, such as task scheduling and synchronization.

Overall, the MicroC/OS-II memory management functions provide a more specialized and efficient approach to memory management in a real-time embedded system compared to the standard C library functions.

## 2.2.3
The function OSQPend returns a pointer void*.
(a) What is a void*-pointer and how can it be used?
(b) How can you regenerate the message that has been send using the void*-pointer.

(a) the void* pointer is a generic pointer type in C that can point to an object of any data type.  
(b) cast the void* pointer to the appropriate data type, and to regenerate the original message, you need to know the actual data type of the message.
