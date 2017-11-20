.class public final Lcom/google/android/gms/panorama/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/panorama/c/h;)V
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v5, 0x1

    const/high16 v4, 0x46180000    # 9728.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    .line 34
    sget-object v0, Lcom/google/android/gms/panorama/c/g;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/panorama/c/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    invoke-static {}, Lcom/google/android/gms/panorama/c/f;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    .line 47
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/panorama/c/f;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    goto :goto_0

    .line 40
    :pswitch_1
    new-array v0, v5, [I

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v0, v3

    iput v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 103
    new-array v0, v1, [I

    .line 104
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 106
    aget v1, v0, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 113
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 117
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 119
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 121
    aget v0, v0, v4

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    if-gez v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/android/gms/panorama/c/i;

    const-string v1, "Trying to bind without a loaded texture"

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/c/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/16 v0, 0xde1

    iget v1, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/google/android/gms/panorama/c/i;->a(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const v4, 0x812f

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 78
    new-array v0, v1, [I

    .line 79
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 80
    aget v0, v0, v3

    iput v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    .line 81
    iget v0, p0, Lcom/google/android/gms/panorama/c/f;->a:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 84
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 88
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 92
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 94
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 97
    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 98
    const-string v0, "Texture : loadBitmap"

    invoke-static {v0}, Lcom/google/android/gms/panorama/c/i;->a(Ljava/lang/String;)V

    .line 99
    return-void
.end method
