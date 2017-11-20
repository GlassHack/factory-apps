.class public final Lcom/google/c/f/i;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1737
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/f/i;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/c/f/i;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/i;->G:I

    .line 1739
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    .line 1828
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1829
    iget-object v1, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1830
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1833
    :cond_0
    iget-object v1, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1834
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1837
    :cond_1
    iget v1, p0, Lcom/google/c/f/i;->c:I

    if-eqz v1, :cond_2

    .line 1838
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/c/f/i;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1841
    :cond_2
    iget-object v1, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1842
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1845
    :cond_3
    iget-wide v2, p0, Lcom/google/c/f/i;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 1846
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/c/f/i;->e:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1849
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 1705
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

    iput-object v0, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/c/f/i;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/f/i;->e:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1809
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1812
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1814
    :cond_1
    iget v0, p0, Lcom/google/c/f/i;->c:I

    if-eqz v0, :cond_2

    .line 1815
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/c/f/i;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1817
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1818
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1820
    :cond_3
    iget-wide v0, p0, Lcom/google/c/f/i;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1821
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/c/f/i;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 1823
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1824
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1753
    if-ne p1, p0, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return v0

    .line 1756
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/i;

    if-nez v2, :cond_2

    move v0, v1

    .line 1757
    goto :goto_0

    .line 1759
    :cond_2
    check-cast p1, Lcom/google/c/f/i;

    .line 1760
    iget-object v2, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1761
    iget-object v2, p1, Lcom/google/c/f/i;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1762
    goto :goto_0

    .line 1764
    :cond_3
    iget-object v2, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/f/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1765
    goto :goto_0

    .line 1767
    :cond_4
    iget-object v2, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1768
    iget-object v2, p1, Lcom/google/c/f/i;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 1769
    goto :goto_0

    .line 1771
    :cond_5
    iget-object v2, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/f/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 1772
    goto :goto_0

    .line 1774
    :cond_6
    iget v2, p0, Lcom/google/c/f/i;->c:I

    iget v3, p1, Lcom/google/c/f/i;->c:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 1775
    goto :goto_0

    .line 1777
    :cond_7
    iget-object v2, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 1778
    iget-object v2, p1, Lcom/google/c/f/i;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 1779
    goto :goto_0

    .line 1781
    :cond_8
    iget-object v2, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/f/i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 1782
    goto :goto_0

    .line 1784
    :cond_9
    iget-wide v2, p0, Lcom/google/c/f/i;->e:J

    iget-wide v4, p1, Lcom/google/c/f/i;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 1785
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1792
    iget-object v0, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1795
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1797
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/c/f/i;->c:I

    add-int/2addr v0, v2

    .line 1798
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 1800
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/c/f/i;->e:J

    iget-wide v4, p0, Lcom/google/c/f/i;->e:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1802
    return v0

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1795
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1798
    :cond_2
    iget-object v1, p0, Lcom/google/c/f/i;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method
