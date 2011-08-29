package myClass
{
	public class BitCoin_Judge
	{
		private var midstateBreverse:String,dataBreverse:String,targetBDWreverse:String,hash1:String;
		private var dataPreUINTa:uint=0,dataPreUINTb:uint=0,dataPreUINTc:uint=0;
		private var intW00:uint=0,intW01:uint=0,intW02:uint=0,intW03:uint=0,intW04:uint=0,intW05:uint=0,intW06:uint=0,intW07:uint=0,
					intW08:uint=0,intW09:uint=0,intW10:uint=0,intW11:uint=0,intW12:uint=0,intW13:uint=0,intW14:uint=0,intW15:uint=0,
					intW16:uint=0,intW17:uint=0,intW18:uint=0,intW19:uint=0,intW20:uint=0,intW21:uint=0,intW22:uint=0,intW23:uint=0,
					intW24:uint=0,intW25:uint=0,intW26:uint=0,intW27:uint=0,intW28:uint=0,intW29:uint=0,intW30:uint=0,intW31:uint=0,
					intW32:uint=0,intW33:uint=0,intW34:uint=0,intW35:uint=0,intW36:uint=0,intW37:uint=0,intW38:uint=0,intW39:uint=0,
					intW40:uint=0,intW41:uint=0,intW42:uint=0,intW43:uint=0,intW44:uint=0,intW45:uint=0,intW46:uint=0,intW47:uint=0,
					intW48:uint=0,intW49:uint=0,intW50:uint=0,intW51:uint=0,intW52:uint=0,intW53:uint=0,intW54:uint=0,intW55:uint=0,
					intW56:uint=0,intW57:uint=0,intW58:uint=0,intW59:uint=0,intW60:uint=0,intW61:uint=0,intW62:uint=0,intW63:uint=0;
		private var intW200:uint=0,intW201:uint=0,intW202:uint=0,intW203:uint=0,intW204:uint=0,intW205:uint=0,intW206:uint=0,intW207:uint=0,
					intW208:uint=0,intW209:uint=0,intW210:uint=0,intW211:uint=0,intW212:uint=0,intW213:uint=0,intW214:uint=0,intW215:uint=0,
					intW216:uint=0,intW217:uint=0,intW218:uint=0,intW219:uint=0,intW220:uint=0,intW221:uint=0,intW222:uint=0,intW223:uint=0,
					intW224:uint=0,intW225:uint=0,intW226:uint=0,intW227:uint=0,intW228:uint=0,intW229:uint=0,intW230:uint=0,intW231:uint=0,
					intW232:uint=0,intW233:uint=0,intW234:uint=0,intW235:uint=0,intW236:uint=0,intW237:uint=0,intW238:uint=0,intW239:uint=0,
					intW240:uint=0,intW241:uint=0,intW242:uint=0,intW243:uint=0,intW244:uint=0,intW245:uint=0,intW246:uint=0,intW247:uint=0,
					intW248:uint=0,intW249:uint=0,intW250:uint=0,intW251:uint=0,intW252:uint=0,intW253:uint=0,intW254:uint=0,intW255:uint=0,
					intW256:uint=0,intW257:uint=0,intW258:uint=0,intW259:uint=0,intW260:uint=0,intW261:uint=0,intW262:uint=0,intW263:uint=0,
					lastHash:String,_Hash:String;
		private const constK00:uint=0x428a2f98,constK01:uint=0x71374491,constK02:uint=0xb5c0fbcf,constK03:uint=0xe9b5dba5,
					constK04:uint=0x3956c25b,constK05:uint=0x59f111f1,constK06:uint=0x923f82a4,constK07:uint=0xab1c5ed5,
					constK08:uint=0xd807aa98,constK09:uint=0x12835b01,constK10:uint=0x243185be,constK11:uint=0x550c7dc3,
					constK12:uint=0x72be5d74,constK13:uint=0x80deb1fe,constK14:uint=0x9bdc06a7,constK15:uint=0xc19bf174,
					constK16:uint=0xe49b69c1,constK17:uint=0xefbe4786,constK18:uint=0x0fc19dc6,constK19:uint=0x240ca1cc,
					constK20:uint=0x2de92c6f,constK21:uint=0x4a7484aa,constK22:uint=0x5cb0a9dc,constK23:uint=0x76f988da,
					constK24:uint=0x983e5152,constK25:uint=0xa831c66d,constK26:uint=0xb00327c8,constK27:uint=0xbf597fc7,
					constK28:uint=0xc6e00bf3,constK29:uint=0xd5a79147,constK30:uint=0x06ca6351,constK31:uint=0x14292967,
					constK32:uint=0x27b70a85,constK33:uint=0x2e1b2138,constK34:uint=0x4d2c6dfc,constK35:uint=0x53380d13,
					constK36:uint=0x650a7354,constK37:uint=0x766a0abb,constK38:uint=0x81c2c92e,constK39:uint=0x92722c85,
					constK40:uint=0xa2bfe8a1,constK41:uint=0xa81a664b,constK42:uint=0xc24b8b70,constK43:uint=0xc76c51a3,
					constK44:uint=0xd192e819,constK45:uint=0xd6990624,constK46:uint=0xf40e3585,constK47:uint=0x106aa070,
					constK48:uint=0x19a4c116,constK49:uint=0x1e376c08,constK50:uint=0x2748774c,constK51:uint=0x34b0bcb5,
					constK52:uint=0x391c0cb3,constK53:uint=0x4ed8aa4a,constK54:uint=0x5b9cca4f,constK55:uint=0x682e6ff3,
					constK56:uint=0x748f82ee,constK57:uint=0x78a5636f,constK58:uint=0x84c87814,constK59:uint=0x8cc70208,
					constK60:uint=0x90befffa,constK61:uint=0xa4506ceb,constK62:uint=0xbef9a3f7,constK63:uint=0xc67178f2;
		private const defaultHashUINTa:uint=0x6a09e667,defaultHashUINTb:uint=0xbb67ae85,defaultHashUINTc:uint=0x3c6ef372,defaultHashUINTd:uint=0xa54ff53a,
					defaultHashUINTe:uint=0x510e527f,defaultHashUINTf:uint=0x9b05688c,defaultHashUINTg:uint=0x1f83d9ab,defaultHashUINTh:uint=0x5be0cd19;
		private var midHashUINTa:uint=0,midHashUINTb:uint=0,midHashUINTc:uint=0,midHashUINTd:uint=0,
					midHashUINTe:uint=0,midHashUINTf:uint=0,midHashUINTg:uint=0,midHashUINTh:uint=0;
		private var useHashUINTa:uint=0,useHashUINTb:uint=0,useHashUINTc:uint=0,useHashUINTd:uint=0,
					useHashUINTe:uint=0,useHashUINTf:uint=0,useHashUINTg:uint=0,useHashUINTh:uint=0;
		private var targetBDWsubstra:String="",targetBDWsubstrb:String="",targetBDWsubstrc:String="",targetBDWsubstrd:String="",
					targetBDWsubstre:String="",targetBDWsubstrf:String="",targetBDWsubstrg:String="",targetBDWsubstrh:String="";

		////////////////INIT//////////////////
		private function makeMiduint():void
		{
			midHashUINTa=parseInt(midstateBreverse.substr(0,8),16);midHashUINTb=parseInt(midstateBreverse.substr(8,8),16);
			midHashUINTc=parseInt(midstateBreverse.substr(16,8),16);midHashUINTd=parseInt(midstateBreverse.substr(24,8),16);
			midHashUINTe=parseInt(midstateBreverse.substr(32,8),16);midHashUINTf=parseInt(midstateBreverse.substr(40,8),16);
			midHashUINTg=parseInt(midstateBreverse.substr(48,8),16);midHashUINTh=parseInt(midstateBreverse.substr(56,8),16);
		}
		private function makeDataPreString():void
		{
			dataPreUINTa=parseInt(dataBreverse.substr(128,8),16);
			dataPreUINTb=parseInt(dataBreverse.substr(136,8),16);
			dataPreUINTc=parseInt(dataBreverse.substr(144,8),16);
		}
		private function makeTargetuint():void
		{
			targetBDWsubstra=targetBDWreverse.substr(0,8);targetBDWsubstrb=targetBDWreverse.substr(8,8);
			targetBDWsubstrc=targetBDWreverse.substr(16,8);targetBDWsubstrd=targetBDWreverse.substr(24,8);
			targetBDWsubstre=targetBDWreverse.substr(32,8);targetBDWsubstrf=targetBDWreverse.substr(40,8);
			targetBDWsubstrg=targetBDWreverse.substr(48,8);targetBDWsubstrh=targetBDWreverse.substr(56,8);
		}
		private function makeWuint():void
		{
			intW00=dataPreUINTa;
			intW01=dataPreUINTb;
			intW02=dataPreUINTc;
			intW04=0x80000000;
			intW05=0x00000000;
			intW06=0x00000000;
			intW07=0x00000000;
			intW08=0x00000000;
			intW09=0x00000000;
			intW10=0x00000000;
			intW11=0x00000000;
			intW12=0x00000000;
			intW13=0x00000000;
			intW14=0x00000000;
			intW15=0x00000280;
			
			intW208=0x80000000;
			intW209=0x00000000;
			intW210=0x00000000;
			intW211=0x00000000;
			intW212=0x00000000;
			intW213=0x00000000;
			intW214=0x00000000;
			intW215=0x00000100;
		}
		////////////////INIT//////////////////
		
		
		///////////////////STRING CHANGE FUNCTION/////////////////////////
		private function bReverse(buff:String):String
		{
			var new_buff:String = "",l:int = buff.length,i:int;
			for (i = 0; i < l; i+=8)
			{
				new_buff += buff.substr(i+6,2) + buff.substr(i+4,2) + buff.substr(i+2,2) + buff.substr(i,2);
			}
			return new_buff;
		}
		private function dwReverse(buff:String):String
		{
			var new_buff = "",l:int = buff.length,i:int,work:String;
			for (i = 0; i <l; i+=8)
			{
				work = buff.substr(i,8);
				new_buff = work + new_buff;
			}
			return new_buff;
		}
		private function zPad(num:String, len:int):String
		{
			var out:String = "" + num;
			while (out.length != len)
			{
				out = "0" + out;
			}
			return out;
		}
		///////////////////STRING CHANGE FUNCTION/////////////////////////


		/////////////RESET/////////////
		public function setValue(midFromOut:String,dataFromOut:String,targetFromOut:String):void
		{
			midstateBreverse = bReverse(midFromOut);
			dataBreverse = bReverse(dataFromOut);
			targetBDWreverse = bReverse(dwReverse(targetFromOut));
			makeMiduint();
			makeDataPreString();
			makeTargetuint();
			makeWuint();
		}
		/////////////RESET/////////////


		/////////////SHA256/////////////
		private function calculationHash(nonce:uint):void
		{
			
			var a:uint,b:uint,c:uint,d:uint,e:uint,f:uint,g:uint,h:uint,intTemp1:uint,intTemp2:uint;
			
			intW03=nonce;
			
			a = midHashUINTa;b = midHashUINTb;c = midHashUINTc;d = midHashUINTd;
			e = midHashUINTe;f = midHashUINTf;g = midHashUINTg;h = midHashUINTh;

			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK00+intW00);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK01+intW01);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK02+intW02);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK03+intW03);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK04+intW04);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK05+intW05);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK06+intW06);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK07+intW07);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK08+intW08);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK09+intW09);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK10+intW10);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK11+intW11);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK12+intW12);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK13+intW13);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK14+intW14);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK15+intW15);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW16 = ((((intW14 >>> 17) | (intW14 << 15)) ^ ((intW14 >>> 19) | (intW14 << 13)) ^ (intW14 >>> 10))+intW09+
						(((intW01 >>> 7) | (intW01 << 25)) ^ ((intW01 >>> 18) | (intW01 << 14)) ^ (intW01 >>> 3))+intW00);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK16+intW16);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW17 = ((((intW15 >>> 17) | (intW15 << 15)) ^ ((intW15 >>> 19) | (intW15 << 13)) ^ (intW15 >>> 10))+intW10+
						(((intW02 >>> 7) | (intW02 << 25)) ^ ((intW02 >>> 18) | (intW02 << 14)) ^ (intW02 >>> 3))+intW01);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK17+intW17);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW18 = ((((intW16 >>> 17) | (intW16 << 15)) ^ ((intW16 >>> 19) | (intW16 << 13)) ^ (intW16 >>> 10))+intW11+
						(((intW03 >>> 7) | (intW03 << 25)) ^ ((intW03 >>> 18) | (intW03 << 14)) ^ (intW03 >>> 3))+intW02);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK18+intW18);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW19 = ((((intW17 >>> 17) | (intW17 << 15)) ^ ((intW17 >>> 19) | (intW17 << 13)) ^ (intW17 >>> 10))+intW12+
						(((intW04 >>> 7) | (intW04 << 25)) ^ ((intW04 >>> 18) | (intW04 << 14)) ^ (intW04 >>> 3))+intW03);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK19+intW19);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW20 = ((((intW18 >>> 17) | (intW18 << 15)) ^ ((intW18 >>> 19) | (intW18 << 13)) ^ (intW18 >>> 10))+intW13+
						(((intW05 >>> 7) | (intW05 << 25)) ^ ((intW05 >>> 18) | (intW05 << 14)) ^ (intW05 >>> 3))+intW04);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK20+intW20);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW21 = ((((intW19 >>> 17) | (intW19 << 15)) ^ ((intW19 >>> 19) | (intW19 << 13)) ^ (intW19 >>> 10))+intW14+
						(((intW06 >>> 7) | (intW06 << 25)) ^ ((intW06 >>> 18) | (intW06 << 14)) ^ (intW06 >>> 3))+intW05);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK21+intW21);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW22 = ((((intW20 >>> 17) | (intW20 << 15)) ^ ((intW20 >>> 19) | (intW20 << 13)) ^ (intW20 >>> 10))+intW15+
						(((intW07 >>> 7) | (intW07 << 25)) ^ ((intW07 >>> 18) | (intW07 << 14)) ^ (intW07 >>> 3))+intW06);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK22+intW22);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW23 = ((((intW21 >>> 17) | (intW21 << 15)) ^ ((intW21 >>> 19) | (intW21 << 13)) ^ (intW21 >>> 10))+intW16+
						(((intW08 >>> 7) | (intW08 << 25)) ^ ((intW08 >>> 18) | (intW08 << 14)) ^ (intW08 >>> 3))+intW07);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK23+intW23);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW24 = ((((intW22 >>> 17) | (intW22 << 15)) ^ ((intW22 >>> 19) | (intW22 << 13)) ^ (intW22 >>> 10))+intW17+
						(((intW09 >>> 7) | (intW09 << 25)) ^ ((intW09 >>> 18) | (intW09 << 14)) ^ (intW09 >>> 3))+intW08);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK24+intW24);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW25 = ((((intW23 >>> 17) | (intW23 << 15)) ^ ((intW23 >>> 19) | (intW23 << 13)) ^ (intW23 >>> 10))+intW18+
						(((intW10 >>> 7) | (intW10 << 25)) ^ ((intW10 >>> 18) | (intW10 << 14)) ^ (intW10 >>> 3))+intW09);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK25+intW25);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW26 = ((((intW24 >>> 17) | (intW24 << 15)) ^ ((intW24 >>> 19) | (intW24 << 13)) ^ (intW24 >>> 10))+intW19+
						(((intW11 >>> 7) | (intW11 << 25)) ^ ((intW11 >>> 18) | (intW11 << 14)) ^ (intW11 >>> 3))+intW10);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK26+intW26);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW27 = ((((intW25 >>> 17) | (intW25 << 15)) ^ ((intW25 >>> 19) | (intW25 << 13)) ^ (intW25 >>> 10))+intW20+
						(((intW12 >>> 7) | (intW12 << 25)) ^ ((intW12 >>> 18) | (intW12 << 14)) ^ (intW12 >>> 3))+intW11);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK27+intW27);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW28 = ((((intW26 >>> 17) | (intW26 << 15)) ^ ((intW26 >>> 19) | (intW26 << 13)) ^ (intW26 >>> 10))+intW21+
						(((intW13 >>> 7) | (intW13 << 25)) ^ ((intW13 >>> 18) | (intW13 << 14)) ^ (intW13 >>> 3))+intW12);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK28+intW28);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW29 = ((((intW27 >>> 17) | (intW27 << 15)) ^ ((intW27 >>> 19) | (intW27 << 13)) ^ (intW27 >>> 10))+intW22+
						(((intW14 >>> 7) | (intW14 << 25)) ^ ((intW14 >>> 18) | (intW14 << 14)) ^ (intW14 >>> 3))+intW13);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK29+intW29);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW30 = ((((intW28 >>> 17) | (intW28 << 15)) ^ ((intW28 >>> 19) | (intW28 << 13)) ^ (intW28 >>> 10))+intW23+
						(((intW15 >>> 7) | (intW15 << 25)) ^ ((intW15 >>> 18) | (intW15 << 14)) ^ (intW15 >>> 3))+intW14);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK30+intW30);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW31 = ((((intW29 >>> 17) | (intW29 << 15)) ^ ((intW29 >>> 19) | (intW29 << 13)) ^ (intW29 >>> 10))+intW24+
						(((intW16 >>> 7) | (intW16 << 25)) ^ ((intW16 >>> 18) | (intW16 << 14)) ^ (intW16 >>> 3))+intW15);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK31+intW31);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW32 = ((((intW30 >>> 17) | (intW30 << 15)) ^ ((intW30 >>> 19) | (intW30 << 13)) ^ (intW30 >>> 10))+intW25+
						(((intW17 >>> 7) | (intW17 << 25)) ^ ((intW17 >>> 18) | (intW17 << 14)) ^ (intW17 >>> 3))+intW16);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK32+intW32);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW33 = ((((intW31 >>> 17) | (intW31 << 15)) ^ ((intW31 >>> 19) | (intW31 << 13)) ^ (intW31 >>> 10))+intW26+
						(((intW18 >>> 7) | (intW18 << 25)) ^ ((intW18 >>> 18) | (intW18 << 14)) ^ (intW18 >>> 3))+intW17);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK33+intW33);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW34 = ((((intW32 >>> 17) | (intW32 << 15)) ^ ((intW32 >>> 19) | (intW32 << 13)) ^ (intW32 >>> 10))+intW27+
						(((intW19 >>> 7) | (intW19 << 25)) ^ ((intW19 >>> 18) | (intW19 << 14)) ^ (intW19 >>> 3))+intW18);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK34+intW34);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW35 = ((((intW33 >>> 17) | (intW33 << 15)) ^ ((intW33 >>> 19) | (intW33 << 13)) ^ (intW33 >>> 10))+intW28+
						(((intW20 >>> 7) | (intW20 << 25)) ^ ((intW20 >>> 18) | (intW20 << 14)) ^ (intW20 >>> 3))+intW19);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK35+intW35);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW36 = ((((intW34 >>> 17) | (intW34 << 15)) ^ ((intW34 >>> 19) | (intW34 << 13)) ^ (intW34 >>> 10))+intW29+
						(((intW21 >>> 7) | (intW21 << 25)) ^ ((intW21 >>> 18) | (intW21 << 14)) ^ (intW21 >>> 3))+intW20);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK36+intW36);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW37 = ((((intW35 >>> 17) | (intW35 << 15)) ^ ((intW35 >>> 19) | (intW35 << 13)) ^ (intW35 >>> 10))+intW30+
						(((intW22 >>> 7) | (intW22 << 25)) ^ ((intW22 >>> 18) | (intW22 << 14)) ^ (intW22 >>> 3))+intW21);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK37+intW37);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW38 = ((((intW36 >>> 17) | (intW36 << 15)) ^ ((intW36 >>> 19) | (intW36 << 13)) ^ (intW36 >>> 10))+intW31+
						(((intW23 >>> 7) | (intW23 << 25)) ^ ((intW23 >>> 18) | (intW23 << 14)) ^ (intW23 >>> 3))+intW22);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK38+intW38);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW39 = ((((intW37 >>> 17) | (intW37 << 15)) ^ ((intW37 >>> 19) | (intW37 << 13)) ^ (intW37 >>> 10))+intW32+
						(((intW24 >>> 7) | (intW24 << 25)) ^ ((intW24 >>> 18) | (intW24 << 14)) ^ (intW24 >>> 3))+intW23);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK39+intW39);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW40 = ((((intW38 >>> 17) | (intW38 << 15)) ^ ((intW38 >>> 19) | (intW38 << 13)) ^ (intW38 >>> 10))+intW33+
						(((intW25 >>> 7) | (intW25 << 25)) ^ ((intW25 >>> 18) | (intW25 << 14)) ^ (intW25 >>> 3))+intW24);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK40+intW40);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW41 = ((((intW39 >>> 17) | (intW39 << 15)) ^ ((intW39 >>> 19) | (intW39 << 13)) ^ (intW39 >>> 10))+intW34+
						(((intW26 >>> 7) | (intW26 << 25)) ^ ((intW26 >>> 18) | (intW26 << 14)) ^ (intW26 >>> 3))+intW25);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK41+intW41);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW42 = ((((intW40 >>> 17) | (intW40 << 15)) ^ ((intW40 >>> 19) | (intW40 << 13)) ^ (intW40 >>> 10))+intW35+
						(((intW27 >>> 7) | (intW27 << 25)) ^ ((intW27 >>> 18) | (intW27 << 14)) ^ (intW27 >>> 3))+intW26);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK42+intW42);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW43 = ((((intW41 >>> 17) | (intW41 << 15)) ^ ((intW41 >>> 19) | (intW41 << 13)) ^ (intW41 >>> 10))+intW36+
						(((intW28 >>> 7) | (intW28 << 25)) ^ ((intW28 >>> 18) | (intW28 << 14)) ^ (intW28 >>> 3))+intW27);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK43+intW43);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW44 = ((((intW42 >>> 17) | (intW42 << 15)) ^ ((intW42 >>> 19) | (intW42 << 13)) ^ (intW42 >>> 10))+intW37+
						(((intW29 >>> 7) | (intW29 << 25)) ^ ((intW29 >>> 18) | (intW29 << 14)) ^ (intW29 >>> 3))+intW28);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK44+intW44);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW45 = ((((intW43 >>> 17) | (intW43 << 15)) ^ ((intW43 >>> 19) | (intW43 << 13)) ^ (intW43 >>> 10))+intW38+
						(((intW30 >>> 7) | (intW30 << 25)) ^ ((intW30 >>> 18) | (intW30 << 14)) ^ (intW30 >>> 3))+intW29);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK45+intW45);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW46 = ((((intW44 >>> 17) | (intW44 << 15)) ^ ((intW44 >>> 19) | (intW44 << 13)) ^ (intW44 >>> 10))+intW39+
						(((intW31 >>> 7) | (intW31 << 25)) ^ ((intW31 >>> 18) | (intW31 << 14)) ^ (intW31 >>> 3))+intW30);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK46+intW46);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW47 = ((((intW45 >>> 17) | (intW45 << 15)) ^ ((intW45 >>> 19) | (intW45 << 13)) ^ (intW45 >>> 10))+intW40+
						(((intW32 >>> 7) | (intW32 << 25)) ^ ((intW32 >>> 18) | (intW32 << 14)) ^ (intW32 >>> 3))+intW31);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK47+intW47);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW48 = ((((intW46 >>> 17) | (intW46 << 15)) ^ ((intW46 >>> 19) | (intW46 << 13)) ^ (intW46 >>> 10))+intW41+
						(((intW33 >>> 7) | (intW33 << 25)) ^ ((intW33 >>> 18) | (intW33 << 14)) ^ (intW33 >>> 3))+intW32);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK48+intW48);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW49 = ((((intW47 >>> 17) | (intW47 << 15)) ^ ((intW47 >>> 19) | (intW47 << 13)) ^ (intW47 >>> 10))+intW42+
						(((intW34 >>> 7) | (intW34 << 25)) ^ ((intW34 >>> 18) | (intW34 << 14)) ^ (intW34 >>> 3))+intW33);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK49+intW49);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW50 = ((((intW48 >>> 17) | (intW48 << 15)) ^ ((intW48 >>> 19) | (intW48 << 13)) ^ (intW48 >>> 10))+intW43+
						(((intW35 >>> 7) | (intW35 << 25)) ^ ((intW35 >>> 18) | (intW35 << 14)) ^ (intW35 >>> 3))+intW34);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK50+intW50);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW51 = ((((intW49 >>> 17) | (intW49 << 15)) ^ ((intW49 >>> 19) | (intW49 << 13)) ^ (intW49 >>> 10))+intW44+
						(((intW36 >>> 7) | (intW36 << 25)) ^ ((intW36 >>> 18) | (intW36 << 14)) ^ (intW36 >>> 3))+intW35);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK51+intW51);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW52 = ((((intW50 >>> 17) | (intW50 << 15)) ^ ((intW50 >>> 19) | (intW50 << 13)) ^ (intW50 >>> 10))+intW45+
						(((intW37 >>> 7) | (intW37 << 25)) ^ ((intW37 >>> 18) | (intW37 << 14)) ^ (intW37 >>> 3))+intW36);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK52+intW52);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW53 = ((((intW51 >>> 17) | (intW51 << 15)) ^ ((intW51 >>> 19) | (intW51 << 13)) ^ (intW51 >>> 10))+intW46+
						(((intW38 >>> 7) | (intW38 << 25)) ^ ((intW38 >>> 18) | (intW38 << 14)) ^ (intW38 >>> 3))+intW37);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK53+intW53);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW54 = ((((intW52 >>> 17) | (intW52 << 15)) ^ ((intW52 >>> 19) | (intW52 << 13)) ^ (intW52 >>> 10))+intW47+
						(((intW39 >>> 7) | (intW39 << 25)) ^ ((intW39 >>> 18) | (intW39 << 14)) ^ (intW39 >>> 3))+intW38);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK54+intW54);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW55 = ((((intW53 >>> 17) | (intW53 << 15)) ^ ((intW53 >>> 19) | (intW53 << 13)) ^ (intW53 >>> 10))+intW48+
						(((intW40 >>> 7) | (intW40 << 25)) ^ ((intW40 >>> 18) | (intW40 << 14)) ^ (intW40 >>> 3))+intW39);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK55+intW55);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW56 = ((((intW54 >>> 17) | (intW54 << 15)) ^ ((intW54 >>> 19) | (intW54 << 13)) ^ (intW54 >>> 10))+intW49+
						(((intW41 >>> 7) | (intW41 << 25)) ^ ((intW41 >>> 18) | (intW41 << 14)) ^ (intW41 >>> 3))+intW40);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK56+intW56);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW57 = ((((intW55 >>> 17) | (intW55 << 15)) ^ ((intW55 >>> 19) | (intW55 << 13)) ^ (intW55 >>> 10))+intW50+
						(((intW42 >>> 7) | (intW42 << 25)) ^ ((intW42 >>> 18) | (intW42 << 14)) ^ (intW42 >>> 3))+intW41);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK57+intW57);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW58 = ((((intW56 >>> 17) | (intW56 << 15)) ^ ((intW56 >>> 19) | (intW56 << 13)) ^ (intW56 >>> 10))+intW51+
						(((intW43 >>> 7) | (intW43 << 25)) ^ ((intW43 >>> 18) | (intW43 << 14)) ^ (intW43 >>> 3))+intW42);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK58+intW58);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW59 = ((((intW57 >>> 17) | (intW57 << 15)) ^ ((intW57 >>> 19) | (intW57 << 13)) ^ (intW57 >>> 10))+intW52+
						(((intW44 >>> 7) | (intW44 << 25)) ^ ((intW44 >>> 18) | (intW44 << 14)) ^ (intW44 >>> 3))+intW43);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK59+intW59);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW60 = ((((intW58 >>> 17) | (intW58 << 15)) ^ ((intW58 >>> 19) | (intW58 << 13)) ^ (intW58 >>> 10))+intW53+
						(((intW45 >>> 7) | (intW45 << 25)) ^ ((intW45 >>> 18) | (intW45 << 14)) ^ (intW45 >>> 3))+intW44);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK60+intW60);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW61 = ((((intW59 >>> 17) | (intW59 << 15)) ^ ((intW59 >>> 19) | (intW59 << 13)) ^ (intW59 >>> 10))+intW54+
						(((intW46 >>> 7) | (intW46 << 25)) ^ ((intW46 >>> 18) | (intW46 << 14)) ^ (intW46 >>> 3))+intW45);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK61+intW61);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW62 = ((((intW60 >>> 17) | (intW60 << 15)) ^ ((intW60 >>> 19) | (intW60 << 13)) ^ (intW60 >>> 10))+intW55+
						(((intW47 >>> 7) | (intW47 << 25)) ^ ((intW47 >>> 18) | (intW47 << 14)) ^ (intW47 >>> 3))+intW46);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK62+intW62);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW63 = ((((intW61 >>> 17) | (intW61 << 15)) ^ ((intW61 >>> 19) | (intW61 << 13)) ^ (intW61 >>> 10))+intW56+
						(((intW48 >>> 7) | (intW48 << 25)) ^ ((intW48 >>> 18) | (intW48 << 14)) ^ (intW48 >>> 3))+intW47);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK63+intW63);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);



			
			intW200=midHashUINTa+a;
			intW201=midHashUINTb+b;
			intW202=midHashUINTc+c;
			intW203=midHashUINTd+d;
			intW204=midHashUINTe+e;
			intW205=midHashUINTf+f;
			intW206=midHashUINTg+g;
			intW207=midHashUINTh+h;
			
			a = defaultHashUINTa;b = defaultHashUINTb;c = defaultHashUINTc;d = defaultHashUINTd;
			e = defaultHashUINTe;f = defaultHashUINTf;g = defaultHashUINTg;h = defaultHashUINTh;

			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK00+intW200);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK01+intW201);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK02+intW202);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK03+intW203);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK04+intW204);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK05+intW205);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK06+intW206);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK07+intW207);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK08+intW208);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK09+intW209);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK10+intW210);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK11+intW211);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK12+intW212);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK13+intW213);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK14+intW214);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK15+intW215);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW216 = ((((intW214 >>> 17) | (intW214 << 15)) ^ ((intW214 >>> 19) | (intW214 << 13)) ^ (intW214 >>> 10))+intW209+
						(((intW201 >>> 7) | (intW201 << 25)) ^ ((intW201 >>> 18) | (intW201 << 14)) ^ (intW201 >>> 3))+intW200);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK16+intW216);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW217 = ((((intW215 >>> 17) | (intW215 << 15)) ^ ((intW215 >>> 19) | (intW215 << 13)) ^ (intW215 >>> 10))+intW210+
						(((intW202 >>> 7) | (intW202 << 25)) ^ ((intW202 >>> 18) | (intW202 << 14)) ^ (intW202 >>> 3))+intW201);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK17+intW217);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW218 = ((((intW216 >>> 17) | (intW216 << 15)) ^ ((intW216 >>> 19) | (intW216 << 13)) ^ (intW216 >>> 10))+intW211+
						(((intW203 >>> 7) | (intW203 << 25)) ^ ((intW203 >>> 18) | (intW203 << 14)) ^ (intW203 >>> 3))+intW202);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK18+intW218);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW219 = ((((intW217 >>> 17) | (intW217 << 15)) ^ ((intW217 >>> 19) | (intW217 << 13)) ^ (intW217 >>> 10))+intW212+
						(((intW204 >>> 7) | (intW204 << 25)) ^ ((intW204 >>> 18) | (intW204 << 14)) ^ (intW204 >>> 3))+intW203);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK19+intW219);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW220 = ((((intW218 >>> 17) | (intW218 << 15)) ^ ((intW218 >>> 19) | (intW218 << 13)) ^ (intW218 >>> 10))+intW213+
						(((intW205 >>> 7) | (intW205 << 25)) ^ ((intW205 >>> 18) | (intW205 << 14)) ^ (intW205 >>> 3))+intW204);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK20+intW220);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW221 = ((((intW219 >>> 17) | (intW219 << 15)) ^ ((intW219 >>> 19) | (intW219 << 13)) ^ (intW219 >>> 10))+intW214+
						(((intW206 >>> 7) | (intW206 << 25)) ^ ((intW206 >>> 18) | (intW206 << 14)) ^ (intW206 >>> 3))+intW205);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK21+intW221);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW222 = ((((intW220 >>> 17) | (intW220 << 15)) ^ ((intW220 >>> 19) | (intW220 << 13)) ^ (intW220 >>> 10))+intW215+
						(((intW207 >>> 7) | (intW207 << 25)) ^ ((intW207 >>> 18) | (intW207 << 14)) ^ (intW207 >>> 3))+intW206);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK22+intW222);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW223 = ((((intW221 >>> 17) | (intW221 << 15)) ^ ((intW221 >>> 19) | (intW221 << 13)) ^ (intW221 >>> 10))+intW216+
						(((intW208 >>> 7) | (intW208 << 25)) ^ ((intW208 >>> 18) | (intW208 << 14)) ^ (intW208 >>> 3))+intW207);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK23+intW223);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW224 = ((((intW222 >>> 17) | (intW222 << 15)) ^ ((intW222 >>> 19) | (intW222 << 13)) ^ (intW222 >>> 10))+intW217+
						(((intW209 >>> 7) | (intW209 << 25)) ^ ((intW209 >>> 18) | (intW209 << 14)) ^ (intW209 >>> 3))+intW208);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK24+intW224);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW225 = ((((intW223 >>> 17) | (intW223 << 15)) ^ ((intW223 >>> 19) | (intW223 << 13)) ^ (intW223 >>> 10))+intW218+
						(((intW210 >>> 7) | (intW210 << 25)) ^ ((intW210 >>> 18) | (intW210 << 14)) ^ (intW210 >>> 3))+intW209);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK25+intW225);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW226 = ((((intW224 >>> 17) | (intW224 << 15)) ^ ((intW224 >>> 19) | (intW224 << 13)) ^ (intW224 >>> 10))+intW219+
						(((intW211 >>> 7) | (intW211 << 25)) ^ ((intW211 >>> 18) | (intW211 << 14)) ^ (intW211 >>> 3))+intW210);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK26+intW226);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW227 = ((((intW225 >>> 17) | (intW225 << 15)) ^ ((intW225 >>> 19) | (intW225 << 13)) ^ (intW225 >>> 10))+intW220+
						(((intW212 >>> 7) | (intW212 << 25)) ^ ((intW212 >>> 18) | (intW212 << 14)) ^ (intW212 >>> 3))+intW211);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK27+intW227);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW228 = ((((intW226 >>> 17) | (intW226 << 15)) ^ ((intW226 >>> 19) | (intW226 << 13)) ^ (intW226 >>> 10))+intW221+
						(((intW213 >>> 7) | (intW213 << 25)) ^ ((intW213 >>> 18) | (intW213 << 14)) ^ (intW213 >>> 3))+intW212);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK28+intW228);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW229 = ((((intW227 >>> 17) | (intW227 << 15)) ^ ((intW227 >>> 19) | (intW227 << 13)) ^ (intW227 >>> 10))+intW222+
						(((intW214 >>> 7) | (intW214 << 25)) ^ ((intW214 >>> 18) | (intW214 << 14)) ^ (intW214 >>> 3))+intW213);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK29+intW229);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW230 = ((((intW228 >>> 17) | (intW228 << 15)) ^ ((intW228 >>> 19) | (intW228 << 13)) ^ (intW228 >>> 10))+intW223+
						(((intW215 >>> 7) | (intW215 << 25)) ^ ((intW215 >>> 18) | (intW215 << 14)) ^ (intW215 >>> 3))+intW214);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK30+intW230);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW231 = ((((intW229 >>> 17) | (intW229 << 15)) ^ ((intW229 >>> 19) | (intW229 << 13)) ^ (intW229 >>> 10))+intW224+
						(((intW216 >>> 7) | (intW216 << 25)) ^ ((intW216 >>> 18) | (intW216 << 14)) ^ (intW216 >>> 3))+intW215);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK31+intW231);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW232 = ((((intW230 >>> 17) | (intW230 << 15)) ^ ((intW230 >>> 19) | (intW230 << 13)) ^ (intW230 >>> 10))+intW225+
						(((intW217 >>> 7) | (intW217 << 25)) ^ ((intW217 >>> 18) | (intW217 << 14)) ^ (intW217 >>> 3))+intW216);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK32+intW232);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW233 = ((((intW231 >>> 17) | (intW231 << 15)) ^ ((intW231 >>> 19) | (intW231 << 13)) ^ (intW231 >>> 10))+intW226+
						(((intW218 >>> 7) | (intW218 << 25)) ^ ((intW218 >>> 18) | (intW218 << 14)) ^ (intW218 >>> 3))+intW217);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK33+intW233);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW234 = ((((intW232 >>> 17) | (intW232 << 15)) ^ ((intW232 >>> 19) | (intW232 << 13)) ^ (intW232 >>> 10))+intW227+
						(((intW219 >>> 7) | (intW219 << 25)) ^ ((intW219 >>> 18) | (intW219 << 14)) ^ (intW219 >>> 3))+intW218);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK34+intW234);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW235 = ((((intW233 >>> 17) | (intW233 << 15)) ^ ((intW233 >>> 19) | (intW233 << 13)) ^ (intW233 >>> 10))+intW228+
						(((intW220 >>> 7) | (intW220 << 25)) ^ ((intW220 >>> 18) | (intW220 << 14)) ^ (intW220 >>> 3))+intW219);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK35+intW235);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW236 = ((((intW234 >>> 17) | (intW234 << 15)) ^ ((intW234 >>> 19) | (intW234 << 13)) ^ (intW234 >>> 10))+intW229+
						(((intW221 >>> 7) | (intW221 << 25)) ^ ((intW221 >>> 18) | (intW221 << 14)) ^ (intW221 >>> 3))+intW220);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK36+intW236);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW237 = ((((intW235 >>> 17) | (intW235 << 15)) ^ ((intW235 >>> 19) | (intW235 << 13)) ^ (intW235 >>> 10))+intW230+
						(((intW222 >>> 7) | (intW222 << 25)) ^ ((intW222 >>> 18) | (intW222 << 14)) ^ (intW222 >>> 3))+intW221);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK37+intW237);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW238 = ((((intW236 >>> 17) | (intW236 << 15)) ^ ((intW236 >>> 19) | (intW236 << 13)) ^ (intW236 >>> 10))+intW231+
						(((intW223 >>> 7) | (intW223 << 25)) ^ ((intW223 >>> 18) | (intW223 << 14)) ^ (intW223 >>> 3))+intW222);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK38+intW238);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW239 = ((((intW237 >>> 17) | (intW237 << 15)) ^ ((intW237 >>> 19) | (intW237 << 13)) ^ (intW237 >>> 10))+intW232+
						(((intW224 >>> 7) | (intW224 << 25)) ^ ((intW224 >>> 18) | (intW224 << 14)) ^ (intW224 >>> 3))+intW223);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK39+intW239);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW240 = ((((intW238 >>> 17) | (intW238 << 15)) ^ ((intW238 >>> 19) | (intW238 << 13)) ^ (intW238 >>> 10))+intW233+
						(((intW225 >>> 7) | (intW225 << 25)) ^ ((intW225 >>> 18) | (intW225 << 14)) ^ (intW225 >>> 3))+intW224);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK40+intW240);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW241 = ((((intW239 >>> 17) | (intW239 << 15)) ^ ((intW239 >>> 19) | (intW239 << 13)) ^ (intW239 >>> 10))+intW234+
						(((intW226 >>> 7) | (intW226 << 25)) ^ ((intW226 >>> 18) | (intW226 << 14)) ^ (intW226 >>> 3))+intW225);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK41+intW241);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW242 = ((((intW240 >>> 17) | (intW240 << 15)) ^ ((intW240 >>> 19) | (intW240 << 13)) ^ (intW240 >>> 10))+intW235+
						(((intW227 >>> 7) | (intW227 << 25)) ^ ((intW227 >>> 18) | (intW227 << 14)) ^ (intW227 >>> 3))+intW226);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK42+intW242);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW243 = ((((intW241 >>> 17) | (intW241 << 15)) ^ ((intW241 >>> 19) | (intW241 << 13)) ^ (intW241 >>> 10))+intW236+
						(((intW228 >>> 7) | (intW228 << 25)) ^ ((intW228 >>> 18) | (intW228 << 14)) ^ (intW228 >>> 3))+intW227);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK43+intW243);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW244 = ((((intW242 >>> 17) | (intW242 << 15)) ^ ((intW242 >>> 19) | (intW242 << 13)) ^ (intW242 >>> 10))+intW237+
						(((intW229 >>> 7) | (intW229 << 25)) ^ ((intW229 >>> 18) | (intW229 << 14)) ^ (intW229 >>> 3))+intW228);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK44+intW244);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW245 = ((((intW243 >>> 17) | (intW243 << 15)) ^ ((intW243 >>> 19) | (intW243 << 13)) ^ (intW243 >>> 10))+intW238+
						(((intW230 >>> 7) | (intW230 << 25)) ^ ((intW230 >>> 18) | (intW230 << 14)) ^ (intW230 >>> 3))+intW229);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK45+intW245);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW246 = ((((intW244 >>> 17) | (intW244 << 15)) ^ ((intW244 >>> 19) | (intW244 << 13)) ^ (intW244 >>> 10))+intW239+
						(((intW231 >>> 7) | (intW231 << 25)) ^ ((intW231 >>> 18) | (intW231 << 14)) ^ (intW231 >>> 3))+intW230);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK46+intW246);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW247 = ((((intW245 >>> 17) | (intW245 << 15)) ^ ((intW245 >>> 19) | (intW245 << 13)) ^ (intW245 >>> 10))+intW240+
						(((intW232 >>> 7) | (intW232 << 25)) ^ ((intW232 >>> 18) | (intW232 << 14)) ^ (intW232 >>> 3))+intW231);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK47+intW247);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW248 = ((((intW246 >>> 17) | (intW246 << 15)) ^ ((intW246 >>> 19) | (intW246 << 13)) ^ (intW246 >>> 10))+intW241+
						(((intW233 >>> 7) | (intW233 << 25)) ^ ((intW233 >>> 18) | (intW233 << 14)) ^ (intW233 >>> 3))+intW232);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK48+intW248);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW249 = ((((intW247 >>> 17) | (intW247 << 15)) ^ ((intW247 >>> 19) | (intW247 << 13)) ^ (intW247 >>> 10))+intW242+
						(((intW234 >>> 7) | (intW234 << 25)) ^ ((intW234 >>> 18) | (intW234 << 14)) ^ (intW234 >>> 3))+intW233);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK49+intW249);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW250 = ((((intW248 >>> 17) | (intW248 << 15)) ^ ((intW248 >>> 19) | (intW248 << 13)) ^ (intW248 >>> 10))+intW243+
						(((intW235 >>> 7) | (intW235 << 25)) ^ ((intW235 >>> 18) | (intW235 << 14)) ^ (intW235 >>> 3))+intW234);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK50+intW250);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW251 = ((((intW249 >>> 17) | (intW249 << 15)) ^ ((intW249 >>> 19) | (intW249 << 13)) ^ (intW249 >>> 10))+intW244+
						(((intW236 >>> 7) | (intW236 << 25)) ^ ((intW236 >>> 18) | (intW236 << 14)) ^ (intW236 >>> 3))+intW235);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK51+intW251);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW252 = ((((intW250 >>> 17) | (intW250 << 15)) ^ ((intW250 >>> 19) | (intW250 << 13)) ^ (intW250 >>> 10))+intW245+
						(((intW237 >>> 7) | (intW237 << 25)) ^ ((intW237 >>> 18) | (intW237 << 14)) ^ (intW237 >>> 3))+intW236);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK52+intW252);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW253 = ((((intW251 >>> 17) | (intW251 << 15)) ^ ((intW251 >>> 19) | (intW251 << 13)) ^ (intW251 >>> 10))+intW246+
						(((intW238 >>> 7) | (intW238 << 25)) ^ ((intW238 >>> 18) | (intW238 << 14)) ^ (intW238 >>> 3))+intW237);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK53+intW253);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW254 = ((((intW252 >>> 17) | (intW252 << 15)) ^ ((intW252 >>> 19) | (intW252 << 13)) ^ (intW252 >>> 10))+intW247+
						(((intW239 >>> 7) | (intW239 << 25)) ^ ((intW239 >>> 18) | (intW239 << 14)) ^ (intW239 >>> 3))+intW238);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK54+intW254);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW255 = ((((intW253 >>> 17) | (intW253 << 15)) ^ ((intW253 >>> 19) | (intW253 << 13)) ^ (intW253 >>> 10))+intW248+
						(((intW240 >>> 7) | (intW240 << 25)) ^ ((intW240 >>> 18) | (intW240 << 14)) ^ (intW240 >>> 3))+intW239);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK55+intW255);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW256 = ((((intW254 >>> 17) | (intW254 << 15)) ^ ((intW254 >>> 19) | (intW254 << 13)) ^ (intW254 >>> 10))+intW249+
						(((intW241 >>> 7) | (intW241 << 25)) ^ ((intW241 >>> 18) | (intW241 << 14)) ^ (intW241 >>> 3))+intW240);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK56+intW256);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW257 = ((((intW255 >>> 17) | (intW255 << 15)) ^ ((intW255 >>> 19) | (intW255 << 13)) ^ (intW255 >>> 10))+intW250+
						(((intW242 >>> 7) | (intW242 << 25)) ^ ((intW242 >>> 18) | (intW242 << 14)) ^ (intW242 >>> 3))+intW241);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK57+intW257);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW258 = ((((intW256 >>> 17) | (intW256 << 15)) ^ ((intW256 >>> 19) | (intW256 << 13)) ^ (intW256 >>> 10))+intW251+
						(((intW243 >>> 7) | (intW243 << 25)) ^ ((intW243 >>> 18) | (intW243 << 14)) ^ (intW243 >>> 3))+intW242);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK58+intW258);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW259 = ((((intW257 >>> 17) | (intW257 << 15)) ^ ((intW257 >>> 19) | (intW257 << 13)) ^ (intW257 >>> 10))+intW252+
						(((intW244 >>> 7) | (intW244 << 25)) ^ ((intW244 >>> 18) | (intW244 << 14)) ^ (intW244 >>> 3))+intW243);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK59+intW259);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW260 = ((((intW258 >>> 17) | (intW258 << 15)) ^ ((intW258 >>> 19) | (intW258 << 13)) ^ (intW258 >>> 10))+intW253+
						(((intW245 >>> 7) | (intW245 << 25)) ^ ((intW245 >>> 18) | (intW245 << 14)) ^ (intW245 >>> 3))+intW244);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK60+intW260);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW261 = ((((intW259 >>> 17) | (intW259 << 15)) ^ ((intW259 >>> 19) | (intW259 << 13)) ^ (intW259 >>> 10))+intW254+
						(((intW246 >>> 7) | (intW246 << 25)) ^ ((intW246 >>> 18) | (intW246 << 14)) ^ (intW246 >>> 3))+intW245);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK61+intW261);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW262 = ((((intW260 >>> 17) | (intW260 << 15)) ^ ((intW260 >>> 19) | (intW260 << 13)) ^ (intW260 >>> 10))+intW255+
						(((intW247 >>> 7) | (intW247 << 25)) ^ ((intW247 >>> 18) | (intW247 << 14)) ^ (intW247 >>> 3))+intW246);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK62+intW262);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			intW263 = ((((intW261 >>> 17) | (intW261 << 15)) ^ ((intW261 >>> 19) | (intW261 << 13)) ^ (intW261 >>> 10))+intW256+
						(((intW248 >>> 7) | (intW248 << 25)) ^ ((intW248 >>> 18) | (intW248 << 14)) ^ (intW248 >>> 3))+intW247);
			intTemp1 = (h+(((e >>> 6) | (e << 26)) ^ ((e >>> 11) | (e << 21)) ^ ((e >>> 25) | (e << 7)))+((e&f) ^ ((~e) & g))+constK63+intW263);
			intTemp2 = ((((a >>> 2) | (a << 30)) ^ ((a >>> 13) | (a << 19)) ^ ((a >>> 22) | (a << 10)))+((a&b)^(a&c)^(b&c)));
			h = g;g = f;f = e;e = (d + intTemp1);d = c;c = b;b = a;a = (intTemp1 + intTemp2);
			
			//ADD HASH TO RECENT HASH
			useHashUINTa = defaultHashUINTa+a;useHashUINTb = defaultHashUINTb+b;
			useHashUINTc = defaultHashUINTc+c;useHashUINTd = defaultHashUINTd+d;
			useHashUINTe = defaultHashUINTe+e;useHashUINTf = defaultHashUINTf+f;
			useHashUINTg = defaultHashUINTg+g;useHashUINTh = defaultHashUINTh+h;
			
		}
		/////////////SHA256/////////////

		
		private function judgeWithTarget():Boolean
		{
			_Hash=bReverse(zPad(useHashUINTh.toString(16),8));
			if(_Hash>targetBDWsubstra){
				return false;
			}
			if(_Hash<targetBDWsubstra){
				return true;
			}
			_Hash=bReverse(zPad(useHashUINTg.toString(16),8));
			if(_Hash>targetBDWsubstrb){
				return false;
			}
			if(_Hash<targetBDWsubstrb){
				return true;
			}
			_Hash=bReverse(zPad(useHashUINTf.toString(16),8));
			if(_Hash>targetBDWsubstrc){
				return false;
			}
			if(_Hash<targetBDWsubstrc){
				return true;
			}
			_Hash=bReverse(zPad(useHashUINTe.toString(16),8));
			if(_Hash>targetBDWsubstrd){
				return false;
			}
			if(_Hash<targetBDWsubstrd){
				return true;
			}
			_Hash=bReverse(zPad(useHashUINTd.toString(16),8));
			if(_Hash>targetBDWsubstre){
				return false;
			}
			if(_Hash<targetBDWsubstre){
				return true;
			}
			_Hash=bReverse(zPad(useHashUINTc.toString(16),8));
			if(_Hash>targetBDWsubstrf){
				return false;
			}
			if(_Hash<targetBDWsubstrf){
				return true;
			}
			_Hash=bReverse(zPad(useHashUINTb.toString(16),8));
			if(_Hash>targetBDWsubstrg){
				return false;
			}
			if(_Hash<targetBDWsubstrg){
				return true;
			}
			_Hash=bReverse(zPad(useHashUINTa.toString(16),8));
			if(_Hash>targetBDWsubstrh){
				return false;
			}
			if(_Hash<targetBDWsubstrh){
				return true;
			}
			return false;
		}
		public function getLastHash():String
		{
			lastHash=zPad(useHashUINTa.toString(16),8)+
						zPad(useHashUINTb.toString(16),8)+
						zPad(useHashUINTc.toString(16),8)+
						zPad(useHashUINTd.toString(16),8)+
						zPad(useHashUINTe.toString(16),8)+
						zPad(useHashUINTf.toString(16),8)+
						zPad(useHashUINTg.toString(16),8)+
						zPad(useHashUINTh.toString(16),8);
			return lastHash;
		}
		public function judgement(nonce:uint):Boolean
		{
			calculationHash(nonce);
			return judgeWithTarget();
		}
		
		public function BitCoin_Judge(midFromOut:String,dataFromOut:String,targetFromOut:String)
		{
			midstateBreverse = bReverse(midFromOut);
			dataBreverse = bReverse(dataFromOut);
			targetBDWreverse = bReverse(dwReverse(targetFromOut));
			makeMiduint();
			makeDataPreString();
			makeTargetuint();
			makeWuint();
		}
	}
}