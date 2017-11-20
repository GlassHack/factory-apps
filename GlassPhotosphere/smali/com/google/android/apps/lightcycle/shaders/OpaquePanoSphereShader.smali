.class public Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "OpaquePanoSphereShader.java"


# instance fields
.field private mFragmentShader:Ljava/lang/String;

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 28
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mVertexShader:Ljava/lang/String;

    .line 39
    const-string v0, "precision mediump float;                            \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  vec4 texcolor;                                    \n  texcolor = texture2D( sTexture, vTexCoord );      \n  texcolor.a = 0.98;                                \n  if (texcolor.r < .0001) texcolor.a = 0.0;         \n  gl_FragColor = texcolor;                          \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mFragmentShader:Ljava/lang/String;

    .line 20
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mProgram:I

    .line 22
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mVertexIndex:I

    .line 23
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mTextureCoordIndex:I

    .line 24
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/OpaquePanoSphereShader;->mTransformIndex:I

    .line 25
    return-void
.end method
