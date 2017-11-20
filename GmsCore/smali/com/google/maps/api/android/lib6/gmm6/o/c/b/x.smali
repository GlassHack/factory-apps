.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field final b:[Ljava/lang/String;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ca;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v0

    instance-of v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a(Lcom/google/maps/api/android/lib6/gmm6/l/de;)V

    move-object v0, v1

    :goto_1
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->b:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/de;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(I)[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;
    .locals 18

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;

    invoke-direct/range {v17 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v13, v2

    move-object v14, v6

    move-object v2, v1

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    iget-object v1, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->e:Lcom/google/maps/api/android/lib6/a/a/a;

    if-eqz v1, :cond_0

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;

    invoke-direct {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;-><init>()V

    iget-object v1, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;)Z

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v12}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v9

    iget-object v10, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->d:Ljava/util/HashSet;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;B)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_4

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;

    invoke-direct {v7, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;)V

    if-eqz v2, :cond_3

    invoke-virtual {v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-object v2, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;B)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a()V

    iget-object v1, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :cond_2
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->d:Ljava/util/HashSet;

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v2, v7

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v11, 0x0

    move-object/from16 v8, v17

    move-object v9, v14

    move-object v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;B)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a()V

    iget-object v1, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v12, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->d:Ljava/util/HashSet;

    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v13, v1

    move-object v14, v6

    goto/16 :goto_0

    :cond_5
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v11, 0x0

    move-object/from16 v8, v17

    move-object v9, v14

    move-object v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;B)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/x;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;B)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    goto :goto_3

    :cond_9
    move-object v1, v13

    move-object v6, v14

    goto :goto_2
.end method
