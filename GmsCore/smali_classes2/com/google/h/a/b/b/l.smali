.class public final Lcom/google/h/a/b/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/j;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/util/LinkedList;

.field private c:Lcom/google/h/a/b/b/m;

.field private final d:I

.field private final e:D

.field private final f:I

.field private g:Lcom/google/h/a/b/b/a/b;

.field private h:Lcom/google/h/a/b/b/a/b;

.field private i:Lcom/google/h/a/b/b/a/b;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/h/a/b/b/l;->d:I

    .line 80
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/google/h/a/b/b/l;->e:D

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/h/a/b/b/l;->f:I

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/j;

    .line 88
    iget-object v2, p0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    new-instance v3, Lcom/google/h/a/b/b/m;

    invoke-direct {v3, v0}, Lcom/google/h/a/b/b/m;-><init>(Lcom/google/h/a/b/b/j;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    iput-object v4, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    .line 92
    iput-object v4, p0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    .line 93
    iput-object v4, p0, Lcom/google/h/a/b/b/l;->h:Lcom/google/h/a/b/b/a/b;

    .line 94
    return-void
.end method

.method private static a(Lcom/google/h/a/b/b/j;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 313
    const-wide v2, -0x10000000000001L

    move v0, v1

    :goto_0
    iget v4, p2, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v4, :cond_1

    iget-object v4, p2, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v4, v4, v0

    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    move-wide v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/google/h/a/b/b/a/b;->b:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    .line 315
    const-wide v4, 0x42d6bcc41e900000L    # 1.0E14

    mul-double/2addr v2, v2

    div-double v2, v4, v2

    .line 316
    invoke-interface {p0}, Lcom/google/h/a/b/b/j;->b()Lcom/google/h/a/b/b/a/b;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/google/h/a/b/b/a/b;->b()V

    .line 318
    :goto_1
    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ge v1, v4, :cond_2

    .line 319
    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_2
    invoke-interface {p0}, Lcom/google/h/a/b/b/j;->a()Lcom/google/h/a/b/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/h/a/b/b/a/b;->b()V

    .line 328
    invoke-interface {p0, p1, p2, p3}, Lcom/google/h/a/b/b/j;->b(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 329
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 271
    .line 272
    const/4 v1, -0x1

    .line 273
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/m;

    .line 274
    iget v5, v0, Lcom/google/h/a/b/b/m;->a:I

    if-le v5, v1, :cond_2

    .line 275
    iget v1, v0, Lcom/google/h/a/b/b/m;->a:I

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 278
    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    if-ne v2, v0, :cond_1

    .line 287
    iput-object v3, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    .line 289
    :cond_1
    return-void

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private d()Lcom/google/h/a/b/b/m;
    .locals 6

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    iget v0, v0, Lcom/google/h/a/b/b/m;->a:I

    iget v1, p0, Lcom/google/h/a/b/b/l;->f:I

    if-le v0, v1, :cond_2

    .line 337
    :cond_0
    const/4 v2, 0x0

    .line 338
    const v1, 0x7fffffff

    .line 339
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/m;

    .line 340
    iget v4, v0, Lcom/google/h/a/b/b/m;->a:I

    if-ge v4, v1, :cond_3

    .line 341
    iget v1, v0, Lcom/google/h/a/b/b/m;->a:I

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 344
    goto :goto_0

    .line 346
    :cond_1
    iput-object v2, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    return-object v0

    :cond_3
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/h/a/b/b/a/b;
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/h/a/b/b/l;->d()Lcom/google/h/a/b/b/m;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v0, v0, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    invoke-interface {v0}, Lcom/google/h/a/b/b/j;->a()Lcom/google/h/a/b/b/a/b;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 190
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/m;

    .line 192
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 193
    iget-object v2, p0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/m;

    .line 198
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/h/a/b/b/m;->a:I

    .line 199
    iget-object v1, v0, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    invoke-interface {v1, p1, p2}, Lcom/google/h/a/b/b/j;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 200
    iput-object v0, p0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    .line 201
    iget-object v1, p0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public final a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/m;

    .line 107
    iget-object v0, v0, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/h/a/b/b/j;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public final b()Lcom/google/h/a/b/b/a/b;
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/h/a/b/b/l;->d()Lcom/google/h/a/b/b/m;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    iget-object v0, v0, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    invoke-interface {v0}, Lcom/google/h/a/b/b/j;->b()Lcom/google/h/a/b/b/a/b;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 20

    .prologue
    .line 124
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    iget v6, v6, Lcom/google/h/a/b/b/a/b;->a:I

    if-eq v6, v4, :cond_1

    :cond_0
    new-instance v6, Lcom/google/h/a/b/b/a/b;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    new-instance v6, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v6, v4, v4}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/h/a/b/b/l;->h:Lcom/google/h/a/b/b/a/b;

    new-instance v6, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v6, v4, v5}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/h/a/b/b/l;->i:Lcom/google/h/a/b/b/a/b;

    .line 126
    :cond_1
    const/4 v5, 0x0

    .line 127
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 128
    const-wide/16 v6, 0x0

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v14

    .line 132
    :goto_0
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 133
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/h/a/b/b/m;

    .line 135
    iget-object v8, v4, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    invoke-interface {v8}, Lcom/google/h/a/b/b/j;->a()Lcom/google/h/a/b/b/a/b;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/google/h/a/b/b/a/d;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/google/h/a/b/b/a/d;->e(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/h/a/b/b/l;->g:Lcom/google/h/a/b/b/a/b;

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v15, v9, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v8, v15, :cond_2

    iget-object v15, v9, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v16, v15, v8

    mul-double v16, v16, v16

    add-double v12, v12, v16

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 140
    iget v12, v4, Lcom/google/h/a/b/b/m;->a:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v4, Lcom/google/h/a/b/b/m;->a:I

    .line 141
    iget v12, v4, Lcom/google/h/a/b/b/m;->a:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/h/a/b/b/l;->d:I

    if-le v12, v13, :cond_4

    .line 143
    invoke-interface {v14}, Ljava/util/ListIterator;->remove()V

    .line 144
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    if-ne v4, v8, :cond_3

    .line 145
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/h/a/b/b/l;->c:Lcom/google/h/a/b/b/m;

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_4
    cmpg-double v12, v8, v10

    if-gez v12, :cond_b

    .line 151
    iget-object v5, v4, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    invoke-interface {v5}, Lcom/google/h/a/b/b/j;->b()Lcom/google/h/a/b/b/a/b;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/l;->i:Lcom/google/h/a/b/b/a/b;

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/google/h/a/b/b/a/d;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/l;->i:Lcom/google/h/a/b/b/a/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/l;->h:Lcom/google/h/a/b/b/a/b;

    move-object/from16 v0, p2

    invoke-static {v5, v0, v6}, Lcom/google/h/a/b/b/a/d;->c(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/h/a/b/b/l;->h:Lcom/google/h/a/b/b/a/b;

    iget v5, v10, Lcom/google/h/a/b/b/a/b;->a:I

    iget v6, v10, Lcom/google/h/a/b/b/a/b;->b:I

    if-eq v5, v6, :cond_5

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Matrix must be square to take the trace but is size %d x %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v10, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v10, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v11, v10, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v5, v11, :cond_6

    iget-object v11, v10, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v12, v11, v5

    add-double/2addr v6, v12

    iget v11, v10, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v5, v11

    goto :goto_2

    :cond_6
    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/h/a/b/b/a/b;->a:I

    int-to-double v10, v5

    div-double/2addr v6, v10

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-object v8, v4

    move-wide/from16 v4, v18

    :goto_3
    move-wide v10, v6

    move-wide v6, v4

    move-object v5, v8

    .line 154
    goto/16 :goto_0

    .line 156
    :cond_7
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/h/a/b/b/l;->e:D

    cmpl-double v4, v10, v8

    if-lez v4, :cond_a

    mul-double v8, v10, v10

    cmpl-double v4, v8, v6

    if-lez v4, :cond_a

    .line 160
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/google/h/a/b/b/l;->c()V

    .line 165
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/h/a/b/b/m;

    .line 166
    const/4 v5, 0x0

    iput v5, v4, Lcom/google/h/a/b/b/m;->a:I

    .line 167
    iget-object v5, v4, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v2}, Lcom/google/h/a/b/b/l;->a(Lcom/google/h/a/b/b/j;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/l;->a:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 174
    :goto_4
    return-void

    .line 171
    :cond_a
    iget-object v4, v5, Lcom/google/h/a/b/b/m;->b:Lcom/google/h/a/b/b/j;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcom/google/h/a/b/b/j;->b(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 172
    const/4 v4, 0x0

    iput v4, v5, Lcom/google/h/a/b/b/m;->a:I

    goto :goto_4

    :cond_b
    move-object v8, v5

    move-wide v4, v6

    move-wide v6, v10

    goto :goto_3
.end method
