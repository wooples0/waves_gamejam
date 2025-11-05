varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

void main()

{
	vec2 offsetX;
	offsetX.x = pixelW;
	vec2 offsetY;
	offsetY.y = pixelH;

	float alpha = texture2D(gm_BaseTexture,v_vTexcoord).a;
	float is_empty = ceil(1.0 - alpha);

	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord + offsetX).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord - offsetX).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord + offsetY).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord - offsetY).a);

    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

	vec4 outline_colour = vec4(1,1,1,alpha);
	gl_FragColor = mix(gl_FragColor,outline_colour,is_empty);
}