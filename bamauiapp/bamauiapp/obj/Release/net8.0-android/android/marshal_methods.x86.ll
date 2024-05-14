; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [133 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [266 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 50
	i32 42244203, ; 2: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 123
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 48
	i32 83839681, ; 6: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 114
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 55
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 73
	i32 205061960, ; 12: System.ComponentModel => 0xc38ff48 => 91
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 84
	i32 246610117, ; 14: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 112
	i32 317674968, ; 15: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 51
	i32 321963286, ; 17: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 62
	i32 379916513, ; 19: System.Threading.Thread.dll => 0x16a510e1 => 123
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 102
	i32 395744057, ; 21: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 22: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 23: System.Collections => 0x1a61054f => 88
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 61
	i32 459347974, ; 25: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 118
	i32 469710990, ; 26: System.dll => 0x1bff388e => 128
	i32 489220957, ; 27: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 28: System.ObjectModel => 0x1dbae811 => 107
	i32 513247710, ; 29: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 538707440, ; 30: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 31: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 59
	i32 627931235, ; 33: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 34: System.Collections.Concurrent => 0x2814a96c => 85
	i32 690569205, ; 35: System.Xml.Linq.dll => 0x29293ff5 => 125
	i32 722857257, ; 36: System.Runtime.Loader.dll => 0x2b15ed29 => 115
	i32 759454413, ; 37: System.Net.Requests => 0x2d445acd => 105
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 99
	i32 777317022, ; 39: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 40: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 804715423, ; 41: System.Data.Common => 0x2ff6fb9f => 93
	i32 823281589, ; 42: System.Private.Uri.dll => 0x311247b5 => 108
	i32 830298997, ; 43: System.IO.Compression.Brotli => 0x317d5b75 => 98
	i32 869139383, ; 44: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 45: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 46: System.ComponentModel.Primitives.dll => 0x35e25008 => 89
	i32 908888060, ; 47: Microsoft.Maui.Maps => 0x362c87fc => 49
	i32 918734561, ; 48: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 49: Newtonsoft.Json => 0x38f24a24 => 50
	i32 961460050, ; 50: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 62
	i32 975874589, ; 52: System.Xml.XDocument => 0x3a2aaa1d => 127
	i32 990727110, ; 53: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 54: System.Collections.dll => 0x3b2c715c => 88
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 72
	i32 1019214401, ; 56: System.Drawing => 0x3cbffa41 => 97
	i32 1028951442, ; 57: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1035644815, ; 58: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 52
	i32 1036536393, ; 59: System.Drawing.Primitives.dll => 0x3dc84a49 => 96
	i32 1043950537, ; 60: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 61: System.Linq.Expressions.dll => 0x3e444eb4 => 100
	i32 1052210849, ; 62: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 64
	i32 1082857460, ; 63: System.ComponentModel.TypeConverter => 0x408b17f4 => 90
	i32 1084122840, ; 64: Xamarin.Kotlin.StdLib => 0x409e66d8 => 81
	i32 1098259244, ; 65: System => 0x41761b2c => 128
	i32 1108272742, ; 66: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 67: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 68: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1158206939, ; 69: bamauiapp.dll => 0x4508d5db => 83
	i32 1168523401, ; 70: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 71: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 69
	i32 1260983243, ; 72: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 73: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 60
	i32 1308624726, ; 74: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 75: System.Linq => 0x4eed2679 => 101
	i32 1336711579, ; 76: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 77: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 78: Xamarin.AndroidX.SavedState => 0x52114ed3 => 72
	i32 1406073936, ; 79: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 56
	i32 1408764838, ; 80: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 117
	i32 1430672901, ; 81: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 82: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 83: System.IO.Compression.dll => 0x57261233 => 99
	i32 1469204771, ; 84: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 53
	i32 1470490898, ; 85: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 86: System.IO.Compression.Brotli.dll => 0x583e844f => 98
	i32 1526286932, ; 87: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 88: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 122
	i32 1622152042, ; 89: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 66
	i32 1624863272, ; 90: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 75
	i32 1636350590, ; 91: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 58
	i32 1639515021, ; 92: System.Net.Http.dll => 0x61b9038d => 103
	i32 1639986890, ; 93: System.Text.RegularExpressions => 0x61c036ca => 122
	i32 1657153582, ; 94: System.Runtime => 0x62c6282e => 119
	i32 1658251792, ; 95: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 76
	i32 1677501392, ; 96: System.Net.Primitives.dll => 0x63fca3d0 => 104
	i32 1679769178, ; 97: System.Security.Cryptography => 0x641f3e5a => 120
	i32 1729485958, ; 98: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 54
	i32 1743415430, ; 99: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 100: System.Diagnostics.TraceSource.dll => 0x69239124 => 95
	i32 1766324549, ; 101: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 73
	i32 1770582343, ; 102: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 103: Mono.Android.Runtime.dll => 0x6a216153 => 131
	i32 1782862114, ; 104: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 105: Xamarin.AndroidX.Fragment => 0x6a96652d => 61
	i32 1793755602, ; 106: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 107: Xamarin.AndroidX.Loader => 0x6bcd3296 => 66
	i32 1813058853, ; 108: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 81
	i32 1813201214, ; 109: Xamarin.Google.Android.Material => 0x6c13413e => 76
	i32 1818569960, ; 110: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 70
	i32 1824175904, ; 111: System.Text.Encoding.Extensions => 0x6cbab720 => 121
	i32 1824722060, ; 112: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 117
	i32 1828688058, ; 113: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1853025655, ; 114: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 115: System.Linq.Expressions => 0x6ec71a65 => 100
	i32 1870277092, ; 116: System.Reflection.Primitives => 0x6f7a29e4 => 113
	i32 1875935024, ; 117: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 118: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1908813208, ; 119: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 78
	i32 1910275211, ; 120: System.Collections.NonGeneric.dll => 0x71dc7c8b => 86
	i32 1939592360, ; 121: System.Private.Xml.Linq => 0x739bd4a8 => 109
	i32 1953182387, ; 122: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 123: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 124: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 125: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 64
	i32 2045470958, ; 126: System.Private.Xml => 0x79eb68ee => 110
	i32 2055257422, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 63
	i32 2066184531, ; 128: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 129: System.Diagnostics.TraceSource => 0x7b6f419e => 95
	i32 2079903147, ; 130: System.Runtime.dll => 0x7bf8cdab => 119
	i32 2090596640, ; 131: System.Numerics.Vectors => 0x7c9bf920 => 106
	i32 2127167465, ; 132: System.Console => 0x7ec9ffe9 => 92
	i32 2129483829, ; 133: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 77
	i32 2142473426, ; 134: System.Collections.Specialized => 0x7fb38cd2 => 87
	i32 2159891885, ; 135: Microsoft.Maui => 0x80bd55ad => 46
	i32 2169148018, ; 136: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 137: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 138: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 139: System.ObjectModel.dll => 0x82b6c85e => 107
	i32 2201107256, ; 140: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 82
	i32 2201231467, ; 141: System.Net.Http => 0x8334206b => 103
	i32 2207618523, ; 142: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 143: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2279755925, ; 144: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 71
	i32 2303073227, ; 145: Microsoft.Maui.Controls.Maps.dll => 0x89461bcb => 44
	i32 2303942373, ; 146: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 147: System.Private.CoreLib.dll => 0x896b7878 => 129
	i32 2353062107, ; 148: System.Net.Primitives => 0x8c40e0db => 104
	i32 2366048013, ; 149: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 150: System.Xml.ReaderWriter.dll => 0x8d24e767 => 126
	i32 2371007202, ; 151: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 152: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 153: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 154: System.Console.dll => 0x912896e5 => 92
	i32 2475788418, ; 155: Java.Interop.dll => 0x93918882 => 130
	i32 2480646305, ; 156: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2503351294, ; 157: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2538310050, ; 158: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 112
	i32 2550873716, ; 159: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 160: Microsoft.CSharp => 0x98ba5a04 => 84
	i32 2576534780, ; 161: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 162: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 121
	i32 2593496499, ; 163: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 164: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 82
	i32 2617129537, ; 165: System.Private.Xml.dll => 0x9bfe3a41 => 110
	i32 2620871830, ; 166: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 58
	i32 2626831493, ; 167: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 168: System.Runtime.Loader => 0x9ec4cf01 => 115
	i32 2664396074, ; 169: System.Xml.XDocument.dll => 0x9ecf752a => 127
	i32 2665622720, ; 170: System.Drawing.Primitives => 0x9ee22cc0 => 96
	i32 2676780864, ; 171: System.Data.Common.dll => 0x9f8c6f40 => 93
	i32 2724373263, ; 172: System.Runtime.Numerics.dll => 0xa262a30f => 116
	i32 2732626843, ; 173: Xamarin.AndroidX.Activity => 0xa2e0939b => 51
	i32 2737747696, ; 174: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 53
	i32 2740698338, ; 175: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 176: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 177: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 45
	i32 2764765095, ; 178: Microsoft.Maui.dll => 0xa4caf7a7 => 46
	i32 2778768386, ; 179: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 74
	i32 2785988530, ; 180: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 181: Microsoft.Maui.Graphics => 0xa7008e0b => 48
	i32 2810250172, ; 182: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 56
	i32 2847418871, ; 183: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 77
	i32 2853208004, ; 184: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 74
	i32 2861189240, ; 185: Microsoft.Maui.Essentials => 0xaa8a4878 => 47
	i32 2909740682, ; 186: System.Private.CoreLib => 0xad6f1e8a => 129
	i32 2916838712, ; 187: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 75
	i32 2919462931, ; 188: System.Numerics.Vectors.dll => 0xae037813 => 106
	i32 2959614098, ; 189: System.ComponentModel.dll => 0xb0682092 => 91
	i32 2978675010, ; 190: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 60
	i32 3017076677, ; 191: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 79
	i32 3038032645, ; 192: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 193: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 194: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 67
	i32 3058099980, ; 195: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 80
	i32 3059408633, ; 196: Mono.Android.Runtime => 0xb65adef9 => 131
	i32 3059793426, ; 197: System.ComponentModel.Primitives => 0xb660be12 => 89
	i32 3159123045, ; 198: System.Reflection.Primitives.dll => 0xbc4c6465 => 113
	i32 3178803400, ; 199: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 68
	i32 3220365878, ; 200: System.Threading => 0xbff2e236 => 124
	i32 3230466174, ; 201: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 78
	i32 3258312781, ; 202: Xamarin.AndroidX.CardView => 0xc235e84d => 54
	i32 3305363605, ; 203: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 204: System.Net.Requests.dll => 0xc5b097e4 => 105
	i32 3317135071, ; 205: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 59
	i32 3346324047, ; 206: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 69
	i32 3357674450, ; 207: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 208: Xamarin.AndroidX.Core => 0xc86c06e3 => 57
	i32 3366347497, ; 209: Java.Interop => 0xc8a662e9 => 130
	i32 3374999561, ; 210: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 71
	i32 3381016424, ; 211: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 212: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3458724246, ; 213: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3468262514, ; 214: bamauiapp => 0xceb97c72 => 83
	i32 3471940407, ; 215: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 90
	i32 3476120550, ; 216: Mono.Android => 0xcf3163e6 => 132
	i32 3484440000, ; 217: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3500773090, ; 218: Microsoft.Maui.Controls.Maps => 0xd0a98ee2 => 44
	i32 3509114376, ; 219: System.Xml.Linq => 0xd128d608 => 125
	i32 3580758918, ; 220: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 221: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 222: System.Linq.dll => 0xd715a361 => 101
	i32 3641597786, ; 223: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 63
	i32 3643446276, ; 224: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 225: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 68
	i32 3657292374, ; 226: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 227: Mono.Android.dll => 0xdae8aa5e => 132
	i32 3724971120, ; 228: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 67
	i32 3748608112, ; 229: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 94
	i32 3751619990, ; 230: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 231: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 55
	i32 3792276235, ; 232: System.Collections.NonGeneric => 0xe2098b0b => 86
	i32 3802395368, ; 233: System.Collections.Specialized.dll => 0xe2a3f2e8 => 87
	i32 3823082795, ; 234: System.Security.Cryptography.dll => 0xe3df9d2b => 120
	i32 3841636137, ; 235: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 236: System.Runtime.InteropServices.dll => 0xe56ef253 => 114
	i32 3896106733, ; 237: System.Collections.Concurrent.dll => 0xe839deed => 85
	i32 3896760992, ; 238: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 57
	i32 3920221145, ; 239: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 240: System.Xml.ReaderWriter => 0xea213423 => 126
	i32 3931092270, ; 241: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 70
	i32 3955647286, ; 242: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 52
	i32 3970018735, ; 243: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 80
	i32 4025784931, ; 244: System.Memory => 0xeff49a63 => 102
	i32 4046471985, ; 245: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 45
	i32 4054681211, ; 246: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 111
	i32 4068434129, ; 247: System.Private.Xml.Linq.dll => 0xf27f60d1 => 109
	i32 4073602200, ; 248: System.Threading.dll => 0xf2ce3c98 => 124
	i32 4091086043, ; 249: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 250: Microsoft.Maui.Essentials.dll => 0xf40add04 => 47
	i32 4099507663, ; 251: System.Drawing.dll => 0xf45985cf => 97
	i32 4100113165, ; 252: System.Private.Uri => 0xf462c30d => 108
	i32 4103439459, ; 253: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 254: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4147896353, ; 255: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 111
	i32 4150914736, ; 256: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 257: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 118
	i32 4182413190, ; 258: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 65
	i32 4190991637, ; 259: Microsoft.Maui.Maps.dll => 0xf9cd7515 => 49
	i32 4213026141, ; 260: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 94
	i32 4249188766, ; 261: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 262: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4274976490, ; 263: System.Runtime.Numerics => 0xfecef6ea => 116
	i32 4278134329, ; 264: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 79
	i32 4292120959 ; 265: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 65
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [266 x i32] [
	i32 0, ; 0
	i32 50, ; 1
	i32 9, ; 2
	i32 123, ; 3
	i32 33, ; 4
	i32 48, ; 5
	i32 17, ; 6
	i32 114, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 55, ; 10
	i32 73, ; 11
	i32 91, ; 12
	i32 84, ; 13
	i32 112, ; 14
	i32 30, ; 15
	i32 51, ; 16
	i32 8, ; 17
	i32 62, ; 18
	i32 123, ; 19
	i32 102, ; 20
	i32 34, ; 21
	i32 28, ; 22
	i32 88, ; 23
	i32 61, ; 24
	i32 118, ; 25
	i32 128, ; 26
	i32 6, ; 27
	i32 107, ; 28
	i32 42, ; 29
	i32 27, ; 30
	i32 39, ; 31
	i32 59, ; 32
	i32 19, ; 33
	i32 85, ; 34
	i32 125, ; 35
	i32 115, ; 36
	i32 105, ; 37
	i32 99, ; 38
	i32 25, ; 39
	i32 41, ; 40
	i32 93, ; 41
	i32 108, ; 42
	i32 98, ; 43
	i32 10, ; 44
	i32 24, ; 45
	i32 89, ; 46
	i32 49, ; 47
	i32 21, ; 48
	i32 50, ; 49
	i32 14, ; 50
	i32 62, ; 51
	i32 127, ; 52
	i32 23, ; 53
	i32 88, ; 54
	i32 72, ; 55
	i32 97, ; 56
	i32 38, ; 57
	i32 52, ; 58
	i32 96, ; 59
	i32 4, ; 60
	i32 100, ; 61
	i32 64, ; 62
	i32 90, ; 63
	i32 81, ; 64
	i32 128, ; 65
	i32 26, ; 66
	i32 20, ; 67
	i32 16, ; 68
	i32 83, ; 69
	i32 22, ; 70
	i32 69, ; 71
	i32 2, ; 72
	i32 60, ; 73
	i32 11, ; 74
	i32 101, ; 75
	i32 31, ; 76
	i32 32, ; 77
	i32 72, ; 78
	i32 56, ; 79
	i32 117, ; 80
	i32 0, ; 81
	i32 6, ; 82
	i32 99, ; 83
	i32 53, ; 84
	i32 42, ; 85
	i32 98, ; 86
	i32 30, ; 87
	i32 122, ; 88
	i32 66, ; 89
	i32 75, ; 90
	i32 58, ; 91
	i32 103, ; 92
	i32 122, ; 93
	i32 119, ; 94
	i32 76, ; 95
	i32 104, ; 96
	i32 120, ; 97
	i32 54, ; 98
	i32 1, ; 99
	i32 95, ; 100
	i32 73, ; 101
	i32 39, ; 102
	i32 131, ; 103
	i32 17, ; 104
	i32 61, ; 105
	i32 9, ; 106
	i32 66, ; 107
	i32 81, ; 108
	i32 76, ; 109
	i32 70, ; 110
	i32 121, ; 111
	i32 117, ; 112
	i32 40, ; 113
	i32 26, ; 114
	i32 100, ; 115
	i32 113, ; 116
	i32 8, ; 117
	i32 2, ; 118
	i32 78, ; 119
	i32 86, ; 120
	i32 109, ; 121
	i32 13, ; 122
	i32 35, ; 123
	i32 5, ; 124
	i32 64, ; 125
	i32 110, ; 126
	i32 63, ; 127
	i32 4, ; 128
	i32 95, ; 129
	i32 119, ; 130
	i32 106, ; 131
	i32 92, ; 132
	i32 77, ; 133
	i32 87, ; 134
	i32 46, ; 135
	i32 12, ; 136
	i32 41, ; 137
	i32 40, ; 138
	i32 107, ; 139
	i32 82, ; 140
	i32 103, ; 141
	i32 14, ; 142
	i32 36, ; 143
	i32 71, ; 144
	i32 44, ; 145
	i32 18, ; 146
	i32 129, ; 147
	i32 104, ; 148
	i32 12, ; 149
	i32 126, ; 150
	i32 35, ; 151
	i32 13, ; 152
	i32 10, ; 153
	i32 92, ; 154
	i32 130, ; 155
	i32 43, ; 156
	i32 16, ; 157
	i32 112, ; 158
	i32 11, ; 159
	i32 84, ; 160
	i32 15, ; 161
	i32 121, ; 162
	i32 20, ; 163
	i32 82, ; 164
	i32 110, ; 165
	i32 58, ; 166
	i32 15, ; 167
	i32 115, ; 168
	i32 127, ; 169
	i32 96, ; 170
	i32 93, ; 171
	i32 116, ; 172
	i32 51, ; 173
	i32 53, ; 174
	i32 1, ; 175
	i32 21, ; 176
	i32 45, ; 177
	i32 46, ; 178
	i32 74, ; 179
	i32 27, ; 180
	i32 48, ; 181
	i32 56, ; 182
	i32 77, ; 183
	i32 74, ; 184
	i32 47, ; 185
	i32 129, ; 186
	i32 75, ; 187
	i32 106, ; 188
	i32 91, ; 189
	i32 60, ; 190
	i32 79, ; 191
	i32 34, ; 192
	i32 7, ; 193
	i32 67, ; 194
	i32 80, ; 195
	i32 131, ; 196
	i32 89, ; 197
	i32 113, ; 198
	i32 68, ; 199
	i32 124, ; 200
	i32 78, ; 201
	i32 54, ; 202
	i32 7, ; 203
	i32 105, ; 204
	i32 59, ; 205
	i32 69, ; 206
	i32 24, ; 207
	i32 57, ; 208
	i32 130, ; 209
	i32 71, ; 210
	i32 3, ; 211
	i32 37, ; 212
	i32 22, ; 213
	i32 83, ; 214
	i32 90, ; 215
	i32 132, ; 216
	i32 23, ; 217
	i32 44, ; 218
	i32 125, ; 219
	i32 31, ; 220
	i32 33, ; 221
	i32 101, ; 222
	i32 63, ; 223
	i32 28, ; 224
	i32 68, ; 225
	i32 36, ; 226
	i32 132, ; 227
	i32 67, ; 228
	i32 94, ; 229
	i32 3, ; 230
	i32 55, ; 231
	i32 86, ; 232
	i32 87, ; 233
	i32 120, ; 234
	i32 38, ; 235
	i32 114, ; 236
	i32 85, ; 237
	i32 57, ; 238
	i32 19, ; 239
	i32 126, ; 240
	i32 70, ; 241
	i32 52, ; 242
	i32 80, ; 243
	i32 102, ; 244
	i32 45, ; 245
	i32 111, ; 246
	i32 109, ; 247
	i32 124, ; 248
	i32 5, ; 249
	i32 47, ; 250
	i32 97, ; 251
	i32 108, ; 252
	i32 29, ; 253
	i32 37, ; 254
	i32 111, ; 255
	i32 29, ; 256
	i32 118, ; 257
	i32 65, ; 258
	i32 49, ; 259
	i32 94, ; 260
	i32 18, ; 261
	i32 43, ; 262
	i32 116, ; 263
	i32 79, ; 264
	i32 65 ; 265
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
