.class public final Lcom/google/android/gms/panorama/e/a;
.super Lcom/google/android/gms/panorama/c/k;
.source "SourceFile"


# instance fields
.field private f:I

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/panorama/c/k;-><init>()V

    .line 20
    iput v3, p0, Lcom/google/android/gms/panorama/e/a;->f:I

    .line 42
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iput-object v0, p0, Lcom/google/android/gms/panorama/e/a;->g:Ljava/lang/String;

    .line 53
    const-string v0, "precision highp float;                            \nuniform float uAlphaFactor;                         \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  vec4 texcolor;                                    \n  texcolor = texture2D( sTexture, vTexCoord );      \n  texcolor.a = uAlphaFactor;                        \n  gl_FragColor = texcolor;                          \n}                                                   \n"

    iput-object v0, p0, Lcom/google/android/gms/panorama/e/a;->h:Ljava/lang/String;

    .line 23
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    iget-object v1, p0, Lcom/google/android/gms/panorama/e/a;->h:Ljava/lang/String;

    const v2, 0x8b31

    invoke-static {v2, v0}, Lcom/google/android/gms/panorama/c/k;->a(ILjava/lang/String;)I

    move-result v0

    const v2, 0x8b30

    invoke-static {v2, v1}, Lcom/google/android/gms/panorama/c/k;->a(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/android/gms/panorama/c/i;

    const-string v1, "Unable to create program"

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/c/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v0, "glAttachShader"

    invoke-static {v0}, Lcom/google/android/gms/panorama/c/i;->a(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v0, "glAttachShader"

    invoke-static {v0}, Lcom/google/android/gms/panorama/c/i;->a(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v4, [I

    const v1, 0x8b82

    invoke-static {v2, v1, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v0, v3

    if-eq v0, v4, :cond_1

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    new-instance v0, Lcom/google/android/gms/panorama/c/i;

    const-string v1, "Could not link program"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/panorama/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v2, p0, Lcom/google/android/gms/panorama/e/a;->e:I

    .line 24
    iget v0, p0, Lcom/google/android/gms/panorama/e/a;->e:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/google/android/gms/panorama/e/a;->b(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/e/a;->a:I

    .line 25
    iget v0, p0, Lcom/google/android/gms/panorama/e/a;->e:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/google/android/gms/panorama/e/a;->b(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/e/a;->b:I

    .line 26
    iget v0, p0, Lcom/google/android/gms/panorama/e/a;->e:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Lcom/google/android/gms/panorama/e/a;->c(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/e/a;->c:I

    .line 27
    iget v0, p0, Lcom/google/android/gms/panorama/e/a;->e:I

    const-string v1, "uAlphaFactor"

    invoke-static {v0, v1}, Lcom/google/android/gms/panorama/e/a;->c(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/e/a;->f:I

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/e/a;->a()V

    .line 31
    iget v0, p0, Lcom/google/android/gms/panorama/e/a;->f:I

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gms/panorama/e/a;->f:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 38
    return-void
.end method
