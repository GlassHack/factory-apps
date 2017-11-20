.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;


# static fields
.field private static c:I

.field private static d:I

.field private static e:F

.field private static f:F


# instance fields
.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

.field private final i:I

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v0, 0x4000

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->d:I

    sput v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->e:F

    sput v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->f:F

    return-void
.end method

.method private constructor <init>(IILjava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->G()Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/o/c/a;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v0, 0x10000

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->i:I

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/ca;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;
    .locals 11

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    instance-of v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dg;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-gt v2, v0, :cond_6

    const/4 v2, 0x1

    move-object v0, v1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    sget v7, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->c:I

    if-le v0, v7, :cond_0

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int v7, v0, v3

    sget v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->c:I

    if-gt v7, v8, :cond_6

    add-int/2addr v0, v3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v0

    move v0, v10

    :goto_1
    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->e()[I

    move-result-object v3

    array-length v7, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    aget v8, v3, v1

    if-ltz v8, :cond_1

    array-length v9, p1

    if-ge v8, v9, :cond_1

    aget-object v8, p1, v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    instance-of v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/l/de;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->c()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->b(F)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-gtz v2, :cond_6

    move v2, v0

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    sget v7, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->c:I

    if-le v0, v7, :cond_4

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    add-int v7, v0, v3

    sget v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->c:I

    if-gt v7, v8, :cond_6

    add-int/2addr v0, v3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    move v3, v2

    move v2, v0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    if-gez v0, :cond_7

    const/4 v0, 0x1

    :cond_7
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;

    invoke-direct {v1, v3, v0, v5, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;-><init>(IILjava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->a()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_9

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;

    invoke-direct {v1, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/dg;)V

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->a()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_8

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    invoke-direct {v1, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/de;)V

    goto :goto_3

    :cond_a
    return-object v1
.end method

.method public static declared-synchronized a(F)V
    .locals 4

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x5

    sget v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->d:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->f:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(I)V
    .locals 4

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->d:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x5

    sget v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->d:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->f:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/de;)V
    .locals 10

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p2, Lcom/google/maps/api/android/lib6/gmm6/l/de;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    mul-int/lit8 v5, v4, 0x2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v7

    move v0, v1

    :goto_1
    if-gt v0, v4, :cond_3

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v8, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v8, v9, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-lez v0, :cond_2

    if-ge v0, v4, :cond_2

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v8, v9, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(II)V

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/dg;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p2, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v6

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v7, v5, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v7, v8, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(II)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/l/de;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v5

    if-ne v5, v0, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v4

    sget v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    if-nez v2, :cond_1

    :goto_1
    monitor-exit v3

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static declared-synchronized b(F)I
    .locals 4

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sget v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->d:I

    sget v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->f:F

    mul-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 5

    const/high16 v4, 0x10000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->i:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->i:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method
