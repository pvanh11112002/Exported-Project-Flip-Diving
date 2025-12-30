Shader "ASE/ASE_Standart" {
	Properties {
		_Albedo ("Albedo", 2D) = "white" {}
		_CubemapColor ("CubemapColor", Vector) = (0,0,0,1)
		_AlbedoColor ("AlbedoColor", Vector) = (1,1,1,1)
		_Cubmap ("Cubmap", Cube) = "white" {}
		_CubemapBlured ("CubemapBlured", Cube) = "white" {}
		_EmissionMap ("EmissionMap", 2D) = "white" {}
		_EmissionColor ("EmissionColor", Vector) = (0,0,0,0)
		_EmissionMultiplayer ("EmissionMultiplayer", Float) = 0
		_NormalMap ("NormalMap", 2D) = "bump" {}
		[Toggle] _SmoothFromMapSwitch ("SmoothFromMapSwitch", Float) = 1
		[Toggle] _EmissionSwitch ("EmissionSwitch", Float) = 0
		[Toggle] _SmoothRough ("Smooth/Rough", Float) = 0
		_SmoothnessMap ("SmoothnessMap", 2D) = "white" {}
		_MetallicMap ("MetallicMap", 2D) = "white" {}
		_ParalaxOffset ("ParalaxOffset", Float) = 0.001
		_Snoothness ("Snoothness", Float) = 1
		_Metallic ("Metallic", Float) = 1
		_NormalMapDepth ("NormalMapDepth", Float) = 1
		_Tiling ("Tiling", Float) = 1
		_MetalicBrightnes ("MetalicBrightnes", Range(0, 1)) = 0
		_HeightMap ("HeightMap", 2D) = "white" {}
		[HideInInspector] _texcoord ("", 2D) = "white" {}
		[HideInInspector] __dirty ("", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Diffuse"
	//CustomEditor "ASEMaterialInspector"
}