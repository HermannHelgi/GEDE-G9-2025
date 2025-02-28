// Made with Amplify Shader Editor v1.9.7.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Toby Fredson/The Toby Foliage Engine/(TTFE) Tree Foliage"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		_AlphaClip("Alpha Clip", Float) = 1.4
		[Header(__________(TTFE) TREE FOLIAGE SHADER___________)][Header(_____________________________________________________)][Header(Texture Maps)][NoScaleOffset]_AlbedoMap("Albedo Map", 2D) = "white" {}
		[NoScaleOffset][Normal]_NormalMap("Normal Map", 2D) = "bump" {}
		[NoScaleOffset]_MaskMapRGBA("Mask Map *RGB(A)", 2D) = "white" {}
		[NoScaleOffset]_SpecularMap("Specular Map (Grayscale)", 2D) = "white" {}
		[NoScaleOffset]_NoiseMapGrayscale("Noise Map (Grayscale)", 2D) = "white" {}
		[Header(_____________________________________________________)][Header(Texture settings)][Header((Albedo))]_AlbedoColor("Albedo Color", Color) = (1,1,1,0)
		[Header((Normal))]_NormalIntenisty("Normal Intenisty", Float) = 1
		[Toggle]_NormalBackFaceFixBranch("Normal Back Face Fix (Branch)", Float) = 0
		[Header((Smoothness))]_SmoothnessIntensity("Smoothness Intensity", Range( 0 , 5)) = 1
		[Header((Ambient Occlusion))]_AmbientOcclusionIntensity("Ambient Occlusion Intensity", Range( 0 , 1)) = 1
		[Header((Specular))]_SpecularPower("Specular Power", Range( 0 , 1)) = 1
		[Toggle(_SPECULARBACKFACEOCCLUSION1_ON)] _SpecularBackfaceOcclusion1("Specular Backface Occlusion", Float) = 0
		_SpecularBias("Specular Bias", Float) = 1
		_SpecularScale("Specular Scale", Float) = -5
		_SpecularStrength("Specular Strength", Float) = 2
		_SpecularMapScale("Specular Map Scale", Float) = 1
		_SpecularMapOffset("Specular Map Offset", Float) = 0
		[Header((Translucency))]_TranslucencyPower("Translucency Power", Range( 1 , 10)) = 1
		_TranslucencyRange("Translucency Range", Float) = 1
		[Toggle]_TranslucencyTreeTangents("Translucency Tree Tangents", Float) = 0
		[Header( _____________________________________________________)][Header(Shading Settings)][Header((Self Shading))]_VertexLighting("Vertex Lighting", Float) = 0
		_VertexShadow("Vertex Shadow", Float) = 0
		[Toggle(_SELFSHADINGVERTEXCOLOR_ON)] _SelfShadingVertexColor("Self Shading (Vertex Color)", Float) = 0
		[Toggle]_LightDetectBackface("Light Detect (Back face)", Float) = 1
		[Header(Season Settings)][Header((Season Control))]_ColorVariation("Color Variation", Range( 0 , 1)) = 1
		_DryLeafColor("Dry Leaf Color", Color) = (0.5568628,0.3730685,0.1764706,0)
		_DryLeavesScale("Dry Leaves - Scale", Float) = 0
		_DryLeavesOffset("Dry Leaves - Offset", Float) = 0
		_SeasonChangeGlobal("Season Change - Global", Range( -2 , 2)) = 0
		[Toggle]_BranchMaskR("Branch Mask *(R)", Float) = 0
		[Toggle]_NormalizeSeasons("Normalize Seasons", Float) = 0
		[Header(_____________________________________________________)][Header(Wind Settings)][Header((Global Wind Settings))]_GlobalWindStrength("Global Wind Strength", Range( 0 , 1)) = 1
		_StrongWindSpeed("Strong Wind Speed", Range( 1 , 3)) = 1
		[KeywordEnum(GentleBreeze,WindOff)] _WindType("Wind Type", Float) = 0
		[Header((Trunk and Branch))]_BranchWindLarge("Branch Wind Large", Range( 0 , 20)) = 1
		_BranchWindSmall("Branch Wind Small", Range( 0 , 20)) = 1
		[Toggle(_LEAFFLUTTER_ON)] _LeafFlutter("Leaf Flutter", Float) = 1
		_GlobalFlutterIntensity("Global Flutter Intensity", Range( 0 , 20)) = 1
		[NoScaleOffset]_WindNoise("Wind Noise Map", 2D) = "white" {}
		[Toggle]_PivotSway("Pivot Sway", Float) = 0
		[Header((Wind Mask))]_Radius("Radius", Float) = 1
		_Hardness("Hardness", Float) = 1
		[Toggle]_CenterofMass("Center of Mass", Float) = 0
		[Toggle]_SwitchVGreenToRGBA("Switch VGreen To RGBA", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1
		[HideInInspector][ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1
		[HideInInspector][ToggleOff] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}

		//[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Lit" }

		Cull Off
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
            #pragma multi_compile _ EVALUATE_SH_MIXED EVALUATE_SH_VERTEX
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma multi_compile _ _FORWARD_PLUS

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ USE_LEGACY_LIGHTMAPS
			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_FORWARD

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON
			#pragma shader_feature_local _SELFSHADINGVERTEXCOLOR_ON
			#pragma shader_feature_local _SPECULARBACKFACEOCCLUSION1_ON


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD7;
				#endif	
				#if defined(USE_APV_PROBE_OCCLUSION)
					float4 probeOcclusion : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;
			sampler2D _NoiseMapGrayscale;
			sampler2D _MaskMapRGBA;
			sampler2D _SpecularMap;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			
			float4 SampleGradient( Gradient gradient, float time )
			{
				float3 color = gradient.colors[0].rgb;
				UNITY_UNROLL
				for (int c = 1; c < 8; c++)
				{
				float colorPos = saturate((time - gradient.colors[c-1].w) / ( 0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, gradient.colorsLength-1));
				color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				}
				#ifndef UNITY_COLORSPACE_GAMMA
				color = SRGBToLinear(color);
				#endif
				float alpha = gradient.alphas[0].x;
				UNITY_UNROLL
				for (int a = 1; a < 8; a++)
				{
				float alphaPos = saturate((time - gradient.alphas[a-1].y) / ( 0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, gradient.alphasLength-1));
				alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				}
				return float4(color, alpha);
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.tangentOS.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.tangentOS.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.tangentOS.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.tangentOS.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.tangentOS.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord9.xy = input.texcoord.xy;
				output.ase_texcoord10 = input.positionOS;
				output.ase_normal = input.normalOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord9.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif
				input.normalOS = LightDetect_Output597_g1494.xyz;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x );
				output.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y );
				output.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z );

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV( input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				OUTPUT_SH4( vertexInput.positionWS, normalInput.normalWS.xyz, GetWorldSpaceNormalizeViewDir( vertexInput.positionWS ), output.lightmapUVOrVertexSH.xyz, output.probeOcclusion );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					output.lightmapUVOrVertexSH.zw = input.texcoord.xy;
					output.lightmapUVOrVertexSH.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );

				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( vertexInput.positionCS.z );
				#else
					half fogFactor = 0;
				#endif

				output.fogFactorAndVertexLight = half4(fogFactor, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				output.ase_color = input.ase_color;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag ( PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						, bool ase_vface : SV_IsFrontFace ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (input.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( input.tSpace0.xyz );
					float3 WorldTangent = input.tSpace1.xyz;
					float3 WorldBiTangent = input.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(input.tSpace0.w,input.tSpace1.w,input.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(input.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = input.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 uv_AlbedoMap513_g1494 = input.ase_texcoord9.xy;
				float2 uv_AlbedoMap662_g1494 = input.ase_texcoord9.xy;
				float4 tex2DNode662_g1494 = tex2D( _AlbedoMap, uv_AlbedoMap662_g1494 );
				float2 uv_NoiseMapGrayscale669_g1494 = input.ase_texcoord9.xy;
				float4 transform741_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1497 = dot( transform741_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1497 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1497 ) * 43758.55 ) ));
				float temp_output_742_0_g1494 = lerpResult10_g1497;
				float normalizeResult799_g1494 = normalize( temp_output_742_0_g1494 );
				float3 normalizeResult439_g1494 = normalize( input.ase_texcoord10.xyz );
				float DryLeafPositionMask443_g1494 = ( (distance( normalizeResult439_g1494 , float3( 0,0.8,0 ) )*1.0 + 0.0) * 1 );
				float4 lerpResult677_g1494 = lerp( ( _DryLeafColor * ( tex2DNode662_g1494.g * 2 ) ) , tex2DNode662_g1494 , saturate( (( ( tex2D( _NoiseMapGrayscale, uv_NoiseMapGrayscale669_g1494 ).r * (( _NormalizeSeasons )?( normalizeResult799_g1494 ):( temp_output_742_0_g1494 )) * DryLeafPositionMask443_g1494 ) - _SeasonChangeGlobal )*_DryLeavesScale + _DryLeavesOffset) ));
				float4 SeasonControl_Output676_g1494 = lerpResult677_g1494;
				Gradient gradient752_g1494 = NewGradient( 0, 2, 2, float4( 1, 0.276868, 0, 0 ), float4( 0, 1, 0.7818019, 1 ), 0, 0, 0, 0, 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float4 transform754_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1496 = dot( transform754_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1496 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1496 ) * 43758.55 ) ));
				float4 lerpResult515_g1494 = lerp( SeasonControl_Output676_g1494 , ( ( SeasonControl_Output676_g1494 * 0.5 ) + ( SampleGradient( gradient752_g1494, lerpResult10_g1496 ) * SeasonControl_Output676_g1494 ) ) , _ColorVariation);
				float2 uv_MaskMapRGBA505_g1494 = input.ase_texcoord9.xy;
				float4 lerpResult521_g1494 = lerp( tex2D( _AlbedoMap, uv_AlbedoMap513_g1494 ) , lerpResult515_g1494 , (( _BranchMaskR )?( tex2D( _MaskMapRGBA, uv_MaskMapRGBA505_g1494 ).r ):( 1.0 )));
				float3 temp_output_465_0_g1494 = ( ( input.ase_texcoord10.xyz * float3( 2,1.3,2 ) ) / 25.0 );
				float dotResult471_g1494 = dot( temp_output_465_0_g1494 , temp_output_465_0_g1494 );
				float3 normalizeResult457_g1494 = normalize( input.ase_texcoord10.xyz );
				float SelfShading601_g1494 = saturate( (( pow( abs( saturate( dotResult471_g1494 ) ) , 1.5 ) + ( ( 1.0 - (distance( normalizeResult457_g1494 , float3( 0,0.8,0 ) )*0.5 + 0.0) ) * 0.6 ) )*0.92 + -0.16) );
				#ifdef _SELFSHADINGVERTEXCOLOR_ON
				float4 staticSwitch618_g1494 = ( lerpResult521_g1494 * (SelfShading601_g1494*_VertexLighting + _VertexShadow) );
				#else
				float4 staticSwitch618_g1494 = lerpResult521_g1494;
				#endif
				float4 GrassColorVariation_Output586_g1494 = staticSwitch618_g1494;
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float4 transform487_g1494 = mul(GetObjectToWorldMatrix(),float4( input.ase_texcoord10.xyz , 0.0 ));
				float dotResult566_g1494 = dot( float4( ase_viewDirWS , 0.0 ) , -( float4( _MainLightPosition.xyz , 0.0 ) + ( (( _TranslucencyTreeTangents )?( float4( input.ase_normal , 0.0 ) ):( transform487_g1494 )) * _TranslucencyRange ) ) );
				float2 uv_MaskMapRGBA516_g1494 = input.ase_texcoord9.xy;
				float ase_lightIntensity = max( max( _MainLightColor.r, _MainLightColor.g ), _MainLightColor.b );
				float4 ase_lightColor = float4( _MainLightColor.rgb / ase_lightIntensity, ase_lightIntensity );
				float TobyTranslucency526_g1494 = ( saturate( dotResult566_g1494 ) * tex2D( _MaskMapRGBA, uv_MaskMapRGBA516_g1494 ).b * ase_lightColor.a );
				float TranslucencyIntensity616_g1494 = _TranslucencyPower;
				float4 Albedo_Output613_g1494 = ( ( _AlbedoColor * GrassColorVariation_Output586_g1494 ) * (1.0 + (TobyTranslucency526_g1494 - 0.0) * (TranslucencyIntensity616_g1494 - 1.0) / (1.0 - 0.0)) );
				
				float2 uv_NormalMap531_g1494 = input.ase_texcoord9.xy;
				float3 unpack531_g1494 = UnpackNormalScale( tex2D( _NormalMap, uv_NormalMap531_g1494 ), _NormalIntenisty );
				unpack531_g1494.z = lerp( 1, unpack531_g1494.z, saturate(_NormalIntenisty) );
				float3 tex2DNode531_g1494 = unpack531_g1494;
				float3 break539_g1494 = tex2DNode531_g1494;
				float3 appendResult552_g1494 = (float3(break539_g1494.x , break539_g1494.y , ( break539_g1494.z * ase_vface )));
				float3 Normal_Output557_g1494 = (( _NormalBackFaceFixBranch )?( appendResult552_g1494 ):( tex2DNode531_g1494 ));
				
				float temp_output_809_0_g1494 = ( 0.2 * _SpecularPower );
				float2 uv_SpecularMap702_g1494 = input.ase_texcoord9.xy;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal835_g1494 = WorldTangent;
				float fresnelNdotV835_g1494 = dot( float3(dot(tanToWorld0,tanNormal835_g1494), dot(tanToWorld1,tanNormal835_g1494), dot(tanToWorld2,tanNormal835_g1494)), _MainLightPosition.xyz );
				float fresnelNode835_g1494 = ( _SpecularBias + _SpecularScale * pow( max( 1.0 - fresnelNdotV835_g1494 , 0.0001 ), _SpecularStrength ) );
				float SpecRecalculate829_g1494 = saturate( fresnelNode835_g1494 );
				#ifdef _SPECULARBACKFACEOCCLUSION1_ON
				float staticSwitch790_g1494 = ( temp_output_809_0_g1494 * saturate( (tex2D( _SpecularMap, uv_SpecularMap702_g1494 ).r*_SpecularMapScale + _SpecularMapOffset) ) * SpecRecalculate829_g1494 );
				#else
				float staticSwitch790_g1494 = temp_output_809_0_g1494;
				#endif
				float Specular_Output570_g1494 = staticSwitch790_g1494;
				float3 temp_cast_7 = (Specular_Output570_g1494).xxx;
				
				float2 uv_MaskMapRGBA535_g1494 = input.ase_texcoord9.xy;
				float4 tex2DNode535_g1494 = tex2D( _MaskMapRGBA, uv_MaskMapRGBA535_g1494 );
				float Smoothness_Output558_g1494 = ( tex2DNode535_g1494.a * _SmoothnessIntensity );
				
				float AoMapBase538_g1494 = tex2DNode535_g1494.g;
				float AmbientOcclusion_Output582_g1494 = ( pow( abs( AoMapBase538_g1494 ) , _AmbientOcclusionIntensity ) * ( 1.5 / ( ( saturate( TobyTranslucency526_g1494 ) * TranslucencyIntensity616_g1494 ) + 1.5 ) ) );
				
				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord9.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float3 BaseColor = Albedo_Output613_g1494.rgb;
				float3 Normal = Normal_Output557_g1494;
				float3 Emission = 0;
				float3 Specular = temp_cast_7;
				float Metallic = 0;
				float Smoothness = Smoothness_Output558_g1494;
				float Occlusion = AmbientOcclusion_Output582_g1494;
				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = input.positionCS;
				inputData.viewDirectionWS = WorldViewDirection;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent, WorldBiTangent, WorldNormal));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = input.fogFactorAndVertexLight.x;
				#endif
					inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#elif !defined(LIGHTMAP_ON) && (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
					inputData.bakedGI = SAMPLE_GI( SH, GetAbsolutePositionWS(inputData.positionWS),
						inputData.normalWS,
						inputData.viewDirectionWS,
						input.positionCS.xy,
						input.probeOcclusion,
						inputData.shadowMask );
				#else
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						inputData.probeOcclusion = input.probeOcclusion;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(input.positionCS, surfaceData, inputData);
				#endif

				#ifdef _ASE_LIGHTING_SIMPLE
					half4 color = UniversalFragmentBlinnPhong( inputData, surfaceData);
				#else
					half4 color = UniversalFragmentPBR( inputData, surfaceData);
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#define SUM_LIGHT_TRANSMISSION(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 transmission = max( 0, -dot( inputData.normalWS, Light.direction ) ) * atten * Transmission;\
						color.rgb += BaseColor * transmission;

					SUM_LIGHT_TRANSMISSION( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSMISSION( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSMISSION( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#define SUM_LIGHT_TRANSLUCENCY(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 lightDir = Light.direction + inputData.normalWS * normal;\
						half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );\
						half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;\
						color.rgb += BaseColor * translucency * strength;

					SUM_LIGHT_TRANSLUCENCY( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSLUCENCY( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSLUCENCY( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), input.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, input.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif

				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif				
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			

			float3 _LightDirection;
			float3 _LightPosition;

			PackedVaryings VertexFunction( Attributes input )
			{
				PackedVaryings output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.ase_tangent.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.ase_texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.ase_tangent.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.ase_tangent.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.ase_texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord3.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord3.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = positionWS;
				#endif

				float3 normalWS = TransformObjectToWorldDir(input.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				//code for UNITY_REVERSED_Z is moved into Shadows.hlsl from 6000.0.22 and or higher
				positionCS = ApplyShadowClamping(positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = positionCS;
				output.clipPosV = positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_tangent = input.ase_tangent;
				output.ase_color = input.ase_color;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord3.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );
				float AlphaClipThresholdShadow = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.ase_tangent.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.ase_texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.ase_tangent.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.ase_tangent.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.ase_texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord3.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord3.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_tangent = input.ase_tangent;
				output.ase_color = input.ase_color;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord3.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003

			#pragma shader_feature EDITOR_VISUALIZATION

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON
			#pragma shader_feature_local _SELFSHADINGVERTEXCOLOR_ON


			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD2;
					float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;
			sampler2D _NoiseMapGrayscale;
			sampler2D _MaskMapRGBA;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			
			float4 SampleGradient( Gradient gradient, float time )
			{
				float3 color = gradient.colors[0].rgb;
				UNITY_UNROLL
				for (int c = 1; c < 8; c++)
				{
				float colorPos = saturate((time - gradient.colors[c-1].w) / ( 0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, gradient.colorsLength-1));
				color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				}
				#ifndef UNITY_COLORSPACE_GAMMA
				color = SRGBToLinear(color);
				#endif
				float alpha = gradient.alphas[0].x;
				UNITY_UNROLL
				for (int a = 1; a < 8; a++)
				{
				float alphaPos = saturate((time - gradient.alphas[a-1].y) / ( 0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, gradient.alphasLength-1));
				alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				}
				return float4(color, alpha);
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.ase_tangent.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.texcoord0.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.ase_tangent.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.ase_tangent.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.texcoord0.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord4.xy = input.texcoord0.xy;
				output.ase_texcoord5 = input.positionOS;
				output.ase_normal = input.normalOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = positionWS;
				#endif

				output.positionCS = MetaVertexPosition( input.positionOS, input.texcoord1.xy, input.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(input.positionOS.xyz, input.texcoord0.xy, input.texcoord1.xy, input.texcoord2.xy, VizUV, LightCoord);
					output.VizUV = float4(VizUV, 0, 0);
					output.LightCoord = LightCoord;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = output.positionCS;
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.texcoord0 = input.texcoord0;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				output.ase_tangent = input.ase_tangent;
				output.ase_color = input.ase_color;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				output.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_AlbedoMap513_g1494 = input.ase_texcoord4.xy;
				float2 uv_AlbedoMap662_g1494 = input.ase_texcoord4.xy;
				float4 tex2DNode662_g1494 = tex2D( _AlbedoMap, uv_AlbedoMap662_g1494 );
				float2 uv_NoiseMapGrayscale669_g1494 = input.ase_texcoord4.xy;
				float4 transform741_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1497 = dot( transform741_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1497 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1497 ) * 43758.55 ) ));
				float temp_output_742_0_g1494 = lerpResult10_g1497;
				float normalizeResult799_g1494 = normalize( temp_output_742_0_g1494 );
				float3 normalizeResult439_g1494 = normalize( input.ase_texcoord5.xyz );
				float DryLeafPositionMask443_g1494 = ( (distance( normalizeResult439_g1494 , float3( 0,0.8,0 ) )*1.0 + 0.0) * 1 );
				float4 lerpResult677_g1494 = lerp( ( _DryLeafColor * ( tex2DNode662_g1494.g * 2 ) ) , tex2DNode662_g1494 , saturate( (( ( tex2D( _NoiseMapGrayscale, uv_NoiseMapGrayscale669_g1494 ).r * (( _NormalizeSeasons )?( normalizeResult799_g1494 ):( temp_output_742_0_g1494 )) * DryLeafPositionMask443_g1494 ) - _SeasonChangeGlobal )*_DryLeavesScale + _DryLeavesOffset) ));
				float4 SeasonControl_Output676_g1494 = lerpResult677_g1494;
				Gradient gradient752_g1494 = NewGradient( 0, 2, 2, float4( 1, 0.276868, 0, 0 ), float4( 0, 1, 0.7818019, 1 ), 0, 0, 0, 0, 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float4 transform754_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1496 = dot( transform754_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1496 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1496 ) * 43758.55 ) ));
				float4 lerpResult515_g1494 = lerp( SeasonControl_Output676_g1494 , ( ( SeasonControl_Output676_g1494 * 0.5 ) + ( SampleGradient( gradient752_g1494, lerpResult10_g1496 ) * SeasonControl_Output676_g1494 ) ) , _ColorVariation);
				float2 uv_MaskMapRGBA505_g1494 = input.ase_texcoord4.xy;
				float4 lerpResult521_g1494 = lerp( tex2D( _AlbedoMap, uv_AlbedoMap513_g1494 ) , lerpResult515_g1494 , (( _BranchMaskR )?( tex2D( _MaskMapRGBA, uv_MaskMapRGBA505_g1494 ).r ):( 1.0 )));
				float3 temp_output_465_0_g1494 = ( ( input.ase_texcoord5.xyz * float3( 2,1.3,2 ) ) / 25.0 );
				float dotResult471_g1494 = dot( temp_output_465_0_g1494 , temp_output_465_0_g1494 );
				float3 normalizeResult457_g1494 = normalize( input.ase_texcoord5.xyz );
				float SelfShading601_g1494 = saturate( (( pow( abs( saturate( dotResult471_g1494 ) ) , 1.5 ) + ( ( 1.0 - (distance( normalizeResult457_g1494 , float3( 0,0.8,0 ) )*0.5 + 0.0) ) * 0.6 ) )*0.92 + -0.16) );
				#ifdef _SELFSHADINGVERTEXCOLOR_ON
				float4 staticSwitch618_g1494 = ( lerpResult521_g1494 * (SelfShading601_g1494*_VertexLighting + _VertexShadow) );
				#else
				float4 staticSwitch618_g1494 = lerpResult521_g1494;
				#endif
				float4 GrassColorVariation_Output586_g1494 = staticSwitch618_g1494;
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float4 transform487_g1494 = mul(GetObjectToWorldMatrix(),float4( input.ase_texcoord5.xyz , 0.0 ));
				float dotResult566_g1494 = dot( float4( ase_viewDirWS , 0.0 ) , -( float4( _MainLightPosition.xyz , 0.0 ) + ( (( _TranslucencyTreeTangents )?( float4( input.ase_normal , 0.0 ) ):( transform487_g1494 )) * _TranslucencyRange ) ) );
				float2 uv_MaskMapRGBA516_g1494 = input.ase_texcoord4.xy;
				float ase_lightIntensity = max( max( _MainLightColor.r, _MainLightColor.g ), _MainLightColor.b );
				float4 ase_lightColor = float4( _MainLightColor.rgb / ase_lightIntensity, ase_lightIntensity );
				float TobyTranslucency526_g1494 = ( saturate( dotResult566_g1494 ) * tex2D( _MaskMapRGBA, uv_MaskMapRGBA516_g1494 ).b * ase_lightColor.a );
				float TranslucencyIntensity616_g1494 = _TranslucencyPower;
				float4 Albedo_Output613_g1494 = ( ( _AlbedoColor * GrassColorVariation_Output586_g1494 ) * (1.0 + (TobyTranslucency526_g1494 - 0.0) * (TranslucencyIntensity616_g1494 - 1.0) / (1.0 - 0.0)) );
				
				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord4.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float3 BaseColor = Albedo_Output613_g1494.rgb;
				float3 Emission = 0;
				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = input.VizUV.xy;
					metaInput.LightCoord = input.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON
			#pragma shader_feature_local _SELFSHADINGVERTEXCOLOR_ON


			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;
			sampler2D _NoiseMapGrayscale;
			sampler2D _MaskMapRGBA;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			
			float4 SampleGradient( Gradient gradient, float time )
			{
				float3 color = gradient.colors[0].rgb;
				UNITY_UNROLL
				for (int c = 1; c < 8; c++)
				{
				float colorPos = saturate((time - gradient.colors[c-1].w) / ( 0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, gradient.colorsLength-1));
				color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				}
				#ifndef UNITY_COLORSPACE_GAMMA
				color = SRGBToLinear(color);
				#endif
				float alpha = gradient.alphas[0].x;
				UNITY_UNROLL
				for (int a = 1; a < 8; a++)
				{
				float alphaPos = saturate((time - gradient.alphas[a-1].y) / ( 0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, gradient.alphasLength-1));
				alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				}
				return float4(color, alpha);
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_TRANSFER_INSTANCE_ID( input, output );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.ase_tangent.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.ase_texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.ase_tangent.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.ase_tangent.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.ase_texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord2.xy = input.ase_texcoord.xy;
				output.ase_texcoord3 = input.positionOS;
				output.ase_normal = input.normalOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord2.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_tangent = input.ase_tangent;
				output.ase_color = input.ase_color;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_AlbedoMap513_g1494 = input.ase_texcoord2.xy;
				float2 uv_AlbedoMap662_g1494 = input.ase_texcoord2.xy;
				float4 tex2DNode662_g1494 = tex2D( _AlbedoMap, uv_AlbedoMap662_g1494 );
				float2 uv_NoiseMapGrayscale669_g1494 = input.ase_texcoord2.xy;
				float4 transform741_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1497 = dot( transform741_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1497 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1497 ) * 43758.55 ) ));
				float temp_output_742_0_g1494 = lerpResult10_g1497;
				float normalizeResult799_g1494 = normalize( temp_output_742_0_g1494 );
				float3 normalizeResult439_g1494 = normalize( input.ase_texcoord3.xyz );
				float DryLeafPositionMask443_g1494 = ( (distance( normalizeResult439_g1494 , float3( 0,0.8,0 ) )*1.0 + 0.0) * 1 );
				float4 lerpResult677_g1494 = lerp( ( _DryLeafColor * ( tex2DNode662_g1494.g * 2 ) ) , tex2DNode662_g1494 , saturate( (( ( tex2D( _NoiseMapGrayscale, uv_NoiseMapGrayscale669_g1494 ).r * (( _NormalizeSeasons )?( normalizeResult799_g1494 ):( temp_output_742_0_g1494 )) * DryLeafPositionMask443_g1494 ) - _SeasonChangeGlobal )*_DryLeavesScale + _DryLeavesOffset) ));
				float4 SeasonControl_Output676_g1494 = lerpResult677_g1494;
				Gradient gradient752_g1494 = NewGradient( 0, 2, 2, float4( 1, 0.276868, 0, 0 ), float4( 0, 1, 0.7818019, 1 ), 0, 0, 0, 0, 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float4 transform754_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1496 = dot( transform754_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1496 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1496 ) * 43758.55 ) ));
				float4 lerpResult515_g1494 = lerp( SeasonControl_Output676_g1494 , ( ( SeasonControl_Output676_g1494 * 0.5 ) + ( SampleGradient( gradient752_g1494, lerpResult10_g1496 ) * SeasonControl_Output676_g1494 ) ) , _ColorVariation);
				float2 uv_MaskMapRGBA505_g1494 = input.ase_texcoord2.xy;
				float4 lerpResult521_g1494 = lerp( tex2D( _AlbedoMap, uv_AlbedoMap513_g1494 ) , lerpResult515_g1494 , (( _BranchMaskR )?( tex2D( _MaskMapRGBA, uv_MaskMapRGBA505_g1494 ).r ):( 1.0 )));
				float3 temp_output_465_0_g1494 = ( ( input.ase_texcoord3.xyz * float3( 2,1.3,2 ) ) / 25.0 );
				float dotResult471_g1494 = dot( temp_output_465_0_g1494 , temp_output_465_0_g1494 );
				float3 normalizeResult457_g1494 = normalize( input.ase_texcoord3.xyz );
				float SelfShading601_g1494 = saturate( (( pow( abs( saturate( dotResult471_g1494 ) ) , 1.5 ) + ( ( 1.0 - (distance( normalizeResult457_g1494 , float3( 0,0.8,0 ) )*0.5 + 0.0) ) * 0.6 ) )*0.92 + -0.16) );
				#ifdef _SELFSHADINGVERTEXCOLOR_ON
				float4 staticSwitch618_g1494 = ( lerpResult521_g1494 * (SelfShading601_g1494*_VertexLighting + _VertexShadow) );
				#else
				float4 staticSwitch618_g1494 = lerpResult521_g1494;
				#endif
				float4 GrassColorVariation_Output586_g1494 = staticSwitch618_g1494;
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float4 transform487_g1494 = mul(GetObjectToWorldMatrix(),float4( input.ase_texcoord3.xyz , 0.0 ));
				float dotResult566_g1494 = dot( float4( ase_viewDirWS , 0.0 ) , -( float4( _MainLightPosition.xyz , 0.0 ) + ( (( _TranslucencyTreeTangents )?( float4( input.ase_normal , 0.0 ) ):( transform487_g1494 )) * _TranslucencyRange ) ) );
				float2 uv_MaskMapRGBA516_g1494 = input.ase_texcoord2.xy;
				float ase_lightIntensity = max( max( _MainLightColor.r, _MainLightColor.g ), _MainLightColor.b );
				float4 ase_lightColor = float4( _MainLightColor.rgb / ase_lightIntensity, ase_lightIntensity );
				float TobyTranslucency526_g1494 = ( saturate( dotResult566_g1494 ) * tex2D( _MaskMapRGBA, uv_MaskMapRGBA516_g1494 ).b * ase_lightColor.a );
				float TranslucencyIntensity616_g1494 = _TranslucencyPower;
				float4 Albedo_Output613_g1494 = ( ( _AlbedoColor * GrassColorVariation_Output586_g1494 ) * (1.0 + (TobyTranslucency526_g1494 - 0.0) * (TranslucencyIntensity616_g1494 - 1.0) / (1.0 - 0.0)) );
				
				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord2.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float3 BaseColor = Albedo_Output613_g1494.rgb;
				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );

				half4 color = half4(BaseColor, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
			//#define SHADERPASS SHADERPASS_DEPTHNORMALS

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 worldNormal : TEXCOORD1;
				float4 worldTangent : TEXCOORD2;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD3;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD4;
				#endif
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.tangentOS.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.ase_texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.tangentOS.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.tangentOS.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.tangentOS.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.tangentOS.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.ase_texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord5.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord5.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				float3 normalWS = TransformObjectToWorldNormal( input.normalOS );
				float4 tangentWS = float4( TransformObjectToWorldDir( input.tangentOS.xyz ), input.tangentOS.w );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					output.positionWS = vertexInput.positionWS;
				#endif

				output.worldNormal = normalWS;
				output.worldTangent = tangentWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.ase_color = input.ase_color;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			void frag(	PackedVaryings input
						, out half4 outNormalWS : SV_Target0
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						, bool ase_vface : SV_IsFrontFace )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = input.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float3 WorldNormal = input.worldNormal;
				float4 WorldTangent = input.worldTangent;

				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = input.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_NormalMap531_g1494 = input.ase_texcoord5.xy;
				float3 unpack531_g1494 = UnpackNormalScale( tex2D( _NormalMap, uv_NormalMap531_g1494 ), _NormalIntenisty );
				unpack531_g1494.z = lerp( 1, unpack531_g1494.z, saturate(_NormalIntenisty) );
				float3 tex2DNode531_g1494 = unpack531_g1494;
				float3 break539_g1494 = tex2DNode531_g1494;
				float3 appendResult552_g1494 = (float3(break539_g1494.x , break539_g1494.y , ( break539_g1494.z * ase_vface )));
				float3 Normal_Output557_g1494 = (( _NormalBackFaceFixBranch )?( appendResult552_g1494 ):( tex2DNode531_g1494 ));
				
				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord5.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float3 Normal = Normal_Output557_g1494;
				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					outNormalWS = half4(packedNormalWS, 0.0);
				#else
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif
					outNormalWS = half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ USE_LEGACY_LIGHTMAPS
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif
			
			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON
			#pragma shader_feature_local _SELFSHADINGVERTEXCOLOR_ON
			#pragma shader_feature_local _SPECULARBACKFACEOCCLUSION1_ON


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				#if defined(USE_APV_PROBE_OCCLUSION)
					float4 probeOcclusion : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;
			sampler2D _NoiseMapGrayscale;
			sampler2D _MaskMapRGBA;
			sampler2D _SpecularMap;


			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"

			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			
			float4 SampleGradient( Gradient gradient, float time )
			{
				float3 color = gradient.colors[0].rgb;
				UNITY_UNROLL
				for (int c = 1; c < 8; c++)
				{
				float colorPos = saturate((time - gradient.colors[c-1].w) / ( 0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, gradient.colorsLength-1));
				color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				}
				#ifndef UNITY_COLORSPACE_GAMMA
				color = SRGBToLinear(color);
				#endif
				float alpha = gradient.alphas[0].x;
				UNITY_UNROLL
				for (int a = 1; a < 8; a++)
				{
				float alphaPos = saturate((time - gradient.alphas[a-1].y) / ( 0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, gradient.alphasLength-1));
				alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				}
				return float4(color, alpha);
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.tangentOS.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.tangentOS.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.tangentOS.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.tangentOS.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.tangentOS.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord9.xy = input.texcoord.xy;
				output.ase_texcoord10 = input.positionOS;
				output.ase_normal = input.normalOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord9.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x);
				output.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y);
				output.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z);

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV(input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy);
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				OUTPUT_SH4( vertexInput.positionWS, normalInput.normalWS.xyz, GetWorldSpaceNormalizeViewDir( vertexInput.positionWS ), output.lightmapUVOrVertexSH.xyz, output.probeOcclusion );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					output.lightmapUVOrVertexSH.zw = input.texcoord.xy;
					output.lightmapUVOrVertexSH.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );

				output.fogFactorAndVertexLight = half4(0, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					output.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				output.positionCS = vertexInput.positionCS;
				output.clipPosV = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				output.ase_color = input.ase_color;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			FragmentOutput frag ( PackedVaryings input
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								, bool ase_vface : SV_IsFrontFace )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (input.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( input.tSpace0.xyz );
					float3 WorldTangent = input.tSpace1.xyz;
					float3 WorldBiTangent = input.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(input.tSpace0.w,input.tSpace1.w,input.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = input.clipPosV;
				float4 ScreenPos = ComputeScreenPos( input.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(input.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = input.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 uv_AlbedoMap513_g1494 = input.ase_texcoord9.xy;
				float2 uv_AlbedoMap662_g1494 = input.ase_texcoord9.xy;
				float4 tex2DNode662_g1494 = tex2D( _AlbedoMap, uv_AlbedoMap662_g1494 );
				float2 uv_NoiseMapGrayscale669_g1494 = input.ase_texcoord9.xy;
				float4 transform741_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1497 = dot( transform741_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1497 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1497 ) * 43758.55 ) ));
				float temp_output_742_0_g1494 = lerpResult10_g1497;
				float normalizeResult799_g1494 = normalize( temp_output_742_0_g1494 );
				float3 normalizeResult439_g1494 = normalize( input.ase_texcoord10.xyz );
				float DryLeafPositionMask443_g1494 = ( (distance( normalizeResult439_g1494 , float3( 0,0.8,0 ) )*1.0 + 0.0) * 1 );
				float4 lerpResult677_g1494 = lerp( ( _DryLeafColor * ( tex2DNode662_g1494.g * 2 ) ) , tex2DNode662_g1494 , saturate( (( ( tex2D( _NoiseMapGrayscale, uv_NoiseMapGrayscale669_g1494 ).r * (( _NormalizeSeasons )?( normalizeResult799_g1494 ):( temp_output_742_0_g1494 )) * DryLeafPositionMask443_g1494 ) - _SeasonChangeGlobal )*_DryLeavesScale + _DryLeavesOffset) ));
				float4 SeasonControl_Output676_g1494 = lerpResult677_g1494;
				Gradient gradient752_g1494 = NewGradient( 0, 2, 2, float4( 1, 0.276868, 0, 0 ), float4( 0, 1, 0.7818019, 1 ), 0, 0, 0, 0, 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float4 transform754_g1494 = mul(GetObjectToWorldMatrix(),float4( 1,1,1,1 ));
				float dotResult4_g1496 = dot( transform754_g1494.xy , float2( 12.9898,78.233 ) );
				float lerpResult10_g1496 = lerp( 0.0 , 1.0 , frac( ( sin( dotResult4_g1496 ) * 43758.55 ) ));
				float4 lerpResult515_g1494 = lerp( SeasonControl_Output676_g1494 , ( ( SeasonControl_Output676_g1494 * 0.5 ) + ( SampleGradient( gradient752_g1494, lerpResult10_g1496 ) * SeasonControl_Output676_g1494 ) ) , _ColorVariation);
				float2 uv_MaskMapRGBA505_g1494 = input.ase_texcoord9.xy;
				float4 lerpResult521_g1494 = lerp( tex2D( _AlbedoMap, uv_AlbedoMap513_g1494 ) , lerpResult515_g1494 , (( _BranchMaskR )?( tex2D( _MaskMapRGBA, uv_MaskMapRGBA505_g1494 ).r ):( 1.0 )));
				float3 temp_output_465_0_g1494 = ( ( input.ase_texcoord10.xyz * float3( 2,1.3,2 ) ) / 25.0 );
				float dotResult471_g1494 = dot( temp_output_465_0_g1494 , temp_output_465_0_g1494 );
				float3 normalizeResult457_g1494 = normalize( input.ase_texcoord10.xyz );
				float SelfShading601_g1494 = saturate( (( pow( abs( saturate( dotResult471_g1494 ) ) , 1.5 ) + ( ( 1.0 - (distance( normalizeResult457_g1494 , float3( 0,0.8,0 ) )*0.5 + 0.0) ) * 0.6 ) )*0.92 + -0.16) );
				#ifdef _SELFSHADINGVERTEXCOLOR_ON
				float4 staticSwitch618_g1494 = ( lerpResult521_g1494 * (SelfShading601_g1494*_VertexLighting + _VertexShadow) );
				#else
				float4 staticSwitch618_g1494 = lerpResult521_g1494;
				#endif
				float4 GrassColorVariation_Output586_g1494 = staticSwitch618_g1494;
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float4 transform487_g1494 = mul(GetObjectToWorldMatrix(),float4( input.ase_texcoord10.xyz , 0.0 ));
				float dotResult566_g1494 = dot( float4( ase_viewDirWS , 0.0 ) , -( float4( _MainLightPosition.xyz , 0.0 ) + ( (( _TranslucencyTreeTangents )?( float4( input.ase_normal , 0.0 ) ):( transform487_g1494 )) * _TranslucencyRange ) ) );
				float2 uv_MaskMapRGBA516_g1494 = input.ase_texcoord9.xy;
				float ase_lightIntensity = max( max( _MainLightColor.r, _MainLightColor.g ), _MainLightColor.b );
				float4 ase_lightColor = float4( _MainLightColor.rgb / ase_lightIntensity, ase_lightIntensity );
				float TobyTranslucency526_g1494 = ( saturate( dotResult566_g1494 ) * tex2D( _MaskMapRGBA, uv_MaskMapRGBA516_g1494 ).b * ase_lightColor.a );
				float TranslucencyIntensity616_g1494 = _TranslucencyPower;
				float4 Albedo_Output613_g1494 = ( ( _AlbedoColor * GrassColorVariation_Output586_g1494 ) * (1.0 + (TobyTranslucency526_g1494 - 0.0) * (TranslucencyIntensity616_g1494 - 1.0) / (1.0 - 0.0)) );
				
				float2 uv_NormalMap531_g1494 = input.ase_texcoord9.xy;
				float3 unpack531_g1494 = UnpackNormalScale( tex2D( _NormalMap, uv_NormalMap531_g1494 ), _NormalIntenisty );
				unpack531_g1494.z = lerp( 1, unpack531_g1494.z, saturate(_NormalIntenisty) );
				float3 tex2DNode531_g1494 = unpack531_g1494;
				float3 break539_g1494 = tex2DNode531_g1494;
				float3 appendResult552_g1494 = (float3(break539_g1494.x , break539_g1494.y , ( break539_g1494.z * ase_vface )));
				float3 Normal_Output557_g1494 = (( _NormalBackFaceFixBranch )?( appendResult552_g1494 ):( tex2DNode531_g1494 ));
				
				float temp_output_809_0_g1494 = ( 0.2 * _SpecularPower );
				float2 uv_SpecularMap702_g1494 = input.ase_texcoord9.xy;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal835_g1494 = WorldTangent;
				float fresnelNdotV835_g1494 = dot( float3(dot(tanToWorld0,tanNormal835_g1494), dot(tanToWorld1,tanNormal835_g1494), dot(tanToWorld2,tanNormal835_g1494)), _MainLightPosition.xyz );
				float fresnelNode835_g1494 = ( _SpecularBias + _SpecularScale * pow( max( 1.0 - fresnelNdotV835_g1494 , 0.0001 ), _SpecularStrength ) );
				float SpecRecalculate829_g1494 = saturate( fresnelNode835_g1494 );
				#ifdef _SPECULARBACKFACEOCCLUSION1_ON
				float staticSwitch790_g1494 = ( temp_output_809_0_g1494 * saturate( (tex2D( _SpecularMap, uv_SpecularMap702_g1494 ).r*_SpecularMapScale + _SpecularMapOffset) ) * SpecRecalculate829_g1494 );
				#else
				float staticSwitch790_g1494 = temp_output_809_0_g1494;
				#endif
				float Specular_Output570_g1494 = staticSwitch790_g1494;
				float3 temp_cast_7 = (Specular_Output570_g1494).xxx;
				
				float2 uv_MaskMapRGBA535_g1494 = input.ase_texcoord9.xy;
				float4 tex2DNode535_g1494 = tex2D( _MaskMapRGBA, uv_MaskMapRGBA535_g1494 );
				float Smoothness_Output558_g1494 = ( tex2DNode535_g1494.a * _SmoothnessIntensity );
				
				float AoMapBase538_g1494 = tex2DNode535_g1494.g;
				float AmbientOcclusion_Output582_g1494 = ( pow( abs( AoMapBase538_g1494 ) , _AmbientOcclusionIntensity ) * ( 1.5 / ( ( saturate( TobyTranslucency526_g1494 ) * TranslucencyIntensity616_g1494 ) + 1.5 ) ) );
				
				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord9.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float3 BaseColor = Albedo_Output613_g1494.rgb;
				float3 Normal = Normal_Output557_g1494;
				float3 Emission = 0;
				float3 Specular = temp_cast_7;
				float Metallic = 0;
				float Smoothness = Smoothness_Output558_g1494;
				float Occlusion = AmbientOcclusion_Output582_g1494;
				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = input.positionCS;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
						inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
						inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif

				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );

				inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#elif !defined(LIGHTMAP_ON) && (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
					inputData.bakedGI = SAMPLE_GI( SH, GetAbsolutePositionWS(inputData.positionWS),
						inputData.normalWS,
						inputData.viewDirectionWS,
						input.positionCS.xy,
						input.probeOcclusion,
						inputData.shadowMask );
				#else
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						inputData.probeOcclusion = input.probeOcclusion;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(input.positionCS,
						BaseColor,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(BaseColor, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON


			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.ase_tangent.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.ase_texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.ase_tangent.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.ase_tangent.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.ase_texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );

				output.positionCS = TransformWorldToHClip(positionWS);

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_tangent = input.ase_tangent;
				output.ase_color = input.ase_color;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON


			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _NormalMap;
			sampler2D _AlbedoMap;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.ase_tangent.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.ase_texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.ase_tangent.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.ase_tangent.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_worldNormal = TransformObjectToWorldNormal(input.normalOS);
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult494_g1494 = dot( ase_viewDirWS , normalizedWorldNormal );
				float2 uv_NormalMap789_g1494 = input.ase_texcoord.xy;
				float3 unpack490_g1494 = UnpackNormalScale( -tex2Dlod( _NormalMap, float4( uv_NormalMap789_g1494, 0, 0.0) ), -1.0 );
				unpack490_g1494.z = lerp( 1, unpack490_g1494.z, saturate(-1.0) );
				float3 ifLocalVar497_g1494 = 0;
				if( dotResult494_g1494 > 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 == 0.0 )
				ifLocalVar497_g1494 = unpack490_g1494;
				else if( dotResult494_g1494 < 0.0 )
				ifLocalVar497_g1494 = -input.normalOS;
				float4 transform500_g1494 = mul(GetObjectToWorldMatrix(),float4( ifLocalVar497_g1494 , 0.0 ));
				float dotResult504_g1494 = dot( float4( _MainLightPosition.xyz , 0.0 ) , transform500_g1494 );
				float3 ifLocalVar511_g1494 = 0;
				if( dotResult504_g1494 >= 0.0 )
				ifLocalVar511_g1494 = ifLocalVar497_g1494;
				else
				ifLocalVar511_g1494 = -ifLocalVar497_g1494;
				float3 break514_g1494 = ifLocalVar511_g1494;
				float3 temp_cast_34 = (dotResult504_g1494).xxx;
				float4 appendResult525_g1494 = (float4(break514_g1494.x , ( break514_g1494.y + saturate( ( 1.0 - ( ( distance( float3( 0,0,0 ) , temp_cast_34 ) - 0.2 ) / max( 0.2 , 1E-05 ) ) ) ) ) , break514_g1494.z , 0.0));
				float4 LightDetectBackface595_g1494 = appendResult525_g1494;
				float4 LightDetect_Output597_g1494 = (( _LightDetectBackface )?( LightDetectBackface595_g1494 ):( float4( input.normalOS , 0.0 ) ));
				
				output.ase_texcoord.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = LightDetect_Output597_g1494.xyz;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );
				output.positionCS = TransformWorldToHClip(positionWS);

				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.vertex = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_tangent = input.ase_tangent;
				output.ase_color = input.ase_color;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].vertex, input[1].vertex, input[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
						clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "MotionVectors"
			Tags { "LightMode"="MotionVectors" }

			ColorMask RG

			HLSLPROGRAM

			#pragma multi_compile_local_fragment _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define _NORMALMAP 1
			#define ASE_VERSION 19701
			#define ASE_SRP_VERSION 170003


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif
	
            #define SHADERPASS SHADERPASS_MOTION_VECTORS

            #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
				#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
			#endif

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MotionVectorsCommon.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _WINDTYPE_GENTLEBREEZE _WINDTYPE_WINDOFF
			#pragma shader_feature_local _LEAFFLUTTER_ON


			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
					float3 alembicMotionVector : TEXCOORD5;
				#endif
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float4 positionCSNoJitter : TEXCOORD0;
				float4 previousPositionCSNoJitter : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DryLeafColor;
			float4 _AlbedoColor;
			float _GlobalWindStrength;
			float _VertexShadow;
			float _TranslucencyTreeTangents;
			float _TranslucencyRange;
			float _TranslucencyPower;
			float _NormalBackFaceFixBranch;
			float _NormalIntenisty;
			float _SpecularPower;
			float _SpecularMapScale;
			float _SpecularMapOffset;
			float _SpecularBias;
			float _SpecularScale;
			float _SpecularStrength;
			float _SmoothnessIntensity;
			float _VertexLighting;
			float _BranchMaskR;
			float _ColorVariation;
			float _DryLeavesOffset;
			float _DryLeavesScale;
			float _SeasonChangeGlobal;
			float _NormalizeSeasons;
			float _LightDetectBackface;
			float _PivotSway;
			float _GlobalFlutterIntensity;
			float _SwitchVGreenToRGBA;
			float _StrongWindSpeed;
			float _BranchWindSmall;
			float _CenterofMass;
			float _BranchWindLarge;
			float _Hardness;
			float _Radius;
			float _AmbientOcclusionIntensity;
			float _AlphaClip;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _WindNoise;
			sampler2D _AlbedoMap;


			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			
			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_worldPos = TransformObjectToWorld( (input.positionOS).xyz );
				float3 normalizeResult710_g1492 = normalize( ase_worldPos );
				float mulTime716_g1492 = _TimeParameters.x * 0.25;
				float simplePerlin2D714_g1492 = snoise( ( normalizeResult710_g1492 + mulTime716_g1492 ).xy*0.43 );
				float WindMask_LargeB725_g1492 = ( simplePerlin2D714_g1492 * 1.5 );
				float3 appendResult820_g1492 = (float3(0.0 , 0.0 , saturate( input.positionOS.xyz ).z));
				float3 break862_g1492 = input.positionOS.xyz;
				float3 appendResult819_g1492 = (float3(break862_g1492.x , ( break862_g1492.y * 0.15 ) , 0.0));
				float mulTime849_g1492 = _TimeParameters.x * 2.1;
				float3 temp_output_573_0_g1492 = ( ( input.positionOS.xyz - float3(0,-1,0) ) / _Radius );
				float dotResult574_g1492 = dot( temp_output_573_0_g1492 , temp_output_573_0_g1492 );
				float temp_output_577_0_g1492 = pow( saturate( dotResult574_g1492 ) , _Hardness );
				float SphearicalMaskCM735_g1492 = saturate( temp_output_577_0_g1492 );
				float3 temp_cast_1 = (input.positionOS.xyz.y).xxx;
				float2 appendResult810_g1492 = (float2(input.positionOS.xyz.x , input.positionOS.xyz.z));
				float3 temp_output_869_0_g1492 = ( cross( temp_cast_1 , float3( appendResult810_g1492 ,  0.0 ) ) * 0.005 );
				float3 appendResult813_g1492 = (float3(0.0 , input.positionOS.xyz.y , 0.0));
				float3 break845_g1492 = input.positionOS.xyz;
				float3 appendResult843_g1492 = (float3(break845_g1492.x , 0.0 , ( break845_g1492.z * 0.15 )));
				float mulTime850_g1492 = _TimeParameters.x * 2.3;
				float dotResult730_g1492 = dot( (input.positionOS.xyz*0.02 + 0.0) , input.positionOS.xyz );
				float CeneterOfMassThickness_Mask734_g1492 = saturate( dotResult730_g1492 );
				float3 appendResult854_g1492 = (float3(input.positionOS.xyz.x , 0.0 , 0.0));
				float3 break857_g1492 = input.positionOS.xyz;
				float3 appendResult842_g1492 = (float3(0.0 , ( break857_g1492.y * 0.2 ) , ( break857_g1492.z * 0.4 )));
				float mulTime851_g1492 = _TimeParameters.x * 2.0;
				float3 normalizeResult1560_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP_C1561_g1492 = saturate( distance( normalizeResult1560_g1492 , float3(0,1,0) ) );
				float3 normalizeResult718_g1492 = normalize( ase_worldPos );
				float mulTime723_g1492 = _TimeParameters.x * 0.26;
				float simplePerlin2D722_g1492 = snoise( ( normalizeResult718_g1492 + mulTime723_g1492 ).xy*0.7 );
				float WindMask_LargeC726_g1492 = ( simplePerlin2D722_g1492 * 1.5 );
				float mulTime795_g1492 = _TimeParameters.x * 3.2;
				float3 worldToObj796_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_763_0_g1492 = ( mulTime795_g1492 + float3(0.4,0.3,0.1) + ( worldToObj796_g1492.x * 0.02 ) + ( 0.14 * worldToObj796_g1492.y ) + ( worldToObj796_g1492.z * 0.16 ) );
				float3 normalizeResult581_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMassTrunkUP586_g1492 = saturate( (distance( normalizeResult581_g1492 , float3(0,1,0) )*1.0 + -0.05) );
				float3 ase_objectScale = float3( length( GetObjectToWorldMatrix()[ 0 ].xyz ), length( GetObjectToWorldMatrix()[ 1 ].xyz ), length( GetObjectToWorldMatrix()[ 2 ].xyz ) );
				float mulTime794_g1492 = _TimeParameters.x * 2.3;
				float3 worldToObj797_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float3 temp_output_757_0_g1492 = ( mulTime794_g1492 + ( 0.2 * worldToObj797_g1492 ) + float3(0.4,0.3,0.1) );
				float mulTime793_g1492 = _TimeParameters.x * 3.6;
				float3 temp_cast_5 = (input.positionOS.xyz.x).xxx;
				float3 worldToObj799_g1492 = mul( GetWorldToObjectMatrix(), float4( temp_cast_5, 1 ) ).xyz;
				float temp_output_787_0_g1492 = ( mulTime793_g1492 + ( 0.2 * worldToObj799_g1492.x ) );
				float3 normalizeResult647_g1492 = normalize( input.positionOS.xyz );
				float CenterOfMass651_g1492 = saturate( (distance( normalizeResult647_g1492 , float3(0,1,0) )*2.0 + 0.0) );
				float SphericalMaskProxySphere655_g1492 = (( _CenterofMass )?( ( temp_output_577_0_g1492 * CenterOfMass651_g1492 ) ):( temp_output_577_0_g1492 ));
				float StrongWindSpeed994_g1492 = _StrongWindSpeed;
				float2 appendResult1379_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float3 worldToObj1380_g1492 = mul( GetWorldToObjectMatrix(), float4( float3( appendResult1379_g1492 ,  0.0 ), 1 ) ).xyz;
				float simpleNoise1430_g1492 = SimpleNoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + worldToObj1380_g1492 ).xy*4.0 );
				simpleNoise1430_g1492 = simpleNoise1430_g1492*2 - 1;
				float3 worldToObj1376_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1321_g1492 = _TimeParameters.x * 10.0;
				float3 temp_output_1316_0_g1492 = ( sin( ( ( worldToObj1376_g1492 * ( 1.0 * 10.0 * ase_objectScale ) ) + mulTime1321_g1492 + 1.0 ) ) * 0.028 );
				float3 MotionFlutterConstant1481_g1492 = ( temp_output_1316_0_g1492 * 33 );
				float4 temp_cast_12 = (input.ase_color.g).xxxx;
				float4 LeafVertexColor_Main1540_g1492 = (( _SwitchVGreenToRGBA )?( input.ase_color ):( temp_cast_12 ));
				float mulTime1349_g1492 = _TimeParameters.x * 0.4;
				float3 worldToObj1443_g1492 = mul( GetWorldToObjectMatrix(), float4( input.ase_tangent.xyz, 1 ) ).xyz;
				float2 panner1354_g1492 = ( mulTime1349_g1492 * float2( 1,1 ) + ( worldToObj1443_g1492 * 0.1 ).xy);
				float2 texCoord1355_g1492 = input.ase_texcoord.xy * float2( 0.2,0.2 ) + panner1354_g1492;
				float3 normalizeResult589_g1492 = normalize( ase_worldPos );
				float mulTime590_g1492 = _TimeParameters.x * 0.2;
				float simplePerlin2D592_g1492 = snoise( ( normalizeResult589_g1492 + mulTime590_g1492 ).xy*0.4 );
				float WindMask_LargeA595_g1492 = ( simplePerlin2D592_g1492 * 1.5 );
				float3 worldToObjDir1435_g1492 = mul( GetWorldToObjectMatrix(), float4( ( tex2Dlod( _WindNoise, float4( texCoord1355_g1492, 0, 0.0) ) * WindMask_LargeA595_g1492 * WindMask_LargeC726_g1492 ).rgb, 0 ) ).xyz;
				float dotResult4_g1493 = dot( float2( 0.2,0.2 ) , float2( 12.9898,78.233 ) );
				float lerpResult10_g1493 = lerp( 0.0 , 0.35 , frac( ( sin( dotResult4_g1493 ) * 43758.55 ) ));
				float2 appendResult1454_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float simpleNoise1455_g1492 = SimpleNoise( ( appendResult1454_g1492 + ( StrongWindSpeed994_g1492 * _TimeParameters.x ) )*4.0 );
				simpleNoise1455_g1492 = simpleNoise1455_g1492*2 - 1;
				float simplePerlin2D1395_g1492 = snoise( ( ( StrongWindSpeed994_g1492 * _TimeParameters.x ) + ( input.ase_tangent.xyz * 1.0 ) ).xy );
				#ifdef _LEAFFLUTTER_ON
				float4 staticSwitch1263_g1492 = ( ( ( ( simpleNoise1430_g1492 * 0.9 ) * float4( float3(-1,-0.5,-1) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * float4( MotionFlutterConstant1481_g1492 , 0.0 ) * WindMask_LargeC726_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( worldToObjDir1435_g1492 , 0.0 ) * float4( float3(-1,-1,-1) , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( ase_objectScale , 0.0 ) ) * 1 ) + ( ( float4( float3(-1,-1,-1) , 0.0 ) * lerpResult10_g1493 * simpleNoise1455_g1492 * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 * float4( input.ase_tangent.xyz , 0.0 ) ) * 2 ) + ( ( simplePerlin2D1395_g1492 * 0.11 ) * float4( float3(5.9,5.9,5.9) , 0.0 ) * float4( input.ase_tangent.xyz , 0.0 ) * saturate( input.positionOS.xyz.y ) * WindMask_LargeA595_g1492 * LeafVertexColor_Main1540_g1492 ) + ( ( float4( temp_output_1316_0_g1492 , 0.0 ) * saturate( input.positionOS.xyz.y ) * LeafVertexColor_Main1540_g1492 ) * 3 ) ) * _GlobalFlutterIntensity );
				#else
				float4 staticSwitch1263_g1492 = float4( 0,0,0,0 );
				#endif
				float3 worldToObj1580_g1492 = mul( GetWorldToObjectMatrix(), float4( input.positionOS.xyz, 1 ) ).xyz;
				float mulTime1587_g1492 = _TimeParameters.x * 4.0;
				float mulTime1579_g1492 = _TimeParameters.x * 0.2;
				float2 appendResult1576_g1492 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 normalizeResult1578_g1492 = normalize( appendResult1576_g1492 );
				float simpleNoise1588_g1492 = SimpleNoise( ( mulTime1579_g1492 + normalizeResult1578_g1492 )*1.0 );
				float WindMask_SimpleSway1593_g1492 = ( simpleNoise1588_g1492 * 1.5 );
				float3 rotatedValue1599_g1492 = RotateAroundAxis( float3( 0,0,0 ), input.positionOS.xyz, normalize( float3(0.6,1,0.1) ), ( ( cos( ( ( worldToObj1580_g1492 * 0.02 ) + mulTime1587_g1492 + ( float3(0.6,1,0.8) * 0.3 * worldToObj1580_g1492 ) ) ) * 0.1 ) * WindMask_SimpleSway1593_g1492 * saturate( ase_objectScale ) ).x );
				float4 temp_cast_27 = (0.0).xxxx;
				#if defined( _WINDTYPE_GENTLEBREEZE )
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#elif defined( _WINDTYPE_WINDOFF )
				float4 staticSwitch1496_g1492 = temp_cast_27;
				#else
				float4 staticSwitch1496_g1492 = ( ( float4( ( ( WindMask_LargeB725_g1492 * ( ( ( ( ( appendResult820_g1492 + ( appendResult819_g1492 * cos( mulTime849_g1492 ) ) + ( cross( float3(1.2,0.6,1) , ( float3(0.7,1,0.8) * appendResult819_g1492 ) ) * sin( mulTime849_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.08 ) + ( ( ( appendResult813_g1492 + ( appendResult843_g1492 * cos( mulTime850_g1492 ) ) + ( cross( float3(0.9,1,1.2) , ( float3(1,1,1) * appendResult843_g1492 ) ) * sin( mulTime850_g1492 ) ) ) * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * temp_output_869_0_g1492 ) * 0.1 ) + ( ( ( appendResult854_g1492 + ( appendResult842_g1492 * cos( mulTime851_g1492 ) ) + ( cross( float3(1.1,1.3,0.8) , ( float3(1.4,0.8,1.1) * appendResult842_g1492 ) ) * sin( mulTime851_g1492 ) ) ) * SphearicalMaskCM735_g1492 * temp_output_869_0_g1492 ) * 0.05 ) ) * _BranchWindLarge ) ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + float4( ( ( ( WindMask_LargeC726_g1492 * ( ( ( ( cos( temp_output_763_0_g1492 ) * sin( temp_output_763_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * SphearicalMaskCM735_g1492 * CeneterOfMassThickness_Mask734_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( cos( temp_output_757_0_g1492 ) * sin( temp_output_757_0_g1492 ) * CenterOfMassTrunkUP586_g1492 * CeneterOfMassThickness_Mask734_g1492 * SphearicalMaskCM735_g1492 * saturate( ase_objectScale ) ) * 0.2 ) + ( ( sin( temp_output_787_0_g1492 ) * cos( temp_output_787_0_g1492 ) * SphericalMaskProxySphere655_g1492 * CeneterOfMassThickness_Mask734_g1492 * CenterOfMassTrunkUP586_g1492 ) * 0.2 ) ) * _BranchWindSmall ) ) * 0.3 ) * CenterOfMassTrunkUP_C1561_g1492 ) , 0.0 ) + ( staticSwitch1263_g1492 * 0.3 ) + float4( (( _PivotSway )?( ( ( rotatedValue1599_g1492 - input.positionOS.xyz ) * 0.4 ) ):( float3( 0,0,0 ) )) , 0.0 ) ) * saturate( input.positionOS.xyz.y ) );
				#endif
				float4 FinalWind_Output163_g1492 = ( _GlobalWindStrength * staticSwitch1496_g1492 );
				
				output.ase_texcoord2.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord2.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = FinalWind_Output163_g1492.rgb;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(APLICATION_SPACE_WARP_MOTION)
					// We do not need jittered position in ASW
					output.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, input.positionOS));;
					output.positionCS = output.positionCSNoJitter;
				#else
					// Jittered. Match the frame.
					output.positionCS = vertexInput.positionCS;
					output.positionCSNoJitter = mul( _NonJitteredViewProjMatrix, mul( UNITY_MATRIX_M, input.positionOS));
				#endif

				float4 prevPos = ( unity_MotionVectorsParams.x == 1 ) ? float4( input.positionOld, 1 ) : input.positionOS;

				#if _ADD_PRECOMPUTED_VELOCITY
					prevPos = prevPos - float4(input.alembicMotionVector, 0);
				#endif

				output.previousPositionCSNoJitter = mul( _PrevViewProjMatrix, mul( UNITY_PREV_MATRIX_M, prevPos ) );
				// removed in ObjectMotionVectors.hlsl found in unity 6000.0.23 and higher
				//ApplyMotionVectorZBias( output.positionCS );
				return output;
			}

			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}

			half4 frag(	PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float2 uv_AlbedoMap555_g1494 = input.ase_texcoord2.xy;
				float Opacity_Output559_g1494 = ( 1.0 - tex2D( _AlbedoMap, uv_AlbedoMap555_g1494 ).a );
				

				float Alpha = 1;
				float AlphaClipThreshold = ( Opacity_Output559_g1494 * _AlphaClip );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(APLICATION_SPACE_WARP_MOTION)
					return float4( CalcAswNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 1 );
				#else
					return float4( CalcNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 0, 0 );
				#endif
			}		
			ENDHLSL
		}
		
	}
	
	CustomEditor "UnityEditor.ShaderGraphLitGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback Off
}
/*ASEBEGIN
Version=19701
Node;AmplifyShaderEditor.FunctionNode;2899;576,112;Inherit;False;(TTFE) Tree Foliage_Shading;1;;1494;32f9493bbb6c2d44ab3d59bde623860f;0;0;7;COLOR;152;FLOAT3;153;FLOAT;24;FLOAT;27;FLOAT;25;FLOAT;26;FLOAT4;28
Node;AmplifyShaderEditor.CommentaryNode;2881;896,464;Inherit;False;405;217;;3;2842;2843;2884;Alpha Clip (URP);1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;2883;880,496;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2842;944,576;Inherit;False;Property;_AlphaClip;Alpha Clip;0;0;Create;True;0;0;0;False;0;False;1.4;1.4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;2884;1040,512;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2843;1120,512;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2897;544,368;Inherit;False;(TTFE) Tree Foliage_Wind System;33;;1492;ccec0b38fced125459cc01da4402fa7a;0;0;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2845;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;0;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2846;1338.528,120.0737;Float;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;Toby Fredson/The Toby Foliage Engine/(TTFE) Tree Foliage;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;21;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;2;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalForward;False;False;0;;0;0;Standard;45;Lighting Model;0;0;Workflow;0;638460488701576305;Surface;0;0;  Refraction Model;0;0;  Blend;0;0;Two Sided;0;638455995459585606;Alpha Clipping;1;0;  Use Shadow Threshold;0;0;Fragment Normal Space,InvertActionOnDeselection;0;0;Forward Only;0;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;0;0;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;Receive Shadows;1;0;Receive SSAO;1;0;Motion Vectors;1;0;  Add Precomputed Velocity;0;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;0;Debug Display;0;0;Clear Coat;0;0;0;11;False;True;True;True;True;True;True;True;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2847;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2848;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2849;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2850;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Universal2D;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2851;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=DepthNormals;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2852;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalGBuffer;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2853;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2854;1338.528,120.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2898;1338.528,220.0737;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;MotionVectors;0;10;MotionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;False;False;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=MotionVectors;False;False;0;;0;0;Standard;0;False;0
WireConnection;2883;0;2899;26
WireConnection;2884;0;2883;0
WireConnection;2843;0;2884;0
WireConnection;2843;1;2842;0
WireConnection;2846;0;2899;152
WireConnection;2846;1;2899;153
WireConnection;2846;9;2899;24
WireConnection;2846;4;2899;27
WireConnection;2846;5;2899;25
WireConnection;2846;7;2843;0
WireConnection;2846;8;2897;0
WireConnection;2846;10;2899;28
ASEEND*/
//CHKSM=45B49F54731E0ADE4F20302D1869E0FB00A85500