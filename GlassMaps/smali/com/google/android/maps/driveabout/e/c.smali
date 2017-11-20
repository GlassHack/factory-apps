.class public final Lcom/google/android/maps/driveabout/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/q;)I
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/q;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/c;->b(Lcom/google/android/maps/driveabout/e/q;)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->h()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/q;Ljava/util/List;)V
    .locals 13

    .prologue
    const/16 v10, 0x64

    const/4 v1, 0x0

    .line 119
    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/q;->a()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 120
    new-instance v0, Lcom/google/android/maps/driveabout/e/p;

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    move-object v2, p0

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/p;-><init>(ILcom/google/android/maps/driveabout/e/q;IIII)V

    .line 127
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v4, Lcom/google/android/maps/driveabout/e/p;

    const/4 v5, 0x1

    const/16 v9, 0xa

    move-object v6, p0

    move v7, v3

    move v8, v1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/maps/driveabout/e/p;-><init>(ILcom/google/android/maps/driveabout/e/q;IIII)V

    .line 136
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v6, Lcom/google/android/maps/driveabout/e/p;

    const/4 v7, 0x2

    const/16 v12, 0x63

    move-object v8, p0

    move v9, v3

    move v11, v1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/maps/driveabout/e/p;-><init>(ILcom/google/android/maps/driveabout/e/q;IIII)V

    .line 145
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/LinkedList;)V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    .line 157
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 161
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 204
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 205
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    move-object v1, v0

    .line 206
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    :goto_1
    move-object v2, v1

    move-object v1, v0

    .line 207
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    .line 209
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v4

    if-nez v4, :cond_2

    .line 210
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 211
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 212
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v4

    invoke-static {v2, v4}, Lcom/google/android/maps/driveabout/e/c;->a(Lcom/google/android/maps/driveabout/e/p;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    const-string v4, ""

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)V

    .line 216
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 221
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_1

    .line 224
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    .line 225
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_6

    .line 226
    :cond_1
    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/e/p;->a(Z)V

    move-object v0, v1

    move-object v1, v2

    :cond_2
    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 232
    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 205
    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 206
    goto :goto_1

    .line 233
    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/p;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/p;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 320
    if-nez v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    if-ne p1, v1, :cond_3

    .line 324
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    .line 325
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_4

    .line 329
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/e/q;)Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 82
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/c;->a(Lcom/google/android/maps/driveabout/e/q;Ljava/util/List;)V

    .line 89
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/c;->a(Ljava/util/LinkedList;)V

    .line 90
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/c;->b(Ljava/util/LinkedList;)V

    .line 91
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/c;->a(Ljava/util/List;)V

    .line 92
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/c;->b(Ljava/util/List;)V

    .line 93
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/c;->c(Ljava/util/List;)V

    .line 94
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/c;->d(Ljava/util/List;)V

    .line 95
    return-object v0
.end method

.method private static b(Ljava/util/LinkedList;)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 173
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 183
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/p;->b(I)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/p;->a(I)V

    .line 188
    :cond_0
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 245
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 246
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    :goto_0
    move-object v1, v0

    .line 247
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    .line 249
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v3

    if-nez v3, :cond_0

    .line 250
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->d()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v3

    const/16 v4, 0x320

    if-ge v3, v4, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->d()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/e/p;->b(I)V

    .line 253
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 256
    goto :goto_1

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :cond_2
    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 269
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 270
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    .line 272
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 276
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 277
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 280
    :cond_2
    return-void
.end method

.method private static d(Ljava/util/List;)V
    .locals 8

    .prologue
    .line 289
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 290
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/maps/driveabout/e/p;

    .line 296
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/p;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/p;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/p;->d()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v0

    const/16 v1, 0xa28

    if-le v0, v1, :cond_0

    .line 300
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 302
    new-instance v0, Lcom/google/android/maps/driveabout/e/p;

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/p;->f()Lcom/google/android/maps/driveabout/e/q;

    move-result-object v2

    .line 304
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/p;->g()I

    move-result v3

    const/16 v4, -0x960

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/p;-><init>(ILcom/google/android/maps/driveabout/e/q;IIII)V

    .line 302
    invoke-interface {v7, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 308
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method
