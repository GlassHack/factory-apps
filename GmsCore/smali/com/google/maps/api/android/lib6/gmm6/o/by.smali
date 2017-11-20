.class public final Lcom/google/maps/api/android/lib6/gmm6/o/by;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# static fields
.field private static final a:F

.field private static final b:F


# instance fields
.field private c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private d:I

.field private e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field private f:Z

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final k:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3fb657184ae74487L    # 0.08726646259971647

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->a:F

    const-wide v0, 0x3faacee9f37bebd6L    # 0.05235987755982989

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/by;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(II)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/by;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(II)V

    return-void
.end method

.method private static a([I)I
    .locals 3

    const v2, 0xff00

    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget v1, p0, v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->f:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v0, v2, :cond_2

    :cond_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->f:Z

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v2, v0, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v2, v0, :cond_1

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(F)F

    move-result v3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v2, v0, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    :goto_3
    sub-float v0, v3, v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->i()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v3, v3, v0

    if-lez v3, :cond_1

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    invoke-virtual {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c(F)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v4, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    invoke-virtual {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    invoke-virtual {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v2, v0, :cond_5

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->b:F

    :goto_4
    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    invoke-virtual {v0, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    invoke-virtual {v0, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    goto/16 :goto_1

    :cond_4
    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_3

    :cond_5
    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->a:F

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->d:I

    int-to-float v3, v3

    invoke-static {p1, p2, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->t()V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v2, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :goto_5
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_5
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/by;->f:Z

    return v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method
