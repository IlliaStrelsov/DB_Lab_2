import matplotlib.pyplot as plt
import main

helpingArr = {}
for i in range(len(main.record1)):
    helpingArr[main.record1[i][0]] = main.record1[i][1]

plt.bar(helpingArr.keys(), helpingArr.values(), width=0.5)
plt.xlabel('Жанри ігор')
plt.ylabel('Кількість')
plt.show()

helpingArr = {
    'Na sales': main.record2[0][0],
    'Jp sales': main.record2[0][1],
    'Eu sales': main.record2[0][2],
    'Other sales': main.record2[0][3],
}

fig, ax = plt.subplots()
ax.pie(helpingArr.values(), labels=helpingArr.keys(), autopct='%1.1f%%', shadow=True,rotatelabels=True)
plt.show()



helpingArr = {}
for i in range(len(main.record3)):
    helpingArr[main.record3[i][0]] = main.record3[i][1]

fig, ax = plt.subplots()
ax.plot(helpingArr.keys(), helpingArr.values(), )

plt.xlabel('Platform')
plt.ylabel('Genre')
plt.show()