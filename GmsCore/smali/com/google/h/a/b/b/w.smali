.class public final Lcom/google/h/a/b/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/y;


# instance fields
.field public a:Lcom/google/h/a/b/b/z;

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:Lcom/google/h/a/b/b/aq;

.field private final f:Lcom/google/h/a/b/b/q;

.field private final g:Lcom/google/h/a/b/b/q;

.field private final h:Lcom/google/h/a/b/b/aa;

.field private final i:Lcom/google/h/a/b/b/aa;

.field private final j:[F

.field private k:Lcom/google/h/a/b/b/x;

.field private l:J

.field private m:J

.field private n:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 61
    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x1f4

    const/16 v6, 0x32

    const v7, 0x3f4ccccd    # 0.8f

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/h/a/b/b/w;-><init>(JJIF)V

    .line 66
    return-void
.end method

.method public constructor <init>(JJIF)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/h/a/b/b/aq;

    invoke-direct {v0}, Lcom/google/h/a/b/b/aq;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/w;->e:Lcom/google/h/a/b/b/aq;

    .line 37
    new-instance v0, Lcom/google/h/a/b/b/aa;

    invoke-direct {v0}, Lcom/google/h/a/b/b/aa;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/w;->h:Lcom/google/h/a/b/b/aa;

    .line 38
    new-instance v0, Lcom/google/h/a/b/b/aa;

    invoke-direct {v0}, Lcom/google/h/a/b/b/aa;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/w;->i:Lcom/google/h/a/b/b/aa;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/h/a/b/b/w;->j:[F

    .line 48
    iput-wide v2, p0, Lcom/google/h/a/b/b/w;->l:J

    .line 50
    iput-wide v2, p0, Lcom/google/h/a/b/b/w;->m:J

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/b/b/w;->n:F

    .line 88
    int-to-long v0, p5

    mul-long/2addr v0, p1

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/google/h/a/b/b/w;->b:I

    .line 89
    new-instance v0, Lcom/google/h/a/b/b/q;

    iget v1, p0, Lcom/google/h/a/b/b/w;->b:I

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/w;->f:Lcom/google/h/a/b/b/q;

    .line 90
    new-instance v0, Lcom/google/h/a/b/b/q;

    iget v1, p0, Lcom/google/h/a/b/b/w;->b:I

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/w;->g:Lcom/google/h/a/b/b/q;

    .line 92
    int-to-long v0, p5

    mul-long/2addr v0, p3

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/google/h/a/b/b/w;->c:I

    .line 93
    iput p6, p0, Lcom/google/h/a/b/b/w;->d:F

    .line 94
    return-void
.end method

.method private static a(Lcom/google/h/a/b/b/aa;)F
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/h/a/b/b/aa;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/h/a/b/b/aa;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/google/h/a/b/b/aa;F)F
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/h/a/b/b/aa;->a()I

    move-result v0

    .line 203
    invoke-virtual {p0}, Lcom/google/h/a/b/b/aa;->b()F

    move-result v1

    int-to-float v0, v0

    div-float v0, v1, v0

    mul-float v1, p1, p1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final a(JFFF)V
    .locals 15

    .prologue
    .line 103
    iget-object v4, p0, Lcom/google/h/a/b/b/w;->e:Lcom/google/h/a/b/b/aq;

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->a:Lcom/google/h/a/b/b/q;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/h/a/b/b/q;->a(F)V

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->b:Lcom/google/h/a/b/b/q;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/google/h/a/b/b/q;->a(F)V

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->c:Lcom/google/h/a/b/b/q;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/google/h/a/b/b/q;->a(F)V

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->d:[F

    iput-object v2, v4, Lcom/google/h/a/b/b/aq;->e:[F

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v3, 0x0

    iget-object v5, v4, Lcom/google/h/a/b/b/aq;->a:Lcom/google/h/a/b/b/q;

    iget-wide v6, v5, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v5, v6

    iget-object v6, v4, Lcom/google/h/a/b/b/aq;->a:Lcom/google/h/a/b/b/q;

    iget v6, v6, Lcom/google/h/a/b/b/q;->d:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v3

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v3, 0x1

    iget-object v5, v4, Lcom/google/h/a/b/b/aq;->b:Lcom/google/h/a/b/b/q;

    iget-wide v6, v5, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v5, v6

    iget-object v6, v4, Lcom/google/h/a/b/b/aq;->b:Lcom/google/h/a/b/b/q;

    iget v6, v6, Lcom/google/h/a/b/b/q;->d:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v3

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v3, 0x2

    iget-object v5, v4, Lcom/google/h/a/b/b/aq;->c:Lcom/google/h/a/b/b/q;

    iget-wide v6, v5, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v5, v6

    iget-object v6, v4, Lcom/google/h/a/b/b/aq;->c:Lcom/google/h/a/b/b/q;

    iget v6, v6, Lcom/google/h/a/b/b/q;->d:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v3

    iget-object v5, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget v6, v5, v2

    aget v7, v5, v2

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v4, Lcom/google/h/a/b/b/aq;->f:F

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v3, 0x0

    iget-object v5, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget v6, v4, Lcom/google/h/a/b/b/aq;->f:F

    div-float/2addr v5, v6

    aput v5, v2, v3

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v3, 0x1

    iget-object v5, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget v6, v4, Lcom/google/h/a/b/b/aq;->f:F

    div-float/2addr v5, v6

    aput v5, v2, v3

    iget-object v2, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v3, 0x2

    iget-object v5, v4, Lcom/google/h/a/b/b/aq;->e:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget v4, v4, Lcom/google/h/a/b/b/aq;->f:F

    div-float v4, v5, v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/google/h/a/b/b/w;->e:Lcom/google/h/a/b/b/aq;

    iget-object v2, v2, Lcom/google/h/a/b/b/aq;->e:[F

    iget-object v3, p0, Lcom/google/h/a/b/b/w;->j:[F

    const/4 v4, 0x0

    aput p3, v3, v4

    iget-object v3, p0, Lcom/google/h/a/b/b/w;->j:[F

    const/4 v4, 0x1

    aput p4, v3, v4

    iget-object v3, p0, Lcom/google/h/a/b/b/w;->j:[F

    const/4 v4, 0x2

    aput p5, v3, v4

    iget-object v3, p0, Lcom/google/h/a/b/b/w;->j:[F

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    aget v5, v3, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v2, v2, v5

    const/4 v5, 0x2

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v2, p0, Lcom/google/h/a/b/b/w;->f:Lcom/google/h/a/b/b/q;

    iget v2, v2, Lcom/google/h/a/b/b/q;->d:I

    iget v4, p0, Lcom/google/h/a/b/b/w;->c:I

    if-le v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    mul-float v4, v3, v3

    iget-object v5, p0, Lcom/google/h/a/b/b/w;->f:Lcom/google/h/a/b/b/q;

    invoke-virtual {v5, v4}, Lcom/google/h/a/b/b/q;->a(F)V

    iget-object v5, p0, Lcom/google/h/a/b/b/w;->g:Lcom/google/h/a/b/b/q;

    invoke-virtual {v5, v3}, Lcom/google/h/a/b/b/q;->a(F)V

    iget-object v5, p0, Lcom/google/h/a/b/b/w;->g:Lcom/google/h/a/b/b/q;

    invoke-static {v5}, Lcom/google/h/a/b/b/w;->a(Lcom/google/h/a/b/b/aa;)F

    move-result v5

    iget-object v6, p0, Lcom/google/h/a/b/b/w;->f:Lcom/google/h/a/b/b/q;

    invoke-static {v6, v5}, Lcom/google/h/a/b/b/w;->a(Lcom/google/h/a/b/b/aa;F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/google/h/a/b/b/w;->h:Lcom/google/h/a/b/b/aa;

    invoke-virtual {v7, v4}, Lcom/google/h/a/b/b/aa;->a(F)V

    iget-object v4, p0, Lcom/google/h/a/b/b/w;->i:Lcom/google/h/a/b/b/aa;

    invoke-virtual {v4, v3}, Lcom/google/h/a/b/b/aa;->a(F)V

    :cond_2
    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/h/a/b/b/w;->i:Lcom/google/h/a/b/b/aa;

    invoke-static {v2}, Lcom/google/h/a/b/b/w;->a(Lcom/google/h/a/b/b/aa;)F

    move-result v3

    iget-object v2, p0, Lcom/google/h/a/b/b/w;->h:Lcom/google/h/a/b/b/aa;

    invoke-static {v2, v3}, Lcom/google/h/a/b/b/w;->a(Lcom/google/h/a/b/b/aa;F)F

    move-result v4

    iget-object v7, p0, Lcom/google/h/a/b/b/w;->g:Lcom/google/h/a/b/b/q;

    iget v2, p0, Lcom/google/h/a/b/b/w;->c:I

    iget v8, v7, Lcom/google/h/a/b/b/q;->d:I

    if-lt v2, v8, :cond_4

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Index "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " >= size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v7, Lcom/google/h/a/b/b/q;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget v8, v7, Lcom/google/h/a/b/b/q;->c:I

    add-int/lit8 v8, v8, -0x1

    sub-int v2, v8, v2

    if-gez v2, :cond_5

    iget-object v8, v7, Lcom/google/h/a/b/b/q;->a:[F

    array-length v8, v8

    add-int/2addr v2, v8

    :cond_5
    iget-object v7, v7, Lcom/google/h/a/b/b/q;->a:[F

    aget v2, v7, v2

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v8, p0, Lcom/google/h/a/b/b/w;->k:Lcom/google/h/a/b/b/x;

    if-nez v8, :cond_9

    new-instance v8, Lcom/google/h/a/b/b/x;

    move-wide/from16 v0, p1

    invoke-direct {v8, v0, v1, v7}, Lcom/google/h/a/b/b/x;-><init>(JF)V

    iput-object v8, p0, Lcom/google/h/a/b/b/w;->k:Lcom/google/h/a/b/b/x;

    :goto_2
    cmpl-float v8, v2, v5

    if-ltz v8, :cond_8

    sub-float v5, v2, v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    float-to-double v4, v4

    mul-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8

    iget v2, p0, Lcom/google/h/a/b/b/w;->d:F

    cmpl-float v2, v6, v2

    if-lez v2, :cond_8

    iget-wide v2, p0, Lcom/google/h/a/b/b/w;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    iget v2, p0, Lcom/google/h/a/b/b/w;->n:F

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-wide v4, p0, Lcom/google/h/a/b/b/w;->m:J

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/h/a/b/b/w;->k:Lcom/google/h/a/b/b/x;

    iget v3, v3, Lcom/google/h/a/b/b/x;->a:F

    sub-float/2addr v2, v3

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_6

    iget-wide v2, p0, Lcom/google/h/a/b/b/w;->l:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x17d78400

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    :cond_6
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/h/a/b/b/w;->l:J

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/google/h/a/b/b/w;->k:Lcom/google/h/a/b/b/x;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/h/a/b/b/x;->a:F

    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/google/h/a/b/b/w;->m:J

    iput v7, p0, Lcom/google/h/a/b/b/w;->n:F

    .line 104
    :cond_8
    return-void

    .line 103
    :cond_9
    iget-object v8, p0, Lcom/google/h/a/b/b/w;->k:Lcom/google/h/a/b/b/x;

    iget v9, v8, Lcom/google/h/a/b/b/x;->a:F

    iget v10, v8, Lcom/google/h/a/b/b/x;->c:F

    add-float/2addr v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget-wide v12, v8, Lcom/google/h/a/b/b/x;->b:J

    sub-long v12, p1, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-float v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v8, Lcom/google/h/a/b/b/x;->a:F

    iput v7, v8, Lcom/google/h/a/b/b/x;->c:F

    move-wide/from16 v0, p1

    iput-wide v0, v8, Lcom/google/h/a/b/b/x;->b:J

    goto/16 :goto_2

    :cond_a
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/google/h/a/b/b/w;->l:J

    iget-object v2, p0, Lcom/google/h/a/b/b/w;->a:Lcom/google/h/a/b/b/z;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/h/a/b/b/w;->a:Lcom/google/h/a/b/b/z;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/h/a/b/b/z;->a(J)V

    goto :goto_3
.end method

.method public final a(Lcom/google/h/a/b/b/z;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/h/a/b/b/w;->a:Lcom/google/h/a/b/b/z;

    .line 99
    return-void
.end method
