.class public final Lcom/google/n/a/b/a/a/d;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2367
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 2368
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/n/a/b/a/a/d;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/d;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/d;->G:I

    .line 2369
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 2438
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 2439
    iget v1, p0, Lcom/google/n/a/b/a/a/d;->a:I

    if-eqz v1, :cond_0

    .line 2440
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/n/a/b/a/a/d;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2443
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2444
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2447
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2448
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2451
    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 2314
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/d;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/n/a/b/a/a/d;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 2424
    iget v0, p0, Lcom/google/n/a/b/a/a/d;->a:I

    if-eqz v0, :cond_0

    .line 2425
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/n/a/b/a/a/d;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 2427
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2428
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2430
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2431
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2433
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 2434
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2382
    if-ne p1, p0, :cond_1

    .line 2383
    const/4 v0, 0x1

    .line 2406
    :cond_0
    :goto_0
    return v0

    .line 2385
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/d;

    if-eqz v1, :cond_0

    .line 2388
    check-cast p1, Lcom/google/n/a/b/a/a/d;

    .line 2389
    iget v1, p0, Lcom/google/n/a/b/a/a/d;->a:I

    iget v2, p1, Lcom/google/n/a/b/a/a/d;->a:I

    if-ne v1, v2, :cond_0

    .line 2392
    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 2393
    iget-object v1, p1, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2399
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 2400
    iget-object v1, p1, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2406
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/d;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 2396
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2403
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2411
    iget v0, p0, Lcom/google/n/a/b/a/a/d;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 2413
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 2415
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 2417
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 2418
    return v0

    .line 2413
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2415
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/b/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
