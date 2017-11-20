.class public final Lcom/google/maps/api/android/lib6/gmm6/l/e;
.super Lcom/google/maps/api/android/lib6/gmm6/l/by;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/Set;

.field private final l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:J


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/by;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->d:I

    move-object/from16 v0, p1

    iget-byte v6, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->e:B

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->g:I

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    move-wide/from16 v16, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/l/by;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;IBI[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/l/av;[Lcom/google/maps/api/android/lib6/gmm6/l/bt;JJ)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->b:Ljava/util/Set;

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->o:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->l:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->l()Lcom/google/maps/api/android/lib6/gmm6/l/ca;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->m:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->m:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->o:J

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/by;Lcom/google/maps/api/android/lib6/gmm6/l/by;)Lcom/google/maps/api/android/lib6/gmm6/l/by;
    .locals 11

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_16

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_16

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->n()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    :goto_1
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->n()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/by;)Lcom/google/maps/api/android/lib6/gmm6/l/e;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->b:Ljava/util/Set;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    :goto_2
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->n()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i:[Lcom/google/maps/api/android/lib6/gmm6/l/bt;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i:[Lcom/google/maps/api/android/lib6/gmm6/l/bt;

    aget-object v0, v0, v1

    :goto_3
    instance-of v8, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bu;

    if-eqz v8, :cond_3

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/bu;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    instance-of v8, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bw;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->b:Ljava/util/Set;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/bw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bw;->a()Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    instance-of v8, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bv;

    if-eqz v8, :cond_5

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/bv;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    instance-of v8, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bx;

    if-eqz v8, :cond_6

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/bx;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong modifier: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->b:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->b()Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/bu;

    move v0, v4

    :goto_7
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->e()[I

    move-result-object v8

    array-length v8, v8

    if-ge v0, v8, :cond_a

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->e()[I

    move-result-object v8

    aget v9, v8, v0

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->m:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->c()I

    move-result v0

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_d

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->l:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->c()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_c

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->d()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_b
    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->c()I

    move-result v0

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v0, v8, :cond_e

    const-string v0, "MutableVectorTile"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid plane index on tile "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/google/maps/api/android/lib6/gmm6/l/by;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/maps/api/android/lib6/gmm6/l/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_8

    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/bv;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bv;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i()[Ljava/lang/String;

    move-result-object v0

    :goto_a
    array-length v1, v0

    if-ge v4, v1, :cond_13

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->n:Ljava/util/List;

    aget-object v5, v0, v4

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->n:Ljava/util/List;

    aget-object v5, v0, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->m:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->o:J

    goto/16 :goto_1

    :cond_14
    instance-of v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->o:J

    goto/16 :goto_1

    :cond_15
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bz;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->d:I

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j:I

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->c:I

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->g:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->h:[Ljava/lang/String;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->g:I

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->i:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->f:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->k:J

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->a()Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-result-object p0

    goto/16 :goto_1

    :cond_16
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/by;)Lcom/google/maps/api/android/lib6/gmm6/l/e;
    .locals 1

    instance-of v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/by;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/cp;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    return-object v0
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->n:Ljava/util/List;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final j()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final l()Lcom/google/maps/api/android/lib6/gmm6/l/ca;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/e;B)V

    return-object v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->o:J

    return-wide v0
.end method
