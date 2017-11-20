.class final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field final c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field final d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field final e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field final f:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/p;Ljava/util/List;Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Ljava/util/List;)I

    move-result v1

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    invoke-direct {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    invoke-direct {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->d:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->e:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v6

    move-object/from16 v0, p4

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->c:Z

    if-eqz v2, :cond_0

    const/high16 v7, 0x10000

    :goto_1
    move-object/from16 v0, p4

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->c:Z

    if-eqz v2, :cond_1

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->g:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->g:F

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v2

    :goto_3
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/i;

    move-result-object v1

    move-object/from16 v0, p4

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->c:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->b:F

    :goto_4
    move-object/from16 v0, p4

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->c:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->a:F

    :goto_5
    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual/range {v1 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FFLcom/google/maps/api/android/lib6/gmm6/l/h;IIILcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/high16 v8, 0x10000

    goto :goto_2

    :cond_2
    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->a:F

    goto :goto_4

    :cond_3
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->b:F

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_6

    :cond_5
    move-object/from16 v0, p4

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->f:Z

    if-eqz v1, :cond_6

    if-lez v2, :cond_6

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/ch;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;)V

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    :cond_7
    move-object/from16 v0, p4

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->h:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->f:I

    return-void

    :cond_8
    move-object v2, v1

    goto/16 :goto_3
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/ch;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;)V
    .locals 11

    const/4 v6, 0x0

    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    iget v2, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->d:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    iget v3, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->e:F

    float-to-int v3, v3

    add-int/2addr v3, v2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v9

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->c()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v3, v1, v6

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->c()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/a;->c()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v5, 0x2

    aget-object v5, v1, v5

    move v1, v6

    move v7, v6

    :goto_1
    if-ge v1, v8, :cond_2

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v10, v3, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v10, v4, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v10, v5, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/d;->c:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x10000

    :goto_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, v0, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(III)V

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2
.end method
