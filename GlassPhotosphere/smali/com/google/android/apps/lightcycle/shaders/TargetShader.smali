.class public Lcom/google/android/apps/lightcycle/shaders/TargetShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "TargetShader.java"


# instance fields
.field private mAlphaIndex:I

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

    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 43
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mVertexShader:Ljava/lang/String;

    .line 54
    const-string v0, "precision mediump float;                            \nuniform float uBrightness;                          \nuniform float uAlpha;                               \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord);   \n  gl_FragColor.rgb *= uBrightness * uAlpha;         \n  gl_FragColor.a = gl_FragColor.a * uAlpha;         \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mFragmentShader:Ljava/lang/String;

    .line 21
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mProgram:I

    .line 23
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mVertexIndex:I

    .line 24
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mTextureCoordIndex:I

    .line 25
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mTransformIndex:I

    .line 26
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mProgram:I

    const-string v1, "uBrightness"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mContrastFactorIndex:I

    .line 27
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mProgram:I

    const-string v1, "uAlpha"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mAlphaIndex:I

    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 31
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mContrastFactorIndex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 32
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mAlphaIndex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 33
    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mAlphaIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 40
    return-void
.end method

.method public setContrastFactor(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->mContrastFactorIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 37
    return-void
.end method
