Shader "Toony Colors Pro 2/User/DoubleSidedCutout" {
	Properties {
		_Color ("Color", Vector) = (0.5,0.5,0.5,1)
		_HColor ("Highlight Color", Vector) = (0.6,0.6,0.6,1)
		_SColor ("Shadow Color", Vector) = (0.3,0.3,0.3,1)
		_MainTex ("Main Texture (RGB)", 2D) = "white" {}
		_RampThreshold ("#RAMPF# Ramp Threshold", Range(0, 1)) = 0.5
		_RampSmooth ("#RAMPF# Ramp Smoothing", Range(0.001, 1)) = 0.1
		_Cutoff ("#CUTOUT# Alpha cutoff", Range(0, 1)) = 0.5
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
	//CustomEditor "TCP2_MaterialInspector"
}