.class public final Lcom/google/android/maps/driveabout/e/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/f/b;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/f/b;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/x;->a:Lcom/google/android/maps/driveabout/f/b;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/x;->b:Z

    .line 135
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/google/android/maps/driveabout/e/d;)Lcom/google/android/maps/driveabout/e/aa;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v0, p1, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    .line 277
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/ab;

    .line 278
    :goto_0
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/ab;->f:Lcom/google/android/maps/driveabout/e/ab;

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/z;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/e/z;->a:Lcom/google/android/maps/driveabout/e/d;

    .line 284
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Lcom/google/android/maps/driveabout/f/e;

    .line 285
    array-length v0, v6

    new-array v7, v0, [I

    move v2, v1

    .line 287
    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_1

    .line 288
    array-length v0, v6

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/ab;

    .line 289
    iget-object v3, v0, Lcom/google/android/maps/driveabout/e/ab;->b:Lcom/google/android/maps/driveabout/f/e;

    aput-object v3, v6, v1

    .line 290
    iget v3, v0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    .line 291
    sub-int v0, v3, v2

    aput v0, v7, v1

    .line 287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto :goto_1

    .line 294
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/e/aa;

    invoke-direct {v0, v5, p1, v6, v7}, Lcom/google/android/maps/driveabout/e/aa;-><init>(Lcom/google/android/maps/driveabout/e/d;Lcom/google/android/maps/driveabout/e/d;[Lcom/google/android/maps/driveabout/f/e;[I)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/e/aa;
    .locals 19

    .prologue
    .line 153
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/e/x;->b:Z

    .line 155
    new-instance v8, Ljava/util/PriorityQueue;

    const/16 v2, 0x64

    new-instance v3, Lcom/google/android/maps/driveabout/e/y;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/e/y;-><init>()V

    invoke-direct {v8, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 157
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 159
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/e/d;

    .line 160
    new-instance v4, Lcom/google/android/maps/driveabout/e/z;

    iget v5, v2, Lcom/google/android/maps/driveabout/e/d;->h:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/maps/driveabout/e/z;-><init>(ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/d;)V

    .line 162
    iget-object v2, v2, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v8, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_0
    const/4 v4, 0x0

    .line 176
    const v3, 0x7fffffff

    .line 177
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/e/d;

    .line 178
    new-instance v6, Lcom/google/android/maps/driveabout/e/z;

    const v7, 0x7fffffff

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v2}, Lcom/google/android/maps/driveabout/e/z;-><init>(ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/d;)V

    .line 179
    iget-object v7, v2, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget v6, v2, Lcom/google/android/maps/driveabout/e/d;->h:I

    if-ge v6, v3, :cond_c

    .line 181
    iget-object v3, v2, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    .line 182
    iget v2, v2, Lcom/google/android/maps/driveabout/e/d;->h:I

    :goto_2
    move-object v4, v3

    move v3, v2

    .line 184
    goto :goto_1

    .line 185
    :cond_1
    if-nez v4, :cond_2

    .line 186
    const/4 v2, 0x0

    .line 259
    :goto_3
    return-object v2

    .line 190
    :cond_2
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->y()Lcom/google/android/maps/driveabout/util/m;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/m;->l()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v5

    mul-double v10, v2, v5

    .line 193
    const/4 v7, 0x0

    .line 199
    const v6, 0x7fffffff

    .line 201
    :cond_3
    :goto_4
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 202
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/e/x;->b:Z

    if-nez v2, :cond_5

    .line 205
    const/4 v7, 0x0

    .line 259
    :cond_4
    if-eqz v7, :cond_a

    invoke-static {v9, v7}, Lcom/google/android/maps/driveabout/e/x;->a(Ljava/util/Map;Lcom/google/android/maps/driveabout/e/d;)Lcom/google/android/maps/driveabout/e/aa;

    move-result-object v2

    goto :goto_3

    .line 210
    :cond_5
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/maps/driveabout/e/ab;

    .line 211
    iget-boolean v2, v3, Lcom/google/android/maps/driveabout/e/ab;->g:Z

    if-nez v2, :cond_3

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/google/android/maps/driveabout/e/ab;->g:Z

    .line 216
    if-eqz v3, :cond_b

    instance-of v2, v3, Lcom/google/android/maps/driveabout/e/z;

    if-eqz v2, :cond_b

    move-object v2, v3

    .line 217
    check-cast v2, Lcom/google/android/maps/driveabout/e/z;

    .line 218
    iget-object v5, v2, Lcom/google/android/maps/driveabout/e/z;->a:Lcom/google/android/maps/driveabout/e/d;

    iget-boolean v5, v5, Lcom/google/android/maps/driveabout/e/d;->a:Z

    if-nez v5, :cond_b

    .line 219
    iget v5, v3, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget-object v12, v2, Lcom/google/android/maps/driveabout/e/z;->a:Lcom/google/android/maps/driveabout/e/d;

    iget v12, v12, Lcom/google/android/maps/driveabout/e/d;->h:I

    add-int/2addr v5, v12

    .line 220
    if-ge v5, v6, :cond_b

    .line 224
    iget-object v2, v2, Lcom/google/android/maps/driveabout/e/z;->a:Lcom/google/android/maps/driveabout/e/d;

    move-object v6, v2

    .line 230
    :goto_5
    iget-object v12, v3, Lcom/google/android/maps/driveabout/e/ab;->b:Lcom/google/android/maps/driveabout/f/e;

    .line 231
    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/f/e;->c()I

    move-result v13

    .line 232
    const/4 v2, 0x0

    move v7, v2

    :goto_6
    if-ge v7, v13, :cond_9

    .line 233
    invoke-virtual {v12, v7}, Lcom/google/android/maps/driveabout/f/e;->a(I)Lcom/google/android/maps/driveabout/f/a;

    move-result-object v14

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/x;->a:Lcom/google/android/maps/driveabout/f/b;

    invoke-virtual {v14, v2}, Lcom/google/android/maps/driveabout/f/a;->a(Lcom/google/android/maps/driveabout/f/b;)Lcom/google/android/maps/driveabout/f/e;

    move-result-object v15

    .line 235
    if-nez v15, :cond_7

    .line 232
    :cond_6
    :goto_7
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6

    .line 238
    :cond_7
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/e/ab;

    .line 239
    if-nez v2, :cond_8

    .line 240
    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    const v16, 0x7fffffff

    .line 241
    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v17, v17, v10

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v15, v3, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(ILcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/e/ab;I)V

    .line 242
    invoke-interface {v9, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_8
    iget v15, v3, Lcom/google/android/maps/driveabout/e/ab;->c:I

    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/f/a;->a()I

    move-result v14

    add-int/2addr v14, v15

    .line 248
    iget v15, v2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    if-ge v14, v15, :cond_6

    .line 250
    iput v14, v2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    .line 251
    iget v15, v2, Lcom/google/android/maps/driveabout/e/ab;->d:I

    add-int/2addr v14, v15

    iput v14, v2, Lcom/google/android/maps/driveabout/e/ab;->e:I

    .line 252
    iput-object v3, v2, Lcom/google/android/maps/driveabout/e/ab;->f:Lcom/google/android/maps/driveabout/e/ab;

    .line 253
    iget v14, v2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    if-gt v14, v5, :cond_6

    .line 254
    invoke-virtual {v8, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    move-object v7, v6

    move v6, v5

    .line 258
    goto/16 :goto_4

    .line 259
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    move v5, v6

    move-object v6, v7

    goto :goto_5

    :cond_c
    move v2, v3

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/x;->b:Z

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "Searcher"

    const-string v1, "Stopping search"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/x;->b:Z

    .line 268
    return-void
.end method
