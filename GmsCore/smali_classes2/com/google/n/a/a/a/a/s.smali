.class public final Lcom/google/n/a/a/a/a/s;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 397
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 398
    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/s;->G:I

    .line 399
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 493
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 494
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 499
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 503
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 507
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 510
    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 365
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

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 477
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 478
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 486
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 488
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 489
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 413
    if-ne p1, p0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/s;

    if-nez v2, :cond_2

    move v0, v1

    .line 417
    goto :goto_0

    .line 419
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/s;

    .line 420
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 421
    iget-object v2, p1, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 422
    goto :goto_0

    .line 424
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 425
    goto :goto_0

    .line 427
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 428
    iget-object v2, p1, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 429
    goto :goto_0

    .line 431
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 432
    goto :goto_0

    .line 434
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 435
    iget-object v2, p1, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 436
    goto :goto_0

    .line 438
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 439
    goto :goto_0

    .line 441
    :cond_8
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    if-nez v2, :cond_9

    .line 442
    iget-object v2, p1, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    if-eqz v2, :cond_a

    move v0, v1

    .line 443
    goto :goto_0

    .line 445
    :cond_9
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_a
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    .line 449
    iget-object v2, p1, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move v0, v1

    .line 450
    goto :goto_0

    .line 452
    :cond_b
    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 453
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 463
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 465
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 467
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 469
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 471
    return v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_3

    .line 469
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_4
.end method
