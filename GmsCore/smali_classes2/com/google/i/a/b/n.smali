.class public final Lcom/google/i/a/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i/a/b/h;
.implements Lcom/google/i/a/b/j;


# static fields
.field static final a:J

.field static final b:Lcom/google/i/a/b/o;

.field private static final i:Lcom/google/i/a/b/n;


# instance fields
.field c:Lcom/google/i/a/b/s;

.field d:Lcom/google/i/a/b/i;

.field e:Lcom/google/i/a/b/k;

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/util/Set;

.field private j:Lcom/google/android/location/k/b;

.field private k:Lcom/google/android/location/k/e;

.field private l:Lcom/google/android/location/k/j;

.field private m:Lcom/google/android/location/k/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/google/i/a/b/n;

    invoke-direct {v0}, Lcom/google/i/a/b/n;-><init>()V

    sput-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/i/a/b/n;->a:J

    .line 38
    new-instance v0, Lcom/google/i/a/b/o;

    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aJ:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    sput-object v0, Lcom/google/i/a/b/n;->b:Lcom/google/i/a/b/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/k/j;Lcom/google/android/location/k/f;[B)Lcom/google/i/a/b/n;
    .locals 8

    .prologue
    const/16 v3, 0x200

    .line 101
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    iput-object p0, v0, Lcom/google/i/a/b/n;->j:Lcom/google/android/location/k/b;

    .line 102
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    iput-object p1, v0, Lcom/google/i/a/b/n;->k:Lcom/google/android/location/k/e;

    .line 103
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    iput-object p3, v0, Lcom/google/i/a/b/n;->m:Lcom/google/android/location/k/f;

    .line 104
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    iput-object p2, v0, Lcom/google/i/a/b/n;->l:Lcom/google/android/location/k/j;

    .line 106
    sget-object v7, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    new-instance v0, Lcom/google/i/a/b/s;

    sget-object v1, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    const/4 v2, 0x1

    const/16 v6, 0x800

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/i/a/b/s;-><init>(Lcom/google/i/a/b/r;IIIII)V

    iput-object v0, v7, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    .line 112
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    sget-object v1, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    invoke-static {v1, p4}, Lcom/google/i/a/b/i;->a(Lcom/google/i/a/b/h;[B)Lcom/google/i/a/b/i;

    move-result-object v1

    iput-object v1, v0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    .line 113
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    sget-object v1, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    invoke-static {v1}, Lcom/google/i/a/b/k;->a(Lcom/google/i/a/b/j;)Lcom/google/i/a/b/k;

    move-result-object v1

    iput-object v1, v0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    .line 115
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/i/a/b/n;->f:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/i/a/b/n;->g:I

    .line 117
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/google/i/a/b/n;->h:Ljava/util/Set;

    .line 119
    sget-object v0, Lcom/google/i/a/b/n;->i:Lcom/google/i/a/b/n;

    return-object v0
.end method

.method private static a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;Lcom/google/i/a/b/a;I)V
    .locals 6

    .prologue
    .line 514
    invoke-virtual {p0, p3}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    .line 515
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 516
    invoke-virtual {p0, p3, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 517
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v4

    .line 518
    invoke-virtual {p1, v4, v3}, Lcom/google/i/a/b/q;->a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)V

    .line 519
    iget-boolean v0, p2, Lcom/google/i/a/b/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/i/a/b/a;->c:Ljava/util/List;

    invoke-virtual {p2, v4}, Lcom/google/i/a/b/a;->a(Lcom/google/g/a/b/b/a;)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/q;

    invoke-virtual {v0, v4, v3}, Lcom/google/i/a/b/q;->a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)V

    :cond_0
    iget-boolean v0, p2, Lcom/google/i/a/b/a;->g:Z

    .line 515
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 521
    :cond_1
    return-void
.end method

.method private b(Lcom/google/g/a/b/b/a;)Z
    .locals 8

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    .line 536
    iget-object v3, p0, Lcom/google/i/a/b/n;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 537
    iput-object v2, p0, Lcom/google/i/a/b/n;->f:Ljava/lang/String;

    .line 538
    iget-object v2, p0, Lcom/google/i/a/b/n;->f:Ljava/lang/String;

    const-string v3, "(?=[^0-9.-])"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x76

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/i/a/b/n;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 542
    :cond_2
    return v0

    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 472
    packed-switch p1, :pswitch_data_0

    .line 485
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 474
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 483
    :pswitch_2
    const/16 v0, 0x40

    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/g/a/b/b/c;)I
    .locals 2

    .prologue
    const/16 v0, 0x10

    .line 389
    sget-object v1, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    if-ne p1, v1, :cond_1

    .line 390
    const/4 v0, 0x1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    sget-object v1, Lcom/google/android/location/n/a;->aF:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 395
    sget-object v1, Lcom/google/android/location/n/a;->aG:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 398
    sget-object v1, Lcom/google/android/location/n/a;->aH:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 401
    sget-object v0, Lcom/google/android/location/n/a;->aI:Lcom/google/g/a/b/b/c;

    if-ne p1, v0, :cond_2

    .line 402
    const/16 v0, 0x40

    goto :goto_0

    .line 404
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;)I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 260
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 263
    const/4 v0, 0x0

    .line 264
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 265
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/o;

    .line 267
    iget-object v3, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    invoke-virtual {v3, v0}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 270
    if-nez v3, :cond_3

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 274
    iget-object v3, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v3, v3, Lcom/google/i/a/b/i;->e:Lcom/google/i/a/b/a;

    invoke-virtual {v3, v0}, Lcom/google/i/a/b/a;->a(Lcom/google/i/a/b/o;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 276
    :cond_1
    iget-object v3, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v3, v3, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    invoke-virtual {v3, v0}, Lcom/google/i/a/b/q;->b(Lcom/google/i/a/b/o;)V

    .line 278
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {v3, v6}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 283
    iget-object v0, v0, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :goto_1
    invoke-virtual {v3, v7}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v7}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 287
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 298
    :cond_5
    return v1
.end method

.method public final a()Lcom/google/android/location/k/e;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/i/a/b/n;->k:Lcom/google/android/location/k/e;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 5

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/google/i/a/b/n;->b(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/i/a/b/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v2, v0, Lcom/google/i/a/b/i;->a:Lcom/google/i/a/b/a;

    sget-object v3, Lcom/google/i/a/b/n;->b:Lcom/google/i/a/b/o;

    iget-boolean v0, v2, Lcom/google/i/a/b/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/i/a/b/a;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/i/a/b/a;->b(Lcom/google/i/a/b/o;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/q;

    invoke-virtual {v0, v3, v1}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;Lcom/google/g/a/b/b/a;)V

    :cond_0
    iget-boolean v0, v2, Lcom/google/i/a/b/a;->g:Z

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    iget-object v1, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v1, v1, Lcom/google/i/a/b/i;->b:Lcom/google/i/a/b/a;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/i/a/b/n;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;Lcom/google/i/a/b/a;I)V

    .line 309
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    iget-object v1, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v1, v1, Lcom/google/i/a/b/i;->c:Lcom/google/i/a/b/a;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/google/i/a/b/n;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;Lcom/google/i/a/b/a;I)V

    .line 312
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    iget-object v1, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v1, v1, Lcom/google/i/a/b/i;->d:Lcom/google/i/a/b/a;

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/google/i/a/b/n;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;Lcom/google/i/a/b/a;I)V

    .line 315
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    iget-object v1, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v1, v1, Lcom/google/i/a/b/i;->e:Lcom/google/i/a/b/a;

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/google/i/a/b/n;->a(Lcom/google/g/a/b/b/a;Lcom/google/i/a/b/q;Lcom/google/i/a/b/a;I)V

    .line 318
    return-void
.end method

.method public final a(Lcom/google/i/a/b/q;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->a:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aF:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;)V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aG:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_3

    .line 345
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aH:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_4

    .line 348
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;)V

    goto :goto_0

    .line 349
    :cond_4
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aI:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/i/a/b/q;Lcom/google/i/a/b/q;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_1

    .line 323
    sget-object v0, Lcom/google/i/a/b/n;->b:Lcom/google/i/a/b/o;

    invoke-virtual {p1, v0}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i/a/b/n;->b(Lcom/google/g/a/b/b/a;)Z

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aF:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1, p2}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;Lcom/google/i/a/b/q;)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aG:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_3

    .line 328
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1, p2}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;Lcom/google/i/a/b/q;)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aH:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_4

    .line 330
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1, p2}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;Lcom/google/i/a/b/q;)V

    goto :goto_0

    .line 331
    :cond_4
    iget-object v0, p1, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    sget-object v1, Lcom/google/android/location/n/a;->aI:Lcom/google/g/a/b/b/c;

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->e:Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1, p2}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;Lcom/google/i/a/b/q;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x2

    .line 194
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcom/google/i/a/b/n;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    iget-object v3, p0, Lcom/google/i/a/b/n;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/i/a/b/n;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/o;

    .line 204
    iget-object v2, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v2, v2, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    invoke-virtual {v2, v0}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;)Lcom/google/g/a/b/b/a;

    move-result-object v4

    .line 207
    if-nez v4, :cond_3

    .line 210
    iget-object v2, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v2, v2, Lcom/google/i/a/b/i;->c:Lcom/google/i/a/b/a;

    invoke-virtual {v2, v0}, Lcom/google/i/a/b/a;->a(Lcom/google/i/a/b/o;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v2, v2, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v2, v2, Lcom/google/i/a/b/s;->c:Lcom/google/i/a/b/q;

    invoke-virtual {v2, v0}, Lcom/google/i/a/b/q;->b(Lcom/google/i/a/b/o;)V

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {v4, v12}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v5

    move v2, v1

    .line 218
    :goto_2
    if-ge v2, v5, :cond_1

    .line 219
    new-instance v6, Lcom/google/i/a/b/o;

    invoke-virtual {v4, v12, v2}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    .line 223
    iget-object v0, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    invoke-virtual {v0, v6}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;)Lcom/google/g/a/b/b/a;

    move-result-object v7

    .line 226
    if-nez v7, :cond_6

    .line 229
    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v0, v0, Lcom/google/i/a/b/i;->d:Lcom/google/i/a/b/a;

    invoke-virtual {v0, v6}, Lcom/google/i/a/b/a;->a(Lcom/google/i/a/b/o;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->d:Lcom/google/i/a/b/q;

    invoke-virtual {v0, v6}, Lcom/google/i/a/b/q;->b(Lcom/google/i/a/b/o;)V

    .line 218
    :cond_5
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 234
    :cond_6
    invoke-virtual {v7, v12}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v8

    .line 236
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(I)V

    move v0, v1

    .line 237
    :goto_4
    if-ge v0, v8, :cond_7

    .line 238
    new-instance v10, Lcom/google/i/a/b/o;

    invoke-virtual {v7, v12, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 241
    :cond_7
    invoke-interface {p2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 246
    :cond_8
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 149
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 150
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v1, p0, Lcom/google/i/a/b/n;->g:I

    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->aJ:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    invoke-virtual {v3, v8, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    move-result-object v1

    .line 155
    iget-object v3, p0, Lcom/google/i/a/b/n;->c:Lcom/google/i/a/b/s;

    iget-object v3, v3, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    new-instance v4, Lcom/google/i/a/b/o;

    invoke-direct {v4, v1}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-virtual {v3, v4}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 157
    if-nez v3, :cond_3

    .line 159
    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v3, v0, Lcom/google/i/a/b/i;->b:Lcom/google/i/a/b/a;

    iget-boolean v0, v3, Lcom/google/i/a/b/a;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/google/i/a/b/a;->b:Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/google/i/a/b/a;->a(Lcom/google/g/a/b/b/a;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/q;

    invoke-virtual {v0, v1}, Lcom/google/i/a/b/q;->a(Lcom/google/g/a/b/b/a;)V

    :cond_1
    iget-boolean v0, v3, Lcom/google/i/a/b/a;->g:Z

    if-nez v0, :cond_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->b:Lcom/google/i/a/b/q;

    invoke-virtual {v0, v1}, Lcom/google/i/a/b/q;->a(Lcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v3, v8}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v4

    .line 166
    if-lez v4, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 172
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 173
    new-instance v6, Lcom/google/i/a/b/o;

    invoke-virtual {v3, v8, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    .line 175
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {v1, v8}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    :cond_5
    return-void
.end method

.method public final b(I)I
    .locals 1

    .prologue
    const/16 v0, 0x40

    .line 496
    packed-switch p1, :pswitch_data_0

    .line 508
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 498
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    :pswitch_2
    const/16 v0, 0x100

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lcom/google/g/a/b/b/c;)I
    .locals 2

    .prologue
    const/16 v0, 0x200

    .line 409
    sget-object v1, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    if-ne p1, v1, :cond_1

    .line 410
    const/4 v0, 0x1

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    sget-object v1, Lcom/google/android/location/n/a;->aF:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 415
    sget-object v1, Lcom/google/android/location/n/a;->aG:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 418
    sget-object v1, Lcom/google/android/location/n/a;->aH:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 421
    sget-object v0, Lcom/google/android/location/n/a;->aI:Lcom/google/g/a/b/b/c;

    if-ne p1, v0, :cond_2

    .line 422
    const/16 v0, 0x800

    goto :goto_0

    .line 424
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/location/k/j;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/i/a/b/n;->l:Lcom/google/android/location/k/j;

    return-object v0
.end method

.method public final c(Lcom/google/g/a/b/b/c;)I
    .locals 2

    .prologue
    const/16 v0, 0x40

    .line 429
    sget-object v1, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    if-ne p1, v1, :cond_1

    .line 430
    const/4 v0, 0x1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    sget-object v1, Lcom/google/android/location/n/a;->aF:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 435
    sget-object v1, Lcom/google/android/location/n/a;->aG:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 439
    sget-object v1, Lcom/google/android/location/n/a;->aH:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 442
    sget-object v0, Lcom/google/android/location/n/a;->aI:Lcom/google/g/a/b/b/c;

    if-ne p1, v0, :cond_2

    .line 443
    const/16 v0, 0x100

    goto :goto_0

    .line 445
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/location/k/f;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/i/a/b/n;->m:Lcom/google/android/location/k/f;

    return-object v0
.end method

.method public final d(Lcom/google/g/a/b/b/c;)I
    .locals 2

    .prologue
    const/16 v0, 0x40

    .line 450
    sget-object v1, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    if-ne p1, v1, :cond_1

    .line 451
    const/4 v0, 0x1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    sget-object v1, Lcom/google/android/location/n/a;->aF:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 457
    sget-object v1, Lcom/google/android/location/n/a;->aG:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 461
    sget-object v1, Lcom/google/android/location/n/a;->aH:Lcom/google/g/a/b/b/c;

    if-eq p1, v1, :cond_0

    .line 464
    sget-object v0, Lcom/google/android/location/n/a;->aI:Lcom/google/g/a/b/b/c;

    if-ne p1, v0, :cond_2

    .line 465
    const/16 v0, 0x100

    goto :goto_0

    .line 467
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 491
    sget-wide v0, Lcom/google/i/a/b/n;->a:J

    return-wide v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    invoke-virtual {v0}, Lcom/google/i/a/b/i;->a()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    invoke-virtual {v0}, Lcom/google/i/a/b/k;->a()V

    .line 133
    :cond_1
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/i/a/b/n;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/i/a/b/n;->d:Lcom/google/i/a/b/i;

    iget-object v0, v0, Lcom/google/i/a/b/i;->a:Lcom/google/i/a/b/a;

    sget-object v1, Lcom/google/i/a/b/n;->b:Lcom/google/i/a/b/o;

    invoke-virtual {v0, v1}, Lcom/google/i/a/b/a;->a(Lcom/google/i/a/b/o;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/i/a/b/n;->e:Lcom/google/i/a/b/k;

    iget-object v0, v0, Lcom/google/i/a/b/k;->a:Lcom/google/i/a/b/s;

    iget-object v0, v0, Lcom/google/i/a/b/s;->a:Lcom/google/i/a/b/q;

    sget-object v1, Lcom/google/i/a/b/n;->b:Lcom/google/i/a/b/o;

    invoke-virtual {v0, v1}, Lcom/google/i/a/b/q;->b(Lcom/google/i/a/b/o;)V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/google/i/a/b/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/google/android/location/k/b;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/i/a/b/n;->j:Lcom/google/android/location/k/b;

    return-object v0
.end method
