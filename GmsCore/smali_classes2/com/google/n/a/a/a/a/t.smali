.class public final Lcom/google/n/a/a/a/a/t;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/n/a/a/a/a/c;

.field public b:[Lcom/google/n/a/a/a/a/c;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 591
    invoke-static {}, Lcom/google/n/a/a/a/a/c;->b()[Lcom/google/n/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    invoke-static {}, Lcom/google/n/a/a/a/a/c;->b()[Lcom/google/n/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/t;->G:I

    .line 592
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 668
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 669
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 670
    :goto_0
    iget-object v3, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 671
    iget-object v3, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    aget-object v3, v3, v0

    .line 672
    if-eqz v3, :cond_0

    .line 673
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 670
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 678
    :cond_2
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 679
    :goto_1
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 680
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    aget-object v2, v2, v1

    .line 681
    if-eqz v2, :cond_3

    .line 682
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 679
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 688
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 691
    :cond_5
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 564
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

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
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 645
    :goto_0
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 646
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    aget-object v2, v2, v0

    .line 647
    if-eqz v2, :cond_0

    .line 648
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 645
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 653
    :goto_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 654
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    aget-object v0, v0, v1

    .line 655
    if-eqz v0, :cond_2

    .line 656
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 653
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 661
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 663
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 664
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 604
    if-ne p1, p0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/t;

    if-nez v2, :cond_2

    move v0, v1

    .line 608
    goto :goto_0

    .line 610
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/t;

    .line 611
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 613
    goto :goto_0

    .line 615
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 617
    goto :goto_0

    .line 619
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 620
    iget-object v2, p1, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 621
    goto :goto_0

    .line 623
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 624
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 634
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 636
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 638
    return v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
