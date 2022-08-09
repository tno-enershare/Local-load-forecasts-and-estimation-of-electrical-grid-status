import asyncio
import time


async def count():
    print("One")
    await asyncio.sleep(1)
    print("Two")


async def main():
    await asyncio.gather(count(), count(), count(), count(), count())


def sync_count():
    print("One")
    time.sleep(1)
    print("Two")


def sync_main():
    for _ in range(3):
        sync_count()


if __name__ == "__main__":
    s = time.perf_counter()
    asyncio.run(main())
    elapsed = time.perf_counter() - s
    print(f"{__file__} executed in {elapsed:0.2f} seconds.")

    # s = time.perf_counter()
    # sync_main()
    # elapsed = time.perf_counter() - s
    # print(f"{__file__} executed in {elapsed:0.2f} seconds.")