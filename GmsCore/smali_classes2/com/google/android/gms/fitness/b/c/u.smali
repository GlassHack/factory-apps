.class public final Lcom/google/android/gms/fitness/b/c/u;
.super Lcom/google/android/gms/fitness/b/c/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/b/c/v;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/c/b;-><init>(Lcom/google/android/gms/fitness/b/c/f;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/b/c/v;B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/c/u;-><init>(Lcom/google/android/gms/fitness/b/c/v;)V

    return-void
.end method

.method private a(Ljava/util/List;IJJJLjava/util/SortedSet;)V
    .locals 19

    .prologue
    .line 63
    move-object/from16 v4, p1

    move-object/from16 v3, p0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    .line 64
    return-void

    .line 68
    :cond_0
    move/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ListIterator;

    move-wide/from16 v10, p7

    move-wide/from16 v6, p3

    .line 69
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/google/android/gms/fitness/b/c;

    .line 71
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v5}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 72
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v5}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p7

    .line 73
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v5}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v5}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v16

    cmp-long v5, v14, v16

    if-gtz v5, :cond_3

    const-string v5, "Zero-length interval: "

    invoke-static {v5, v13}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_1

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    cmp-long v5, p7, v6

    if-lez v5, :cond_1

    .line 74
    cmp-long v5, p7, p5

    if-lez v5, :cond_4

    .line 79
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 96
    :cond_2
    add-int/lit8 p2, p2, 0x1

    move-wide/from16 p7, v10

    move-wide/from16 p3, v6

    goto :goto_0

    .line 73
    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    .line 84
    :cond_4
    add-int/lit8 v5, p2, 0x1

    move-object/from16 v12, p9

    .line 85
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/fitness/b/c/u;->a(Ljava/util/List;IJJJLjava/util/SortedSet;)V

    .line 88
    new-instance v7, Lcom/google/android/gms/fitness/b/c/g;

    move-wide/from16 v10, p7

    move-object v12, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/fitness/b/c/g;-><init>(JJLcom/google/android/gms/fitness/b/c;)V

    move-object/from16 v0, p9

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, p7

    move-wide/from16 v6, p7

    .line 93
    goto :goto_1
.end method


# virtual methods
.method protected final a(Ljava/util/List;JJLjava/util/SortedSet;)V
    .locals 12

    .prologue
    .line 36
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/y;->a()V

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/o;

    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/fitness/b/c/u;->a(Ljava/util/List;IJJJLjava/util/SortedSet;)V

    .line 48
    return-void
.end method
