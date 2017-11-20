.class public final Lcom/google/n/a/a/a/a/y;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2393
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 2394
    iput-object v0, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/y;->G:I

    .line 2395
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 2463
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 2464
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2466
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2468
    iget-object v1, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 2469
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2472
    :cond_0
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 2367
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 2453
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2454
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2455
    iget-object v0, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2456
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 2458
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 2459
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2407
    if-ne p1, p0, :cond_1

    .line 2435
    :cond_0
    :goto_0
    return v0

    .line 2410
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/y;

    if-nez v2, :cond_2

    move v0, v1

    .line 2411
    goto :goto_0

    .line 2413
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/y;

    .line 2414
    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2415
    iget-object v2, p1, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 2416
    goto :goto_0

    .line 2418
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2419
    goto :goto_0

    .line 2421
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 2422
    iget-object v2, p1, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 2423
    goto :goto_0

    .line 2425
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 2426
    goto :goto_0

    .line 2428
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    if-nez v2, :cond_7

    .line 2429
    iget-object v2, p1, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    if-eqz v2, :cond_0

    move v0, v1

    .line 2430
    goto :goto_0

    .line 2432
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2433
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2440
    iget-object v0, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 2443
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 2445
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 2447
    return v0

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2443
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 2445
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_2
.end method
