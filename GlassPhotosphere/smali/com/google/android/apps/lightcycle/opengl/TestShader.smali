.class public Lcom/google/android/apps/lightcycle/opengl/TestShader;
.super Lcom/google/android/apps/lightcycle/opengl/Shader;
.source "TestShader.java"


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
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;-><init>()V

    .line 21
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mVertexShader:Ljava/lang/String;

    .line 28
    const-string v0, "precision mediump float;                       \nvoid main()                                    \n{                                              \n  gl_FragColor = vec4( 0.0, 0.2, 1.0, 1.0 );   \n}                                              \n"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mFragmentShader:Ljava/lang/String;

    .line 15
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/TestShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mProgram:I

    .line 17
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mProgram:I

    const-string v1, "aPosition"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/TestShader;->getAttribute(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mVertexIndex:I

    .line 18
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mProgram:I

    const-string v1, "uMvpMatrix"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/TestShader;->getUniform(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/TestShader;->mTransformIndex:I

    .line 19
    return-void
.end method
