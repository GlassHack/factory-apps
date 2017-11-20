.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;


# static fields
.field private static final c:[I

.field private static d:I

.field private static final j:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field private static final k:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field private static final l:Ljava/lang/ThreadLocal;


# instance fields
.field private final e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x1

    const/4 v1, -0x1

    const v10, -0x45749f

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->c:[I

    const/16 v0, 0x4000

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->d:I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    const/4 v2, 0x2

    new-array v3, v9, [I

    new-array v4, v11, [Lcom/google/maps/api/android/lib6/gmm6/l/w;

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/w;

    const/high16 v7, 0x40000000    # 2.0f

    new-array v8, v9, [I

    invoke-direct {v6, v10, v7, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/w;-><init>(IF[II)V

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;-><init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->j:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    const/4 v2, 0x2

    new-array v3, v9, [I

    new-array v4, v11, [Lcom/google/maps/api/android/lib6/gmm6/l/w;

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/w;

    const/high16 v7, 0x3fc00000    # 1.5f

    new-array v8, v9, [I

    invoke-direct {v6, v10, v7, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/w;-><init>(IF[II)V

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;-><init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->k:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/b;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/b;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->l:Ljava/lang/ThreadLocal;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x4
        0x2
        0x4
        0x4
        0x6
    .end array-data
.end method

.method private constructor <init>(IILjava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    invoke-direct {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(IB)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    invoke-direct {v0, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(IB)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->G()Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/o/c/a;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->G()Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/o/c/a;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    return-void
.end method

.method static a(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/ca;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;
    .locals 13

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v5

    instance-of v1, v5, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    if-eqz v1, :cond_9

    move-object v1, v5

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)I

    move-result v9

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)I

    move-result v10

    sget v11, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->d:I

    if-gt v9, v11, :cond_0

    sget v11, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->d:I

    if-le v10, v11, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int v11, v2, v9

    sget v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->d:I

    if-gt v11, v12, :cond_9

    add-int v11, v3, v10

    sget v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->d:I

    if-gt v11, v12, :cond_9

    add-int/2addr v2, v9

    add-int/2addr v3, v10

    invoke-interface {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->e()[I

    move-result-object v9

    array-length v10, v9

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_3

    aget v11, v9, v5

    if-ltz v11, :cond_2

    array-length v12, p1

    if-ge v11, v12, :cond_2

    aget-object v11, p1, v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_8

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)Z

    move-result v9

    if-nez v5, :cond_4

    if-nez v9, :cond_7

    :cond_4
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->g()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    iget-object v11, v1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->c:[B

    invoke-static {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/r;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bp;[B)Ljava/util/List;

    move-result-object v10

    if-eqz p3, :cond_5

    if-nez v9, :cond_5

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;Lcom/google/maps/api/android/lib6/gmm6/l/ch;Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->h()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;Lcom/google/maps/api/android/lib6/gmm6/l/ch;Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->h()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    move-object/from16 v0, p4

    invoke-direct {v5, v7, v6, v9, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/p;Ljava/util/List;Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;)V

    :cond_c
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;-><init>(IILjava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    invoke-direct {v1, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/ch;)V

    goto :goto_5

    :cond_d
    return-object v1

    :cond_e
    move-object v6, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/ch;)V
    .locals 17

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    move v7, v2

    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)Z

    move-result v13

    if-nez v7, :cond_2

    if-eqz v13, :cond_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v14

    if-eqz v7, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a(I)I

    move-result v2

    move v11, v2

    :goto_2
    if-eqz v13, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v2

    move v8, v2

    :goto_3
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->c:[B

    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v6, 0x2

    aget-object v6, v2, v6

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v12, :cond_a

    invoke-virtual/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v10, v10, 0x3

    :cond_3
    if-eqz v13, :cond_6

    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v9, v9, 0x2

    :cond_4
    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v9, v9, 0x2

    :cond_5
    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v9, v9, 0x2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_7
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v1, v11, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v1, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(II)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;Lcom/google/maps/api/android/lib6/gmm6/l/ch;Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    .locals 11

    if-eqz p3, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/al;->d:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    invoke-virtual {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41900000    # 18.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->j:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    :goto_0
    move-object v4, v0

    :goto_1
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->g()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->k:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    iget-object v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    goto :goto_1

    :cond_3
    iget v6, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->g:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->e:I

    iget-object v5, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->f:Ljava/lang/String;

    iget-object v8, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->i:[I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    :goto_3
    invoke-direct/range {v0 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/l/de;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IF[IZ)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->b:[Ljava/lang/String;

    invoke-direct {v3, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/de;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 5

    const/high16 v4, 0x10000

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method private static b(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->e()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->c:[B

    move v1, v0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-byte v3, v2, v0

    and-int/lit8 v3, v3, 0x7

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->c:[I

    aget v3, v4, v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    if-nez v0, :cond_0

    :goto_0
    add-int v0, v2, v1

    return v0

    :cond_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    :goto_1
    add-int/2addr v0, v4

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v4, :cond_1

    iget-object v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    :cond_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x10000

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    invoke-interface {v0, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    invoke-interface {v0, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->f:I

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1, p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    invoke-interface {v1, v4, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_6
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto/16 :goto_0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x9c

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    if-nez v0, :cond_0

    :goto_0
    add-int v0, v2, v1

    return v0

    :cond_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    :goto_1
    add-int/2addr v0, v4

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v4, :cond_1

    iget-object v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v1

    :cond_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    return-void
.end method
