.class public final Lcom/google/maps/api/android/lib6/gmm6/j/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/j/e;


# instance fields
.field private final b:Lcom/google/c/c/gi;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/ff;->f()Lcom/google/c/c/ff;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/j;->b:Lcom/google/c/c/gi;

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/j;->c:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Lcom/google/maps/api/android/lib6/gmm6/l/cd;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/ff;->g()Lcom/google/c/c/fg;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v1

    iget-object v5, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v5

    int-to-double v6, v5

    iget-object v5, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d()I

    move-result v5

    int-to-double v8, v5

    iget-object v5, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e()D

    move-result-wide v10

    div-double/2addr v8, v10

    const-wide v10, 0x40bb580000000000L    # 7000.0

    cmpl-double v5, v6, v10

    if-gez v5, :cond_0

    const-wide v6, 0x40bb580000000000L    # 7000.0

    cmpl-double v5, v8, v6

    if-gez v5, :cond_0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v6, v2, Lcom/google/c/c/fg;->a:Lcom/google/c/c/gi;

    invoke-static {v1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/google/c/c/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/google/c/c/fc;->a(Ljava/util/Collection;)Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/j;->c:Ljava/util/Set;

    iget-object v0, v2, Lcom/google/c/c/fg;->a:Lcom/google/c/c/gi;

    invoke-static {v0}, Lcom/google/c/c/ff;->a(Lcom/google/c/c/gi;)Lcom/google/c/c/ff;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/j;->b:Lcom/google/c/c/gi;

    return-void
.end method

.method public static a(Ljava/io/Reader;Lcom/google/maps/api/android/lib6/gmm6/l/cd;)Lcom/google/maps/api/android/lib6/gmm6/j/j;
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x3

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-ge v0, v1, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    aget-object v0, v6, v12

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v7

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/k/a;

    move-result-object v8

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/k/a;

    move-result-object v9

    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    if-nez v9, :cond_4

    :cond_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    array-length v0, v6

    if-le v0, v1, :cond_7

    aget-object v0, v6, v1

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a()I

    move-result v10

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b()I

    move-result v8

    invoke-static {v10, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a()I

    move-result v10

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b()I

    move-result v9

    invoke-static {v10, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v9

    array-length v10, v6

    sub-int/2addr v10, v0

    new-array v10, v10, [Ljava/lang/String;

    array-length v11, v10

    invoke-static {v6, v0, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    invoke-static {v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v6

    invoke-direct {v0, v7, v6, v2, v10}, Lcom/google/maps/api/android/lib6/gmm6/j/a;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/l/cl;Lcom/google/maps/api/android/lib6/gmm6/l/h;[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/j;

    invoke-direct {v0, v5, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/j;-><init>(Ljava/util/Collection;Lcom/google/maps/api/android/lib6/gmm6/l/cd;)V

    return-object v0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;
    .locals 3

    const/16 v2, 0xf

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v1

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/j;->b:Lcom/google/c/c/gi;

    invoke-interface {v1, v0}, Lcom/google/c/c/gi;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/j;->b:Lcom/google/c/c/gi;

    invoke-interface {v2, v1}, Lcom/google/c/c/gi;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a(Ljava/util/Collection;Lcom/google/maps/api/android/lib6/gmm6/l/q;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/j;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 0

    return-void
.end method
