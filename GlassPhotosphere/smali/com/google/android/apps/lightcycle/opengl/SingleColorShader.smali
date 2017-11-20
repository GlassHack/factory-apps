.class public Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "SingleColorShader.java"


# instance fields
.field private mColorIndex:I

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
    .line 18
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 36
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mVertexShader:Ljava/lang/String;

    .line 43
    const-string v0, "precision mediump float;                       \nuniform vec4 uDrawColor;                       \nvoid main()                                    \n{                                              \n  gl_FragColor = uDrawColor;                   \n}                                              \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mFragmentShader:Ljava/lang/String;

    .line 19
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mProgram:I

    .line 21
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mVertexIndex:I

    .line 22
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mTransformIndex:I

    .line 23
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mProgram:I

    const-string v1, "uDrawColor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mColorIndex:I

    .line 24
    return-void
.end method


# virtual methods
.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->bind()V

    .line 28
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mColorIndex:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 29
    return-void
.end method

.method public setColor([F)V
    .locals 5
    .param p1, "color"    # [F

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->bind()V

    .line 33
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->mColorIndex:I

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 34
    return-void
.end method
