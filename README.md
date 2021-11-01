# cell_shadow

![Screenshot](https://github.com/ajay-pal-singh/cell_shadow/blob/main/screenShot.png)

Give shadow to any type of cell easily with this file.
Just download the file and add it to your project.

Usage:
Add this line in cellForItemAt indexPath 
```
cell.addShadow(to: .bottom, size: 5, color: .darkGray, radius: 5.0, opacity: 0.6)
```
Change shadow position, replace botttom with any of these, .allSides, .bottom, .left, .top, .right

.allSides can give shadow to all 4 sides

Choose opacity range from 0.0 - 1.0 
