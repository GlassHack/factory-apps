.class public Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "ScaledTransparencyShader.java"


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
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mAlphaFactorIndex:I

    .line 42
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mVertexShader:Ljava/lang/String;

    .line 54
    const-string v0, "precision mediump float;                            \nuniform float uAlphaFactor;                         \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord);   \n  gl_FragColor.a = gl_FragColor.a * uAlphaFactor;   \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mFragmentShader:Ljava/lang/String;

    .line 23
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mProgram:I

    .line 24
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mVertexIndex:I

    .line 25
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mTextureCoordIndex:I

    .line 26
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mTransformIndex:I

    .line 27
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mProgram:I

    const-string v1, "uAlphaFactor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mAlphaFactorIndex:I

    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 31
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mAlphaFactorIndex:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 32
    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->mAlphaFactorIndex:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 38
    return-void
.end method
