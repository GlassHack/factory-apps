.class public Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "BrightnessAlphaShader.java"


# instance fields
.field private mAlphaFactorIndex:I

.field private mContrastFactorIndex:I

.field private mFragmentShader:Ljava/lang/String;

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 50
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mVertexShader:Ljava/lang/String;

    .line 61
    const-string v0, "precision mediump float;                            \nuniform float uBrightness;                          \nuniform float uAlphaFactor;                         \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord );  \n  gl_FragColor.rgb *= uBrightness;                  \n  gl_FragColor.a = uAlphaFactor;                    \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mFragmentShader:Ljava/lang/String;

    .line 26
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mProgram:I

    .line 28
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mVertexIndex:I

    .line 29
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mTextureCoordIndex:I

    .line 30
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mTransformIndex:I

    .line 31
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mProgram:I

    const-string v1, "uBrightness"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mContrastFactorIndex:I

    .line 32
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mProgram:I

    const-string v1, "uAlphaFactor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mAlphaFactorIndex:I

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->bind()V

    .line 34
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mContrastFactorIndex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 35
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mAlphaFactorIndex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 36
    return-void
.end method


# virtual methods
.method public setAlphaFactor(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mAlphaFactorIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 46
    return-void
.end method

.method public setContrastFactor(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/BrightnessAlphaShader;->mContrastFactorIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 42
    return-void
.end method
