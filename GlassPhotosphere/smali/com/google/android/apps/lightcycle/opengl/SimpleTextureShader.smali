.class public Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "SimpleTextureShader.java"


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
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 25
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mVertexShader:Ljava/lang/String;

    .line 36
    const-string v0, "precision mediump float;                            \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord );  \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mFragmentShader:Ljava/lang/String;

    .line 17
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mProgram:I

    .line 19
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mVertexIndex:I

    .line 20
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mTextureCoordIndex:I

    .line 21
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->mTransformIndex:I

    .line 22
    return-void
.end method
