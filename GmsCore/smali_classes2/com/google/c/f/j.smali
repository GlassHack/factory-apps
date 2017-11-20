.class public final Lcom/google/c/f/j;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/c/f/i;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/google/c/f/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 418
    iput-object v1, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    iput v0, p0, Lcom/google/c/f/j;->b:I

    iput v0, p0, Lcom/google/c/f/j;->c:I

    iput v0, p0, Lcom/google/c/f/j;->d:I

    iput v0, p0, Lcom/google/c/f/j;->e:I

    iput-object v1, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/j;->G:I

    .line 419
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 514
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 515
    iget-object v1, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    if-eqz v1, :cond_0

    .line 516
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_0
    iget v1, p0, Lcom/google/c/f/j;->b:I

    if-eqz v1, :cond_1

    .line 520
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/c/f/j;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_1
    iget v1, p0, Lcom/google/c/f/j;->c:I

    if-eqz v1, :cond_2

    .line 524
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/c/f/j;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_2
    iget v1, p0, Lcom/google/c/f/j;->d:I

    if-eqz v1, :cond_3

    .line 528
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/c/f/j;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_3
    iget v1, p0, Lcom/google/c/f/j;->e:I

    if-eqz v1, :cond_4

    .line 532
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/c/f/j;->e:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    :cond_4
    iget-object v1, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    if-eqz v1, :cond_5

    .line 536
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_5
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 353
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
    iget-object v0, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/i;

    invoke-direct {v0}, Lcom/google/c/f/i;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/c/f/j;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/c/f/j;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/google/c/f/j;->d:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    iput v0, p0, Lcom/google/c/f/j;->e:I

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/f/f;

    invoke-direct {v0}, Lcom/google/c/f/f;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 494
    :cond_0
    iget v0, p0, Lcom/google/c/f/j;->b:I

    if-eqz v0, :cond_1

    .line 495
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/c/f/j;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 497
    :cond_1
    iget v0, p0, Lcom/google/c/f/j;->c:I

    if-eqz v0, :cond_2

    .line 498
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/c/f/j;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 500
    :cond_2
    iget v0, p0, Lcom/google/c/f/j;->d:I

    if-eqz v0, :cond_3

    .line 501
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/c/f/j;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 503
    :cond_3
    iget v0, p0, Lcom/google/c/f/j;->e:I

    if-eqz v0, :cond_4

    .line 504
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/c/f/j;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    if-eqz v0, :cond_5

    .line 507
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 509
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 510
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 434
    if-ne p1, p0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/j;

    if-nez v2, :cond_2

    move v0, v1

    .line 438
    goto :goto_0

    .line 440
    :cond_2
    check-cast p1, Lcom/google/c/f/j;

    .line 441
    iget-object v2, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    if-nez v2, :cond_3

    .line 442
    iget-object v2, p1, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    if-eqz v2, :cond_4

    move v0, v1

    .line 443
    goto :goto_0

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    iget-object v3, p1, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    invoke-virtual {v2, v3}, Lcom/google/c/f/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 447
    goto :goto_0

    .line 450
    :cond_4
    iget v2, p0, Lcom/google/c/f/j;->b:I

    iget v3, p1, Lcom/google/c/f/j;->b:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_5
    iget v2, p0, Lcom/google/c/f/j;->c:I

    iget v3, p1, Lcom/google/c/f/j;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 454
    goto :goto_0

    .line 456
    :cond_6
    iget v2, p0, Lcom/google/c/f/j;->d:I

    iget v3, p1, Lcom/google/c/f/j;->d:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 457
    goto :goto_0

    .line 459
    :cond_7
    iget v2, p0, Lcom/google/c/f/j;->e:I

    iget v3, p1, Lcom/google/c/f/j;->e:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 460
    goto :goto_0

    .line 462
    :cond_8
    iget-object v2, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    if-nez v2, :cond_9

    .line 463
    iget-object v2, p1, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    if-eqz v2, :cond_0

    move v0, v1

    .line 464
    goto :goto_0

    .line 467
    :cond_9
    iget-object v2, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    iget-object v3, p1, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    invoke-virtual {v2, v3}, Lcom/google/c/f/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 468
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/c/f/j;->b:I

    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/c/f/j;->c:I

    add-int/2addr v0, v2

    .line 481
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/c/f/j;->d:I

    add-int/2addr v0, v2

    .line 482
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/c/f/j;->e:I

    add-int/2addr v0, v2

    .line 483
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 485
    return v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/j;->a:Lcom/google/c/f/i;

    invoke-virtual {v0}, Lcom/google/c/f/i;->hashCode()I

    move-result v0

    goto :goto_0

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/google/c/f/j;->f:Lcom/google/c/f/f;

    invoke-virtual {v1}, Lcom/google/c/f/f;->hashCode()I

    move-result v1

    goto :goto_1
.end method
