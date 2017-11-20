.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;


# static fields
.field private static final c:[I

.field private static volatile d:Z

.field private static final j:F


# instance fields
.field private final e:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->c:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->d:Z

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->j:F

    return-void

    :array_0
    .array-data 4
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->e:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->a:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->a:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->a:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->b:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/ca;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;
    .locals 14

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;-><init>(B)V

    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->b()V

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    instance-of v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/bm;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v4, v1, 0x4

    iget v5, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->a:I

    add-int/2addr v5, v4

    const/16 v6, 0x1000

    if-le v5, v6, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->e()[I

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    aget v5, v1, v0

    if-ltz v5, :cond_1

    array-length v6, p1

    if-ge v5, v6, :cond_1

    aget-object v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v5, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->a:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->a:I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iget v5, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->b:I

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v5

    iput v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;->b:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->c()V

    new-instance v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;

    invoke-direct {v9, p0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/as;Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v10

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/i;

    move-result-object v0

    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    instance-of v2, v1, Lcom/google/maps/api/android/lib6/gmm6/l/bm;

    if-eqz v2, :cond_6

    move-object v5, v1

    check-cast v5, Lcom/google/maps/api/android/lib6/gmm6/l/bm;

    iget-object v1, v5, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v3

    mul-int/lit8 v6, v2, 0x4

    add-int v7, v3, v6

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v4

    iget-object v2, v5, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v8

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v2, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v11

    int-to-float v2, v4

    mul-float/2addr v2, v8

    const/high16 v12, 0x3fa00000    # 1.25f

    mul-float/2addr v2, v12

    const/high16 v12, 0x43800000    # 256.0f

    div-float/2addr v2, v12

    iget v12, v5, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->c:I

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v12

    if-nez v12, :cond_4

    neg-float v2, v2

    :cond_4
    iget-object v12, v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v12, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(I)V

    iget-object v7, v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v7, v11, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->d:I

    packed-switch v5, :pswitch_data_0

    const/high16 v5, 0x42a00000    # 80.0f

    div-float/2addr v5, v8

    :goto_3
    iget-object v6, v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v7, v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v8, v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FLcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_0
    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v5, v8

    goto :goto_3

    :pswitch_1
    const/high16 v5, 0x43700000    # 240.0f

    div-float/2addr v5, v8

    goto :goto_3

    :pswitch_2
    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v5, v8

    goto :goto_3

    :cond_6
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 8

    const/16 v7, 0x1702

    const/16 v6, 0x1700

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/high16 v3, 0x10000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->e:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    sget v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->j:F

    invoke-interface {v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_2
    iget-object v1, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1, p1, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1, p1, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0xb8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ar;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method
