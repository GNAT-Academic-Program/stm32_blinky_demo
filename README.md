# Blinky Demo For STM32 (Alire)

## STM32F429disco
<img width="200px" src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExNWh3Y291NTVrYXNvdTlzM295NG5zaHdiazhjODBubDJsdGM4MmI4byZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/bsrzz3VJLYXkTZaFFQ/giphy.gif"/>

## STM32F746disco
<img width="200px" src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExaGZyNDg1dXlmZW9saDk5dDh2cnRlb2J6anpnb2d4enZrYnE4ZTFmaCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1YFXPRZUw9q4YEypn7/giphy.gif"/>


## Prerequisite

- Alire [Setup Instructions](https://github.com/GNAT-Academic-Program#install-alire-an-ada-package-manager)
- Alire GAP index [Setup Instructions](https://github.com/GNAT-Academic-Program#add-the-gap-alire-index-important)
- OpenOCD
    - `sudo apt install openocd`
- Any of these development board:
    - STM32F429disco
    - STM32F746disco

### Fetch the Crate
```console
alr get stm32_blinky_demo
cd stm32_blinky_demo*
```  

### Configure Board
Edit the `alire.toml` file by uncommenting the board for which you build: (eg. STM32F429disco)
```console
...
[[depends-on]]
stm32f429disco = "0.1.0"
#stm32f746disco = "0.1.0"
...
```  

### Build (Alire)
```console
alr build
```

### Build (GPRBuild)
```console
eval "$(alr printenv)"
gprbuild stm32_blinky_demo.gpr
```

### Build (GnatStudio)
```console
eval "$(alr printenv)"
gnatstudio stm32_blinky_demo.gpr
```

### Program to Board

```console
openocd -f /usr/local/share/openocd/scripts/board/stm32f429disc1.cfg -c 'program bin/stm32_blinky_demo verify reset exit'
```   

## Contributing

Your contributions are welcome! If you wish to improve or extend the capabilities of this BSP, please feel free to fork the repository, make your changes, and submit a pull request.

## Support and Community

If you encounter any issues or have questions regarding the usage of this crate, please file an issue on the GitHub repository. 
For broader discussions or to seek assistance, join an Ada developer community found [here](https://github.com/ohenley/awesome-ada?tab=readme-ov-file#community).

---

Happy Coding with Ada!


