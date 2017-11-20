.class public final Lcom/google/n/a/b/a/a/k;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/n/a/b/a/a/e;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Lcom/google/n/a/b/a/a/i;

.field public g:[[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2611
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 2612
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/n/a/b/a/a/k;->a:J

    iput-object v3, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    iput v2, p0, Lcom/google/n/a/b/a/a/k;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/n/a/b/a/a/i;->b()[Lcom/google/n/a/b/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    sget-object v0, Lcom/google/protobuf/nano/m;->g:[[B

    iput-object v0, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    iput-object v3, p0, Lcom/google/n/a/b/a/a/k;->F:Lcom/google/protobuf/nano/f;

    iput v2, p0, Lcom/google/n/a/b/a/a/k;->G:I

    .line 2613
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2736
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 2737
    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    if-eqz v2, :cond_0

    .line 2738
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2741
    :cond_0
    iget v2, p0, Lcom/google/n/a/b/a/a/k;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2742
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/n/a/b/a/a/k;->c:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2745
    :cond_1
    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 2746
    :goto_0
    iget-object v3, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 2747
    iget-object v3, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    aget-object v3, v3, v0

    .line 2748
    if-eqz v3, :cond_2

    .line 2749
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2746
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2754
    :cond_4
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/k;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 2755
    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/n/a/b/a/a/k;->a:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2758
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    move v3, v1

    .line 2761
    :goto_1
    iget-object v4, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 2762
    iget-object v4, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    aget-object v4, v4, v1

    .line 2763
    if-eqz v4, :cond_6

    .line 2764
    add-int/lit8 v3, v3, 0x1

    .line 2765
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->b([B)I

    move-result v4

    add-int/2addr v2, v4

    .line 2761
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2769
    :cond_7
    add-int/2addr v0, v2

    .line 2770
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 2772
    :cond_8
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2773
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2776
    :cond_9
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2777
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2780
    :cond_a
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/k;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/n/a/b/a/a/e;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/n/a/b/a/a/k;->c:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/b/a/a/i;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/n/a/b/a/a/i;

    invoke-direct {v3}, Lcom/google/n/a/b/a/a/i;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/n/a/b/a/a/i;

    invoke-direct {v3}, Lcom/google/n/a/b/a/a/i;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/n/a/b/a/a/k;->a:J

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    array-length v0, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2700
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    if-eqz v0, :cond_0

    .line 2701
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 2703
    :cond_0
    iget v0, p0, Lcom/google/n/a/b/a/a/k;->c:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2704
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/n/a/b/a/a/k;->c:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 2706
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 2707
    :goto_0
    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2708
    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    aget-object v2, v2, v0

    .line 2709
    if-eqz v2, :cond_2

    .line 2710
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 2707
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2714
    :cond_3
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/k;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 2715
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/n/a/b/a/a/k;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 2717
    :cond_4
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 2718
    :goto_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 2719
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    aget-object v0, v0, v1

    .line 2720
    if-eqz v0, :cond_5

    .line 2721
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 2718
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2725
    :cond_6
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2726
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2728
    :cond_7
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2729
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2731
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 2732
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2630
    if-ne p1, p0, :cond_1

    .line 2631
    const/4 v0, 0x1

    .line 2674
    :cond_0
    :goto_0
    return v0

    .line 2633
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/k;

    if-eqz v1, :cond_0

    .line 2636
    check-cast p1, Lcom/google/n/a/b/a/a/k;

    .line 2637
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/k;->a:J

    iget-wide v4, p1, Lcom/google/n/a/b/a/a/k;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 2640
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    if-nez v1, :cond_5

    .line 2641
    iget-object v1, p1, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    if-nez v1, :cond_0

    .line 2649
    :cond_2
    iget v1, p0, Lcom/google/n/a/b/a/a/k;->c:I

    iget v2, p1, Lcom/google/n/a/b/a/a/k;->c:I

    if-ne v1, v2, :cond_0

    .line 2652
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 2653
    iget-object v1, p1, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2659
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 2660
    iget-object v1, p1, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2666
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2670
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    iget-object v2, p1, Lcom/google/n/a/b/a/a/k;->g:[[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([[B[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2674
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/k;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 2645
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2656
    :cond_6
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 2663
    :cond_7
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2679
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/k;->a:J

    iget-wide v4, p0, Lcom/google/n/a/b/a/a/k;->a:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 2682
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 2684
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/n/a/b/a/a/k;->c:I

    add-int/2addr v0, v2

    .line 2685
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 2687
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 2689
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->f:[Lcom/google/n/a/b/a/a/i;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2691
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->g:[[B

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2693
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/k;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 2694
    return v0

    .line 2682
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/e;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2685
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 2687
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method
