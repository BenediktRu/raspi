#!/usr/bin/env python3


def rgbled(spi,color):
   tx=[]
   for rgb in color:
      print(rgb)
      for byte in [rgb[1],rgb[0],rgb[2]]:
         print(byte)
         for ibit in range(7,-1,-1):
            if (byte>>ibit)&1==0:
               tx.append(0X80)
            else:
               tx.append(0XF8)
            print(tx)
   spi.xfer(tx, int(8/1.25e-6))

import spidev
spi = spidev.SpiDev()
spi.open(0,0)
nLED =5
rgbled(spi,[[0,5,25],[10,6,8],[30,0,0],[0,40,50],[8,5,0]])



