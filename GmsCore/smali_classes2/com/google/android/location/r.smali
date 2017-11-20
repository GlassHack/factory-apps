.class public final Lcom/google/android/location/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/LinkedList;

.field b:Ljava/util/HashMap;

.field c:Ljava/util/HashMap;

.field d:J

.field final e:I

.field final f:I

.field final g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    .line 621
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    .line 623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/r;->c:Ljava/util/HashMap;

    .line 627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/r;->d:J

    .line 651
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/location/r;->e:I

    .line 652
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/google/android/location/r;->f:I

    .line 653
    const v0, 0xea60

    iput v0, p0, Lcom/google/android/location/r;->g:I

    .line 654
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/location/os/ah;
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const/4 v0, 0x0

    .line 787
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/ah;

    goto :goto_0
.end method

.method public final a(ZJJZLcom/google/android/location/os/ah;)Lcom/google/g/a/b/b/a;
    .locals 12

    .prologue
    .line 804
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/os/ah;

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    cmp-long v2, v4, p4

    if-ltz v2, :cond_0

    move v11, v3

    .line 806
    :goto_1
    const/4 v2, -0x1

    if-ne v11, v2, :cond_2

    .line 807
    const/4 v2, 0x0

    .line 820
    :goto_2
    return-object v2

    .line 804
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    move v11, v3

    goto :goto_1

    .line 809
    :cond_2
    new-instance v10, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v10, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 811
    const/4 v2, 0x0

    move v9, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v9, v2, :cond_9

    .line 812
    iget-object v2, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/os/ah;

    .line 813
    iget-object v2, p0, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/f/g;

    .line 814
    iget-object v2, p0, Lcom/google/android/location/r;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/location/f/bh;

    .line 815
    if-ge v9, v11, :cond_3

    const/16 v8, 0x11

    :goto_4
    move-wide v2, p2

    move/from16 v7, p6

    .line 816
    invoke-static/range {v2 .. v8}, Lcom/google/android/location/a;->a(JLcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;ZI)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 818
    const/4 v3, 0x4

    invoke-virtual {v10, v3, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 811
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_3

    .line 815
    :cond_3
    if-ne v9, v11, :cond_5

    if-eqz p1, :cond_4

    const/16 v8, 0x13

    goto :goto_4

    :cond_4
    const/4 v8, 0x6

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v9, v2, :cond_8

    if-nez p7, :cond_6

    const/16 v8, 0x9

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/os/ah;

    const/16 v3, 0x19

    move-object/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/google/android/location/a;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/os/ah;I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v8, 0xa

    goto :goto_4

    :cond_7
    const/16 v8, 0x9

    goto :goto_4

    :cond_8
    const/16 v8, 0x8

    goto :goto_4

    :cond_9
    move-object v2, v10

    .line 820
    goto :goto_2
.end method

.method final a(I)V
    .locals 8

    .prologue
    .line 718
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/ah;

    .line 722
    iget-object v1, p0, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 723
    iget-object v1, p0, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v1, p0, Lcom/google/android/location/r;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "BurstCollector"

    const-string v2, "Removed location@ %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(JLcom/google/android/location/os/ah;Lcom/google/android/location/d;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;)Z
    .locals 9

    .prologue
    .line 738
    if-nez p3, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 776
    :goto_0
    return v0

    .line 743
    :cond_0
    if-eqz p6, :cond_7

    invoke-static {p6, p3}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/bh;Lcom/google/android/location/os/ah;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/location/r;->d:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/r;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p6}, Lcom/google/android/location/f/bh;->a()I

    move-result v0

    if-eqz v0, :cond_6

    const-wide/32 v4, 0x927c0

    move-object v0, p4

    move-object v1, p6

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/d;->a(Lcom/google/android/location/f/bh;JJ)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p6}, Lcom/google/android/location/f/bh;->a()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 753
    :goto_2
    if-eqz p5, :cond_8

    iget-object v1, p0, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-wide v2, p0, Lcom/google/android/location/r;->d:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2ee0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_8

    if-nez v0, :cond_1

    invoke-virtual {p4, p5, p3}, Lcom/google/android/location/d;->a(Lcom/google/android/location/f/g;Lcom/google/android/location/os/ah;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_1
    const/4 v1, 0x1

    .line 757
    :goto_3
    if-eqz v1, :cond_9

    .line 758
    :goto_4
    if-eqz v0, :cond_a

    .line 760
    :goto_5
    if-eqz p5, :cond_2

    .line 761
    iget-object v1, p0, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "BurstCollector"

    const-string v2, "Added cell scan @%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p5}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_2
    if-eqz p6, :cond_3

    .line 765
    iget-object v1, p0, Lcom/google/android/location/r;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    const-string v1, "BurstCollector"

    const-string v2, "Added wifi scan @%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p6, Lcom/google/android/location/f/bh;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_3
    if-nez p6, :cond_4

    if-eqz p5, :cond_5

    .line 770
    :cond_4
    iput-wide p1, p0, Lcom/google/android/location/r;->d:J

    .line 775
    :cond_5
    invoke-virtual {p4, p3, p5, p6}, Lcom/google/android/location/d;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;)V

    goto/16 :goto_0

    .line 743
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 753
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 757
    :cond_9
    const/4 p5, 0x0

    goto :goto_4

    .line 758
    :cond_a
    const/4 p6, 0x0

    goto :goto_5
.end method
