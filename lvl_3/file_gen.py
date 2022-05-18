import random
num_list=list(map(lambda x:str(x).zfill(5),range(1,30000)))
random.shuffle(num_list)
with open('/home/lvl3/spell_book.txt','w') as file:
    for ele in num_list:
        if ele !='29997':
            file.write(f"{ele}-mandram : bhaja..bhaja..pada..pada..\n")
        else:
            file.write(f"{ele}-mandram : |===== ambala_pr4vu =====| \n")
