.class public final Lcom/google/android/gms/panorama/c/p;
.super Lcom/google/android/gms/panorama/c/e;
.source "SourceFile"


# instance fields
.field private k:Lcom/google/android/gms/panorama/c/f;

.field private l:Lcom/google/android/gms/panorama/e/a;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    const v3, 0x3eaaaaab

    const/high16 v10, 0x42000000    # 32.0f

    const/16 v9, 0x24

    const/4 v1, 0x0

    const/high16 v8, 0x3e800000    # 0.25f

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/panorama/c/e;-><init>()V

    .line 37
    iput v1, p0, Lcom/google/android/gms/panorama/c/p;->m:I

    .line 48
    :try_start_0
    new-instance v0, Lcom/google/android/gms/panorama/e/a;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/e/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/p;->l:Lcom/google/android/gms/panorama/e/a;
    :try_end_0
    .catch Lcom/google/android/gms/panorama/c/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v0, Lcom/google/android/gms/panorama/c/f;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/c/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/p;->k:Lcom/google/android/gms/panorama/c/f;

    .line 53
    iput v9, p0, Lcom/google/android/gms/panorama/c/p;->m:I

    iget v0, p0, Lcom/google/android/gms/panorama/c/p;->m:I

    invoke-virtual {p0, v9, v0}, Lcom/google/android/gms/panorama/c/p;->a(II)V

    const/16 v0, 0x18

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    new-array v4, v9, [S

    fill-array-data v4, :array_1

    move v0, v1

    :goto_1
    if-ge v0, v9, :cond_0

    aget-short v5, v4, v0

    mul-int/lit8 v5, v5, 0x3

    aget v6, v2, v5

    mul-float/2addr v6, v10

    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    mul-float/2addr v7, v10

    add-int/lit8 v5, v5, 0x2

    aget v5, v2, v5

    mul-float/2addr v5, v10

    invoke-virtual {p0, v0, v6, v7, v5}, Lcom/google/android/gms/panorama/c/p;->a(IFFF)V

    int-to-short v5, v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/panorama/c/p;->a(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/i;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v6, v1

    .line 53
    :goto_2
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1

    int-to-float v0, v6

    mul-float v2, v0, v8

    add-float v4, v2, v8

    const v5, 0x3f2aaaab

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/panorama/c/p;->a(IFFFF)I

    move-result v1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/panorama/c/p;->a(IFFFF)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3f2aaaab

    move-object v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/panorama/c/p;->a(IFFFF)I

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->k:Lcom/google/android/gms/panorama/c/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/panorama/c/f;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Lcom/google/android/gms/panorama/c/i; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :goto_3
    return-void

    .line 53
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/i;->printStackTrace()V

    goto :goto_3

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x7s
        0x3s
        0x0s
        0x4s
        0x7s
        0x4s
        0x6s
        0x7s
        0x4s
        0x5s
        0x6s
        0x5s
        0x2s
        0x6s
        0x5s
        0x1s
        0x2s
        0x1s
        0x3s
        0x2s
        0x1s
        0x0s
        0x3s
        0x3s
        0x6s
        0x7s
        0x3s
        0x2s
        0x6s
        0x4s
        0x1s
        0x0s
        0x4s
        0x5s
        0x1s
    .end array-data
.end method

.method private a(IFFFF)I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/gms/panorama/c/p;->a(IFF)V

    .line 96
    add-int/lit8 v0, p1, 0x2

    .line 97
    invoke-direct {p0, v0, p4, p3}, Lcom/google/android/gms/panorama/c/p;->a(IFF)V

    .line 98
    add-int/lit8 v0, v0, 0x2

    .line 99
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/panorama/c/p;->a(IFF)V

    .line 100
    add-int/lit8 v0, v0, 0x2

    .line 101
    invoke-direct {p0, v0, p2, p5}, Lcom/google/android/gms/panorama/c/p;->a(IFF)V

    .line 102
    add-int/lit8 v0, v0, 0x2

    .line 103
    invoke-direct {p0, v0, p4, p5}, Lcom/google/android/gms/panorama/c/p;->a(IFF)V

    .line 104
    add-int/lit8 v0, v0, 0x2

    .line 105
    invoke-direct {p0, v0, p4, p3}, Lcom/google/android/gms/panorama/c/p;->a(IFF)V

    .line 106
    add-int/lit8 v0, v0, 0x2

    .line 107
    return v0
.end method

.method private a(IFF)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 81
    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->l:Lcom/google/android/gms/panorama/e/a;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/e/a;->a()V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->l:Lcom/google/android/gms/panorama/e/a;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/e/a;->a(F)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->l:Lcom/google/android/gms/panorama/e/a;

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/p;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/e/a;->a(Ljava/nio/FloatBuffer;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->l:Lcom/google/android/gms/panorama/e/a;

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/p;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/e/a;->b(Ljava/nio/FloatBuffer;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->k:Lcom/google/android/gms/panorama/c/f;

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/p;->l:Lcom/google/android/gms/panorama/e/a;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/f;->a()V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/p;->l:Lcom/google/android/gms/panorama/e/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/panorama/e/a;->a([F)V

    .line 74
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/panorama/c/p;->m:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/gms/panorama/c/p;->c:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 76
    return-void
.end method
