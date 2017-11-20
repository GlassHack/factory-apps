.class public final Lcom/google/android/gms/panorama/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field final b:I

.field c:Ljava/nio/FloatBuffer;

.field d:Ljava/nio/FloatBuffer;

.field e:Ljava/nio/ShortBuffer;

.field f:[Lcom/google/android/gms/panorama/b/c;

.field g:Z

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(II)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/google/android/gms/panorama/c/b;->i:I

    .line 43
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/c/b;->g:Z

    .line 54
    iput p1, p0, Lcom/google/android/gms/panorama/c/b;->a:I

    .line 56
    add-int/lit8 v4, p2, 0x1

    .line 57
    mul-int v0, v4, v4

    iput v0, p0, Lcom/google/android/gms/panorama/c/b;->h:I

    .line 60
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v2, v4, -0x1

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/panorama/c/b;->b:I

    .line 61
    iget v0, p0, Lcom/google/android/gms/panorama/c/b;->h:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/b;->d:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/google/android/gms/panorama/c/b;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    new-array v0, v1, [Lcom/google/android/gms/panorama/b/c;

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/b;->f:[Lcom/google/android/gms/panorama/b/c;

    move v3, v1

    move v0, v1

    .line 65
    :goto_0
    add-int/lit8 v2, v4, -0x1

    if-ge v3, v2, :cond_1

    .line 66
    mul-int v5, v3, v4

    move v2, v0

    move v0, v1

    .line 67
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v0, v6, :cond_0

    .line 68
    add-int v6, v5, v0

    .line 84
    iget-object v7, p0, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v9, v6, 0x0

    int-to-short v9, v9

    invoke-virtual {v7, v2, v9}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    invoke-virtual {v2, v8, v9}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    add-int/lit8 v8, v7, 0x1

    add-int v9, v6, v4

    int-to-short v9, v9

    invoke-virtual {v2, v7, v9}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 87
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    add-int/lit8 v7, v8, 0x1

    add-int v9, v6, v4

    int-to-short v9, v9

    invoke-virtual {v2, v8, v9}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 88
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    invoke-virtual {v2, v7, v9}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 89
    iget-object v7, p0, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v8, 0x1

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    invoke-virtual {v7, v8, v6}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v1

    move v0, v1

    .line 96
    :goto_2
    if-ge v3, v4, :cond_3

    move v2, v0

    move v0, v1

    .line 97
    :goto_3
    if-ge v0, v4, :cond_2

    .line 98
    int-to-float v5, v0

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 99
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v3

    add-int/lit8 v8, v4, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 100
    iget-object v7, p0, Lcom/google/android/gms/panorama/c/b;->d:Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v2, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 101
    iget-object v5, p0, Lcom/google/android/gms/panorama/c/b;->d:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 96
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_2

    .line 104
    :cond_3
    return-void
.end method


# virtual methods
.method public final a([Lcom/google/android/gms/panorama/c/q;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 112
    iget v1, p0, Lcom/google/android/gms/panorama/c/b;->h:I

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/panorama/c/b;->c:Ljava/nio/FloatBuffer;

    .line 114
    iput v0, p0, Lcom/google/android/gms/panorama/c/b;->i:I

    .line 115
    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/gms/panorama/b/c;

    iput-object v1, p0, Lcom/google/android/gms/panorama/c/b;->f:[Lcom/google/android/gms/panorama/b/c;

    .line 117
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 118
    aget-object v1, p1, v0

    .line 119
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/b;->c:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/google/android/gms/panorama/c/b;->i:I

    iget v4, v1, Lcom/google/android/gms/panorama/c/q;->a:F

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x1

    iget v5, v1, Lcom/google/android/gms/panorama/c/q;->b:F

    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Lcom/google/android/gms/panorama/c/q;->c:F

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    iget v2, p0, Lcom/google/android/gms/panorama/c/b;->i:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/google/android/gms/panorama/c/b;->i:I

    .line 124
    new-instance v2, Lcom/google/android/gms/panorama/b/c;

    iget v3, v1, Lcom/google/android/gms/panorama/c/q;->a:F

    iget v4, v1, Lcom/google/android/gms/panorama/c/q;->b:F

    iget v1, v1, Lcom/google/android/gms/panorama/c/q;->c:F

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/panorama/b/c;-><init>(FFF)V

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/panorama/b/c;->a()F

    .line 126
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/b;->f:[Lcom/google/android/gms/panorama/b/c;

    aput-object v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
