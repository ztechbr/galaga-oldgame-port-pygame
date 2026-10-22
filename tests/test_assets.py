import unittest,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import extract_assets as e
import disassemble as d
class TestAssets(unittest.TestCase):
    def test_sprite_count(self):self.assertEqual(len(e.sprites),128)
    def test_sprite_dimensions_and_depth(self):
        self.assertTrue(all(len(s)==16 and all(len(r)==16 and all(0<=v<4 for v in r) for r in s) for s in e.sprites))
    def test_chars(self):self.assertEqual(len(e.chars),256);self.assertTrue(all(len(c)==8 for c in e.chars))
    def test_bpp(self):self.assertEqual(len(e.SPRITES)*8,128*16*16*2)
    def test_sample_decode(self):
        pix=e.sprites[0][0][0]
        self.assertEqual(pix,e.bit(e.SPRITES,0)|e.bit(e.SPRITES,4)<<1)
    def test_cpu_instruction_boundary(self):
        for op in range(256):
            _,size=d.decode(bytes([op,0,0,0,0,0]),0)
            self.assertTrue(1<=size<=4)
if __name__=='__main__':unittest.main()
