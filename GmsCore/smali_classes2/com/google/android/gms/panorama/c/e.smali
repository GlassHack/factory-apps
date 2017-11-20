.class public abstract Lcom/google/android/gms/panorama/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/nio/FloatBuffer;

.field protected b:Ljava/nio/FloatBuffer;

.field protected c:Ljava/nio/ShortBuffer;

.field protected d:Ljava/util/Vector;

.field protected e:[F

.field protected f:[F

.field protected g:[F

.field protected h:Lcom/google/android/gms/panorama/c/k;

.field protected i:Ljava/util/HashSet;

.field protected final j:Lcom/google/android/gms/panorama/c/e;

.field private final k:[F

.field private final l:[F

.field private final m:Lcom/google/android/gms/panorama/b/c;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/google/android/gms/panorama/c/e;->a:Ljava/nio/FloatBuffer;

    .line 32
    iput-object v2, p0, Lcom/google/android/gms/panorama/c/e;->b:Ljava/nio/FloatBuffer;

    .line 33
    iput-object v2, p0, Lcom/google/android/gms/panorama/c/e;->c:Ljava/nio/ShortBuffer;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->d:Ljava/util/Vector;

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->f:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->g:[F

    .line 44
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->k:[F

    .line 45
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->l:[F

    .line 46
    new-instance v0, Lcom/google/android/gms/panorama/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->m:Lcom/google/android/gms/panorama/b/c;

    .line 49
    iput-object v2, p0, Lcom/google/android/gms/panorama/c/e;->h:Lcom/google/android/gms/panorama/c/k;

    .line 52
    iput-object v2, p0, Lcom/google/android/gms/panorama/c/e;->i:Ljava/util/HashSet;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 62
    iput-object v2, p0, Lcom/google/android/gms/panorama/c/e;->j:Lcom/google/android/gms/panorama/c/e;

    .line 63
    return-void
.end method


# virtual methods
.method protected final a(FFF)V
    .locals 11

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    neg-float v2, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 90
    iget-object v5, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    move v6, v1

    move v7, p2

    move v8, v4

    move v9, v3

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 91
    iget-object v5, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    neg-float v7, p3

    move v6, v1

    move v8, v3

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->f:[F

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    .line 93
    return-void
.end method

.method protected final a(IFFF)V
    .locals 3

    .prologue
    .line 243
    mul-int/lit8 v0, p1, 0x3

    .line 244
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/e;->a:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->a:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 247
    return-void
.end method

.method protected final a(II)V
    .locals 2

    .prologue
    .line 220
    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->a:Ljava/nio/FloatBuffer;

    .line 223
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->c:Ljava/nio/ShortBuffer;

    .line 226
    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/e;->b:Ljava/nio/FloatBuffer;

    .line 231
    return-void
.end method

.method protected final a(IS)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 257
    return-void
.end method

.method protected a(Lcom/google/android/gms/panorama/b/c;F)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public final a(Lcom/google/android/gms/panorama/c/k;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/gms/panorama/c/e;->h:Lcom/google/android/gms/panorama/c/k;

    .line 99
    return-void
.end method

.method public abstract a([F)V
.end method

.method public final a([FLcom/google/android/gms/panorama/b/c;F)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 129
    iget-object v6, p0, Lcom/google/android/gms/panorama/c/e;->m:Lcom/google/android/gms/panorama/b/c;

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->k:[F

    iget v2, p2, Lcom/google/android/gms/panorama/b/c;->a:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->k:[F

    iget v2, p2, Lcom/google/android/gms/panorama/b/c;->b:F

    aput v2, v0, v7

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->k:[F

    iget v2, p2, Lcom/google/android/gms/panorama/b/c;->c:F

    aput v2, v0, v8

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->k:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->l:[F

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/e;->f:[F

    iget-object v4, p0, Lcom/google/android/gms/panorama/c/e;->k:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->l:[F

    aget v0, v0, v1

    iput v0, v6, Lcom/google/android/gms/panorama/b/c;->a:F

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->l:[F

    aget v0, v0, v7

    iput v0, v6, Lcom/google/android/gms/panorama/b/c;->b:F

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->l:[F

    aget v0, v0, v8

    iput v0, v6, Lcom/google/android/gms/panorama/b/c;->c:F

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->m:Lcom/google/android/gms/panorama/b/c;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/panorama/c/e;->a(Lcom/google/android/gms/panorama/b/c;F)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/gms/panorama/c/e;->b([F)V

    .line 131
    return-void
.end method

.method public final b([F)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->g:[F

    iget-object v4, p0, Lcom/google/android/gms/panorama/c/e;->e:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/panorama/c/e;

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/e;->g:[F

    invoke-virtual {v0, v2}, Lcom/google/android/gms/panorama/c/e;->b([F)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/e;->g:[F

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/c/e;->a([F)V

    .line 119
    return-void
.end method
