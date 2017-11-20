.class public final Lcom/google/n/a/a/a/a/x;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;

.field public d:[Lcom/google/n/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2547
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 2548
    iput-object v0, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/n/a/a/a/a/c;->b()[Lcom/google/n/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/x;->G:I

    .line 2549
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 2636
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 2637
    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 2638
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2641
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2642
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2645
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2646
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2649
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 2650
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2651
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    aget-object v2, v2, v0

    .line 2652
    if-eqz v2, :cond_3

    .line 2653
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2650
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2658
    :cond_5
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2518
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2615
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 2617
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2618
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 2620
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2621
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2623
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 2624
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2625
    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    aget-object v1, v1, v0

    .line 2626
    if-eqz v1, :cond_3

    .line 2627
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 2624
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2631
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 2632
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2562
    if-ne p1, p0, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return v0

    .line 2565
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/x;

    if-nez v2, :cond_2

    move v0, v1

    .line 2566
    goto :goto_0

    .line 2568
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/x;

    .line 2569
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    if-nez v2, :cond_3

    .line 2570
    iget-object v2, p1, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    .line 2571
    goto :goto_0

    .line 2573
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2574
    goto :goto_0

    .line 2576
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 2577
    iget-object v2, p1, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    if-eqz v2, :cond_6

    move v0, v1

    .line 2578
    goto :goto_0

    .line 2580
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 2581
    goto :goto_0

    .line 2583
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 2584
    iget-object v2, p1, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 2585
    goto :goto_0

    .line 2587
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 2588
    goto :goto_0

    .line 2590
    :cond_8
    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2592
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2599
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 2602
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 2604
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 2606
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2608
    return v0

    .line 2599
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2602
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/x;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_1

    .line 2604
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/x;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method
