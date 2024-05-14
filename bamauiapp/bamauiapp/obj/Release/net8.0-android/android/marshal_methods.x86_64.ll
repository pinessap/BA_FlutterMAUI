; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [133 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [266 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 42
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 132
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 47
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 100
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 55
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 72
	i64 560278790331054453, ; 6: System.Reflection.Primitives => 0x7c6829760de3975 => 113
	i64 590337075967009532, ; 7: Microsoft.Maui.Maps.dll => 0x8314c715ec1a2fc => 49
	i64 687654259221141486, ; 8: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 77
	i64 750875890346172408, ; 9: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 123
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 91
	i64 805302231655005164, ; 11: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 60
	i64 1010599046655515943, ; 13: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 113
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 76
	i64 1268860745194512059, ; 15: System.Drawing.dll => 0x119be62002c19ebb => 97
	i64 1369545283391376210, ; 16: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 68
	i64 1476839205573959279, ; 17: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 104
	i64 1486715745332614827, ; 18: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 43
	i64 1513467482682125403, ; 19: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 131
	i64 1537168428375924959, ; 20: System.Threading.Thread.dll => 0x15551e8a954ae0df => 123
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 53
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 65
	i64 1731380447121279447, ; 23: Newtonsoft.Json => 0x18071957e9b889d7 => 50
	i64 1743969030606105336, ; 24: System.Memory.dll => 0x1833d297e88f2af8 => 102
	i64 1767386781656293639, ; 25: System.Private.Uri.dll => 0x188704e9f5582107 => 108
	i64 1795316252682057001, ; 26: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 52
	i64 1835311033149317475, ; 27: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 28: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 72
	i64 1872234597156616525, ; 29: bamauiapp.dll => 0x19fb837253b7794d => 83
	i64 1875417405349196092, ; 30: System.Drawing.Primitives => 0x1a06d2319b6c713c => 96
	i64 1881198190668717030, ; 31: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 32: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 45
	i64 1981742497975770890, ; 33: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 64
	i64 2102659300918482391, ; 34: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 96
	i64 2133195048986300728, ; 35: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 50
	i64 2262844636196693701, ; 36: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 60
	i64 2287834202362508563, ; 37: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 85
	i64 2329709569556905518, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 63
	i64 2470498323731680442, ; 39: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 56
	i64 2497223385847772520, ; 40: System.Runtime => 0x22a7eb7046413568 => 119
	i64 2547086958574651984, ; 41: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 51
	i64 2602673633151553063, ; 42: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 43: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 37
	i64 2662981627730767622, ; 44: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 45: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 46: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 76
	i64 3289520064315143713, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 62
	i64 3311221304742556517, ; 48: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 106
	i64 3325875462027654285, ; 49: System.Runtime.Numerics => 0x2e27e21c8958b48d => 116
	i64 3344514922410554693, ; 50: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 82
	i64 3411255996856937470, ; 51: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 78
	i64 3429672777697402584, ; 52: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 47
	i64 3494946837667399002, ; 53: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 35
	i64 3522470458906976663, ; 54: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 73
	i64 3551103847008531295, ; 55: System.Private.CoreLib.dll => 0x31480e226177735f => 129
	i64 3567343442040498961, ; 56: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 57: System.Runtime.dll => 0x319037675df7e556 => 119
	i64 3638003163729360188, ; 58: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 36
	i64 3647754201059316852, ; 59: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 126
	i64 3655542548057982301, ; 60: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 35
	i64 3727469159507183293, ; 61: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 71
	i64 3869221888984012293, ; 62: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 39
	i64 3890352374528606784, ; 63: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 45
	i64 3933965368022646939, ; 64: System.Net.Requests => 0x369840a8bfadc09b => 105
	i64 3966267475168208030, ; 65: System.Memory => 0x370b03412596249e => 102
	i64 4009997192427317104, ; 66: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 118
	i64 4070326265757318011, ; 67: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 68: System.Private.Xml.dll => 0x3887fb25779ae26e => 110
	i64 4120493066591692148, ; 69: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 70: System.ComponentModel => 0x39a7562737acb67e => 91
	i64 4187479170553454871, ; 71: System.Linq.Expressions => 0x3a1cea1e912fa117 => 100
	i64 4205801962323029395, ; 72: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 90
	i64 4247996603072512073, ; 73: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 80
	i64 4360412976914417659, ; 74: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4794310189461587505, ; 75: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 51
	i64 4795410492532947900, ; 76: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 73
	i64 4809057822547766521, ; 77: System.Drawing => 0x42bd349c3145ecf9 => 97
	i64 4853321196694829351, ; 78: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 115
	i64 4871824391508510238, ; 79: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 80: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 81: System.Collections.Specialized => 0x46d2fb5e161b6285 => 87
	i64 5182934613077526976, ; 82: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 87
	i64 5290786973231294105, ; 83: System.Runtime.Loader => 0x496ca6b869b72699 => 115
	i64 5471532531798518949, ; 84: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 85: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 86: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 98
	i64 5573260873512690141, ; 87: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 120
	i64 5573669443803475672, ; 88: Microsoft.Maui.Controls.Maps => 0x4d59a6d41d5aeed8 => 44
	i64 5692067934154308417, ; 89: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 75
	i64 6200764641006662125, ; 90: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6284145129771520194, ; 91: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 111
	i64 6300676701234028427, ; 92: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 93: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 94: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 63
	i64 6471714727257221498, ; 95: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 96: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6501776506503328633, ; 97: bamauiapp => 0x5a3af348e71c7379 => 83
	i64 6548213210057960872, ; 98: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 59
	i64 6560151584539558821, ; 99: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 41
	i64 6743165466166707109, ; 100: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6786606130239981554, ; 101: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 95
	i64 6814185388980153342, ; 102: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 127
	i64 6876862101832370452, ; 103: System.Xml.Linq => 0x5f6f85a57d108914 => 125
	i64 6894844156784520562, ; 104: System.Numerics.Vectors => 0x5faf683aead1ad72 => 106
	i64 7083547580668757502, ; 105: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 109
	i64 7141281584637745974, ; 106: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 79
	i64 7270811800166795866, ; 107: System.Linq => 0x64e71ccf51a90a5a => 101
	i64 7377312882064240630, ; 108: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 90
	i64 7488575175965059935, ; 109: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 125
	i64 7489048572193775167, ; 110: System.ObjectModel => 0x67ee71ff6b419e3f => 107
	i64 7654504624184590948, ; 111: System.Net.Http => 0x6a3a4366801b8264 => 103
	i64 7714652370974252055, ; 112: System.Private.CoreLib => 0x6b0ff375198b9c17 => 129
	i64 7735176074855944702, ; 113: Microsoft.CSharp => 0x6b58dda848e391fe => 84
	i64 7735352534559001595, ; 114: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 81
	i64 7742555799473854801, ; 115: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 116: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 53
	i64 7975724199463739455, ; 117: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 118: System.Collections.dll => 0x6fe942efa61731bf => 88
	i64 8083354569033831015, ; 119: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 62
	i64 8087206902342787202, ; 120: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 94
	i64 8108129031893776750, ; 121: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 122: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 130
	i64 8185542183669246576, ; 123: System.Collections => 0x7198e33f4794aa70 => 88
	i64 8246048515196606205, ; 124: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 48
	i64 8368701292315763008, ; 125: System.Security.Cryptography => 0x7423997c6fd56140 => 120
	i64 8386351099740279196, ; 126: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 127: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 70
	i64 8410671156615598628, ; 128: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 112
	i64 8563666267364444763, ; 129: System.Private.Uri => 0x76d841191140ca5b => 108
	i64 8626175481042262068, ; 130: Java.Interop => 0x77b654e585b55834 => 130
	i64 8638972117149407195, ; 131: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 84
	i64 8639588376636138208, ; 132: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 69
	i64 8677882282824630478, ; 133: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 134: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 94
	i64 8941376889969657626, ; 135: System.Xml.XDocument => 0x7c1626e87187471a => 127
	i64 9045785047181495996, ; 136: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 137: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 75
	i64 9324707631942237306, ; 138: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 52
	i64 9363564275759486853, ; 139: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 140: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 141: System.Text.RegularExpressions => 0x860e407c9991dd9b => 122
	i64 9678050649315576968, ; 142: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 56
	i64 9702891218465930390, ; 143: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 86
	i64 9773637193738963987, ; 144: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 145: Mono.Android.dll => 0x881f890734e555e7 => 132
	i64 9875200773399460291, ; 146: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 77
	i64 9956195530459977388, ; 147: Microsoft.Maui => 0x8a2b8315b36616ac => 46
	i64 10038780035334861115, ; 148: System.Net.Http.dll => 0x8b50e941206af13b => 103
	i64 10051358222726253779, ; 149: System.Private.Xml => 0x8b7d990c97ccccd3 => 110
	i64 10092835686693276772, ; 150: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 43
	i64 10143853363526200146, ; 151: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 152: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 153: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 59
	i64 10245369515835430794, ; 154: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 112
	i64 10364469296367737616, ; 155: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 111
	i64 10406448008575299332, ; 156: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 82
	i64 10430153318873392755, ; 157: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 57
	i64 10506226065143327199, ; 158: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10761706286639228993, ; 159: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 160: System.Net.Primitives => 0x95ac8cfb68830758 => 104
	i64 11002576679268595294, ; 161: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 40
	i64 11009005086950030778, ; 162: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 46
	i64 11103970607964515343, ; 163: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 164: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 165: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 166: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 74
	i64 11220793807500858938, ; 167: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 168: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 41
	i64 11340910727871153756, ; 169: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 58
	i64 11485890710487134646, ; 170: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 114
	i64 11518296021396496455, ; 171: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 172: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 74
	i64 11530571088791430846, ; 173: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 39
	i64 11855031688536399763, ; 174: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12201331334810686224, ; 175: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 118
	i64 12451044538927396471, ; 176: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 61
	i64 12466513435562512481, ; 177: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 66
	i64 12475113361194491050, ; 178: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 179: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 95
	i64 12538491095302438457, ; 180: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 54
	i64 12550732019250633519, ; 181: System.IO.Compression => 0xae2d28465e8e1b2f => 99
	i64 12700543734426720211, ; 182: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 55
	i64 12708922737231849740, ; 183: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 121
	i64 12843321153144804894, ; 184: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 42
	i64 12989346753972519995, ; 185: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 186: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13068258254871114833, ; 187: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 117
	i64 13343850469010654401, ; 188: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 131
	i64 13381594904270902445, ; 189: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 190: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 81
	i64 13540124433173649601, ; 191: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13572454107664307259, ; 192: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 71
	i64 13717397318615465333, ; 193: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 89
	i64 13881769479078963060, ; 194: System.Console.dll => 0xc0a5f3cade5c6774 => 92
	i64 13959074834287824816, ; 195: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 61
	i64 14124974489674258913, ; 196: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 54
	i64 14125464355221830302, ; 197: System.Threading.dll => 0xc407bafdbc707a9e => 124
	i64 14254574811015963973, ; 198: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 121
	i64 14349907877893689639, ; 199: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 200: System.Net.Requests.dll => 0xc8afd8683afdece6 => 105
	i64 14464374589798375073, ; 201: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 202: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14610046442689856844, ; 203: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14622043554576106986, ; 204: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 117
	i64 14669215534098758659, ; 205: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 37
	i64 14705122255218365489, ; 206: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 207: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 208: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 209: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 58
	i64 14904040806490515477, ; 210: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 211: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 38
	i64 14987728460634540364, ; 212: System.IO.Compression.dll => 0xcfff1ba06622494c => 99
	i64 15076659072870671916, ; 213: System.ObjectModel.dll => 0xd13b0d8c1620662c => 107
	i64 15111608613780139878, ; 214: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 215: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 98
	i64 15133485256822086103, ; 216: System.Linq.dll => 0xd204f0a9127dd9d7 => 101
	i64 15203009853192377507, ; 217: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 218: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 36
	i64 15370334346939861994, ; 219: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 57
	i64 15391712275433856905, ; 220: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 38
	i64 15527772828719725935, ; 221: System.Console => 0xd77dbb1e38cd3d6f => 92
	i64 15536481058354060254, ; 222: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 223: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 65
	i64 15609085926864131306, ; 224: System.dll => 0xd89e9cf3334914ea => 128
	i64 15661133872274321916, ; 225: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 126
	i64 15783653065526199428, ; 226: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15930129725311349754, ; 227: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 80
	i64 16056281320585338352, ; 228: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 229: System => 0xe03056ea4e39aa26 => 128
	i64 16182611612321266217, ; 230: Microsoft.Maui.Maps => 0xe0942f85b2853a29 => 49
	i64 16288847719894691167, ; 231: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 232: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 40
	i64 16649148416072044166, ; 233: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 48
	i64 16677317093839702854, ; 234: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 70
	i64 16803648858859583026, ; 235: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 236: System.Data.Common.dll => 0xe9ecc87060889373 => 93
	i64 16890310621557459193, ; 237: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 122
	i64 16942731696432749159, ; 238: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 239: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 68
	i64 17008137082415910100, ; 240: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 86
	i64 17027804579603049667, ; 241: Microsoft.Maui.Controls.Maps.dll => 0xec4eea0c48026cc3 => 44
	i64 17031351772568316411, ; 242: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 67
	i64 17062143951396181894, ; 243: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 89
	i64 17203614576212522419, ; 244: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17230721278011714856, ; 245: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 109
	i64 17260702271250283638, ; 246: System.Data.Common => 0xef8a5543bba6bc76 => 93
	i64 17310278548634113468, ; 247: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 248: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17514990004910432069, ; 249: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 250: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17704177640604968747, ; 251: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 66
	i64 17710060891934109755, ; 252: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 64
	i64 17712670374920797664, ; 253: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 114
	i64 17777860260071588075, ; 254: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 116
	i64 17827813215687577648, ; 255: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 256: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 17969331831154222830, ; 257: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 79
	i64 17986907704309214542, ; 258: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 78
	i64 18025913125965088385, ; 259: System.Threading => 0xfa28e87b91334681 => 124
	i64 18121036031235206392, ; 260: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 67
	i64 18245806341561545090, ; 261: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 85
	i64 18305135509493619199, ; 262: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 69
	i64 18324163916253801303, ; 263: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 264: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 265: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [266 x i32] [
	i32 42, ; 0
	i32 132, ; 1
	i32 47, ; 2
	i32 100, ; 3
	i32 55, ; 4
	i32 72, ; 5
	i32 113, ; 6
	i32 49, ; 7
	i32 77, ; 8
	i32 123, ; 9
	i32 91, ; 10
	i32 12, ; 11
	i32 60, ; 12
	i32 113, ; 13
	i32 76, ; 14
	i32 97, ; 15
	i32 68, ; 16
	i32 104, ; 17
	i32 43, ; 18
	i32 131, ; 19
	i32 123, ; 20
	i32 53, ; 21
	i32 65, ; 22
	i32 50, ; 23
	i32 102, ; 24
	i32 108, ; 25
	i32 52, ; 26
	i32 6, ; 27
	i32 72, ; 28
	i32 83, ; 29
	i32 96, ; 30
	i32 28, ; 31
	i32 45, ; 32
	i32 64, ; 33
	i32 96, ; 34
	i32 50, ; 35
	i32 60, ; 36
	i32 85, ; 37
	i32 63, ; 38
	i32 56, ; 39
	i32 119, ; 40
	i32 51, ; 41
	i32 27, ; 42
	i32 37, ; 43
	i32 2, ; 44
	i32 7, ; 45
	i32 76, ; 46
	i32 62, ; 47
	i32 106, ; 48
	i32 116, ; 49
	i32 82, ; 50
	i32 78, ; 51
	i32 47, ; 52
	i32 35, ; 53
	i32 73, ; 54
	i32 129, ; 55
	i32 22, ; 56
	i32 119, ; 57
	i32 36, ; 58
	i32 126, ; 59
	i32 35, ; 60
	i32 71, ; 61
	i32 39, ; 62
	i32 45, ; 63
	i32 105, ; 64
	i32 102, ; 65
	i32 118, ; 66
	i32 3, ; 67
	i32 110, ; 68
	i32 33, ; 69
	i32 91, ; 70
	i32 100, ; 71
	i32 90, ; 72
	i32 80, ; 73
	i32 28, ; 74
	i32 51, ; 75
	i32 73, ; 76
	i32 97, ; 77
	i32 115, ; 78
	i32 18, ; 79
	i32 26, ; 80
	i32 87, ; 81
	i32 87, ; 82
	i32 115, ; 83
	i32 26, ; 84
	i32 29, ; 85
	i32 98, ; 86
	i32 120, ; 87
	i32 44, ; 88
	i32 75, ; 89
	i32 23, ; 90
	i32 111, ; 91
	i32 6, ; 92
	i32 34, ; 93
	i32 63, ; 94
	i32 7, ; 95
	i32 11, ; 96
	i32 83, ; 97
	i32 59, ; 98
	i32 41, ; 99
	i32 19, ; 100
	i32 95, ; 101
	i32 127, ; 102
	i32 125, ; 103
	i32 106, ; 104
	i32 109, ; 105
	i32 79, ; 106
	i32 101, ; 107
	i32 90, ; 108
	i32 125, ; 109
	i32 107, ; 110
	i32 103, ; 111
	i32 129, ; 112
	i32 84, ; 113
	i32 81, ; 114
	i32 14, ; 115
	i32 53, ; 116
	i32 25, ; 117
	i32 88, ; 118
	i32 62, ; 119
	i32 94, ; 120
	i32 16, ; 121
	i32 130, ; 122
	i32 88, ; 123
	i32 48, ; 124
	i32 120, ; 125
	i32 31, ; 126
	i32 70, ; 127
	i32 112, ; 128
	i32 108, ; 129
	i32 130, ; 130
	i32 84, ; 131
	i32 69, ; 132
	i32 21, ; 133
	i32 94, ; 134
	i32 127, ; 135
	i32 31, ; 136
	i32 75, ; 137
	i32 52, ; 138
	i32 5, ; 139
	i32 29, ; 140
	i32 122, ; 141
	i32 56, ; 142
	i32 86, ; 143
	i32 1, ; 144
	i32 132, ; 145
	i32 77, ; 146
	i32 46, ; 147
	i32 103, ; 148
	i32 110, ; 149
	i32 43, ; 150
	i32 3, ; 151
	i32 19, ; 152
	i32 59, ; 153
	i32 112, ; 154
	i32 111, ; 155
	i32 82, ; 156
	i32 57, ; 157
	i32 1, ; 158
	i32 33, ; 159
	i32 104, ; 160
	i32 40, ; 161
	i32 46, ; 162
	i32 12, ; 163
	i32 27, ; 164
	i32 8, ; 165
	i32 74, ; 166
	i32 15, ; 167
	i32 41, ; 168
	i32 58, ; 169
	i32 114, ; 170
	i32 13, ; 171
	i32 74, ; 172
	i32 39, ; 173
	i32 30, ; 174
	i32 118, ; 175
	i32 61, ; 176
	i32 66, ; 177
	i32 34, ; 178
	i32 95, ; 179
	i32 54, ; 180
	i32 99, ; 181
	i32 55, ; 182
	i32 121, ; 183
	i32 42, ; 184
	i32 0, ; 185
	i32 21, ; 186
	i32 117, ; 187
	i32 131, ; 188
	i32 9, ; 189
	i32 81, ; 190
	i32 30, ; 191
	i32 71, ; 192
	i32 89, ; 193
	i32 92, ; 194
	i32 61, ; 195
	i32 54, ; 196
	i32 124, ; 197
	i32 121, ; 198
	i32 23, ; 199
	i32 105, ; 200
	i32 24, ; 201
	i32 32, ; 202
	i32 2, ; 203
	i32 117, ; 204
	i32 37, ; 205
	i32 16, ; 206
	i32 15, ; 207
	i32 32, ; 208
	i32 58, ; 209
	i32 0, ; 210
	i32 38, ; 211
	i32 99, ; 212
	i32 107, ; 213
	i32 17, ; 214
	i32 98, ; 215
	i32 101, ; 216
	i32 22, ; 217
	i32 36, ; 218
	i32 57, ; 219
	i32 38, ; 220
	i32 92, ; 221
	i32 4, ; 222
	i32 65, ; 223
	i32 128, ; 224
	i32 126, ; 225
	i32 5, ; 226
	i32 80, ; 227
	i32 24, ; 228
	i32 128, ; 229
	i32 49, ; 230
	i32 18, ; 231
	i32 40, ; 232
	i32 48, ; 233
	i32 70, ; 234
	i32 17, ; 235
	i32 93, ; 236
	i32 122, ; 237
	i32 25, ; 238
	i32 68, ; 239
	i32 86, ; 240
	i32 44, ; 241
	i32 67, ; 242
	i32 89, ; 243
	i32 20, ; 244
	i32 109, ; 245
	i32 93, ; 246
	i32 10, ; 247
	i32 10, ; 248
	i32 8, ; 249
	i32 20, ; 250
	i32 66, ; 251
	i32 64, ; 252
	i32 114, ; 253
	i32 116, ; 254
	i32 11, ; 255
	i32 4, ; 256
	i32 79, ; 257
	i32 78, ; 258
	i32 124, ; 259
	i32 67, ; 260
	i32 85, ; 261
	i32 69, ; 262
	i32 14, ; 263
	i32 13, ; 264
	i32 9 ; 265
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
