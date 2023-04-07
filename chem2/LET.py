with open("./test/output.txt", "r") as file:
    length = 0
    energy = 0
    for line in file:
        # 将当前行分割成多个数据
        data = line.split()
        if data:
        # 将第一个数据转换为整数，并累加到总和中
            length += float(data[0])
            energy += float(data[1])

print("total_dose:",energy)
print("LET:", energy/length)