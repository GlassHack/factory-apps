.class public Lcom/google/android/maps/driveabout/nav/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/DataType;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/nav/ap;

.field private final b:Lcom/google/android/maps/driveabout/model/m;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/m;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ap;

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ap;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p1, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ao;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/nav/ao;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iget-object v0, p1, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    .line 177
    iget-object v0, p1, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    .line 178
    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    .line 181
    iget v0, p1, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    .line 182
    iget-object v0, p1, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/ap;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p3, v0

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    .line 143
    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    .line 144
    iput-object p3, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    .line 146
    iput v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    .line 147
    return-void

    :cond_1
    move-object p1, v0

    .line 142
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ao;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    const/4 v1, 0x2

    .line 155
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/google/android/maps/driveabout/util/f;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 156
    :goto_0
    const/4 v2, 0x3

    .line 157
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ap;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ao;->c(Lcom/google/googlenav/common/io/b/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    .line 159
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    .line 160
    return-void

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ao;->b(Lcom/google/googlenav/common/io/b/a;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ap;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ap;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/nav/ap;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/ap;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 343
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 348
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/b/a;->f(II)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-static {v4}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 350
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 354
    new-instance v1, Lcom/google/android/maps/driveabout/nav/ap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/nav/ap;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 361
    :goto_1
    return-object v0

    .line 357
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v1}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 359
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ap;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/nav/ap;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/common/io/b/a;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x77

    .line 378
    const/4 v0, 0x0

    .line 379
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/f;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 383
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    .line 195
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/m;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/nav/ap;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    if-ne p0, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 283
    goto :goto_0

    .line 285
    :cond_3
    check-cast p1, Lcom/google/android/maps/driveabout/nav/ao;

    .line 286
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    if-nez v2, :cond_4

    .line 287
    iget-object v2, p1, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    if-eqz v2, :cond_5

    move v0, v1

    .line 288
    goto :goto_0

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/nav/ap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 291
    goto :goto_0

    .line 293
    :cond_5
    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    iget v3, p1, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    if-nez v2, :cond_7

    .line 297
    iget-object v2, p1, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    if-eqz v2, :cond_8

    move v0, v1

    .line 298
    goto :goto_0

    .line 300
    :cond_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 301
    goto :goto_0

    .line 303
    :cond_8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 304
    iget-object v2, p1, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    .line 305
    goto :goto_0

    .line 307
    :cond_9
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 308
    goto :goto_0

    .line 310
    :cond_a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 311
    iget-object v2, p1, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v0, v1

    .line 312
    goto :goto_0

    .line 314
    :cond_b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 315
    goto :goto_0

    .line 317
    :cond_c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 318
    iget-object v2, p1, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    if-eqz v2, :cond_e

    move v0, v1

    .line 319
    goto :goto_0

    .line 321
    :cond_d
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 322
    goto/16 :goto_0

    .line 324
    :cond_e
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 325
    iget-object v2, p1, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 326
    goto/16 :goto_0

    .line 328
    :cond_f
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 329
    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    if-eqz v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->DESTINATION_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    .line 262
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 263
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    add-int/2addr v0, v2

    .line 264
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 265
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 266
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 267
    :goto_3
    add-int/2addr v0, v2

    .line 268
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 269
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 270
    :goto_5
    add-int/2addr v0, v1

    .line 271
    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->hashCode()I

    move-result v0

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/m;->hashCode()I

    move-result v0

    goto :goto_1

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ao;->e:Ljava/lang/String;

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public final i()Lcom/google/googlenav/common/io/b/a;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/h;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    if-eqz v1, :cond_1

    .line 247
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    .line 248
    invoke-static {v2}, Lcom/google/android/maps/driveabout/util/f;->a(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 249
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 252
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 255
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ao;->a:Lcom/google/android/maps/driveabout/nav/ap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ao;->b:Lcom/google/android/maps/driveabout/model/m;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ao;->f:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/ao;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/ao;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/ao;->g:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x33

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "[addr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " point:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method