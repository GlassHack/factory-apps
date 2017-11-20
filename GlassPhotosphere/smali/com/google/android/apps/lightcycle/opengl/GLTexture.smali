.class public Lcom/google/android/apps/lightcycle/opengl/GLTexture;
.super Ljava/lang/Object;
.source "GLTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/opengl/GLTexture$1;,
        Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;
    }
.end annotation


# instance fields
.field private mTextureIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;)V
    .locals 2
    .param p1, "type"    # Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    .line 34
    sget-object v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$1;->$SwitchMap$com$google$android$apps$lightcycle$opengl$GLTexture$TextureType:[I

    invoke-virtual {p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    .line 47
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createNNTexture()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const/high16 v4, 0x46180000    # 9728.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 122
    new-array v0, v1, [I

    .line 123
    .local v0, "textures":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 125
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 128
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 132
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 136
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 138
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 140
    aget v1, v0, v3

    return v1
.end method

.method public static createStandardTexture()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 99
    new-array v0, v1, [I

    .line 100
    .local v0, "textures":[I
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 102
    aget v1, v0, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 105
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 109
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 113
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 115
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 117
    aget v1, v0, v4

    return v1
.end method


# virtual methods
.method public bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V
    .locals 2
    .param p1, "shader"    # Lcom/google/android/apps/lightcycle/opengl/Shader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    if-gez v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v1, "Trying to bind without a loaded texture"

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/16 v0, 0xde1

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    return v0
.end method

.method public loadBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 73
    new-array v0, v1, [I

    .line 74
    .local v0, "textures":[I
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 75
    aget v1, v0, v4

    iput v1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    .line 76
    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 83
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 87
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 89
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 92
    invoke-static {v3, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 93
    const-string v1, "Texture : loadBitmap"

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    return-void
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v3, [I

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    aput v1, v0, v2

    .line 57
    .local v0, "textures":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    .line 59
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->mTextureIndex:I

    .line 146
    return-void
.end method
