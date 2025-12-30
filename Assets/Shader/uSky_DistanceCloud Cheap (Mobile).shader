Shader "uSky/DistanceCloud Cheap (Mobile)" {
	Properties {
		Attenuation ("Attenuation", Range(0, 1)) = 0.6
		AlphaSaturation ("Alpha saturation", Range(1, 10)) = 2
		SunColorMultiplier ("Sun Color multiplier", Range(0, 8)) = 4
		SkyColorMultiplier ("Sky Color multiplier", Range(0, 8)) = 2
		[KeywordEnum(Rectangular,Polar)] USKY_MAPPING ("Mapping mode", Float) = 0
		CloudSampler ("Texture (R)", 2D) = "white" {}
		Mask ("Opacity mask (G)", Range(0, 1)) = 0
		RotateSpeed ("Rotate speed", Range(-1, 1)) = 0
		[HideInInspector] ShadeColorFromSun ("ShadeColorFromSun", Vector) = (1,0.87,0.73,1)
		[HideInInspector] ShadeColorFromSky ("ShadeColorFromSky", Vector) = (0.58,0.7,0.86,1)
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
}