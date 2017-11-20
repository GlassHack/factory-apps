.class public Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "GroundPlaneShader.java"


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
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 38
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mVertexShader:Ljava/lang/String;

    .line 46
    const-string v0, "precision mediump float;                       \nuniform vec4 uDrawColor;                       \nvoid main()                                    \n{                                              \n  gl_FragColor = uDrawColor;                   \n}                                              \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mFragmentShader:Ljava/lang/String;

    .line 20
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mProgram:I

    .line 22
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mVertexIndex:I

    .line 23
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mTransformIndex:I

    .line 24
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mProgram:I

    const-string v1, "uDrawColor"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mColorIndex:I

    .line 25
    return-void
.end method


# virtual methods
.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->bind()V

    .line 30
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mColorIndex:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 31
    return-void
.end method

.method public setColor([F)V
    .locals 5
    .param p1, "color"    # [F

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->bind()V

    .line 35
    iget v0, p0, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->mColorIndex:I

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 36
    return-void
.end method
