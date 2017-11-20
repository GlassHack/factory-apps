.class public Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "VariableAlphaPanoSphereShader.java"


# instance fields
.field private mAlphaFactorIndex:I

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
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mAlphaFactorIndex:I

    .line 43
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mVertexShader:Ljava/lang/String;

    .line 54
    const-string v0, "precision mediump float;                            \nuniform float uAlphaFactor;                         \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  vec4 texcolor;                                    \n  texcolor = texture2D( sTexture, vTexCoord );      \n  texcolor.a = uAlphaFactor;                        \n  if (texcolor.r < .0001) texcolor.a = 0.0;         \n  gl_FragColor = texcolor;                          \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mFragmentShader:Ljava/lang/String;

    .line 24
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mProgram:I

    .line 25
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mVertexIndex:I

    .line 26
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mTextureCoordIndex:I

    .line 27
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mTransformIndex:I

    .line 28
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mProgram:I

    const-string v1, "uAlphaFactor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mAlphaFactorIndex:I

    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->bind()V

    .line 32
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mAlphaFactorIndex:I

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 33
    return-void
.end method


# virtual methods
.method public setAlphaFactor(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/VariableAlphaPanoSphereShader;->mAlphaFactorIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 39
    return-void
.end method
