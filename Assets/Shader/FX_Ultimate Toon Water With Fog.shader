Shader "FX/Ultimate Toon Water With Fog" {
	Properties {
		_Color ("Water Color", Vector) = (0,0.25,0.5,0)
		_Color2 ("Shoreline Color", Vector) = (1,1,1.1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_DetailTex ("Second (RGB)", 2D) = "white" {}
		_ColorBias ("Color Mixer", Range(0, 1)) = 0.5
		_TextureBias ("Texture Mixer", Range(0, 1)) = 0.5
		_HighlightThresholdMax ("Highlight Threshold Max", Float) = 1
		_HighlightThresholdRange ("Highlight Threshold Range", Range(0, 1)) = 0.5
		_UseGPU ("Use GPU", Float) = 1
		_WaveScale1 ("Wave Scale 1", Float) = 1
		_WaveScale2 ("Wave Scale 2", Float) = 1
		_Wavelength ("Wavelength", Vector) = (0,0,0,0)
		_WaveSpeed ("Wave Speed", Vector) = (0,0,0,0)
		_WaveOffset ("Wave offset", Vector) = (0,0,0,0)
		_WaveGain ("Wave gain", Vector) = (0,0,0,0)
		_GameTime ("Game Time", Float) = 0
		_HeightFactor ("Height Factor", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
}