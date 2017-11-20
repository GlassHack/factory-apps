.class public final Lcom/google/n/a/a/a/a/af;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/n/a/a/a/a/ae;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1784
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1785
    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/af;->G:I

    .line 1786
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 1869
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1870
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1872
    iget-object v1, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    if-eqz v1, :cond_0

    .line 1873
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1876
    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1878
    iget-object v1, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1879
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1882
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 1755
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

    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/n/a/a/a/a/ae;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 1856
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1857
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    if-eqz v0, :cond_0

    .line 1858
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1860
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1861
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1862
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 1864
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1865
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1799
    if-ne p1, p0, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return v0

    .line 1802
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/af;

    if-nez v2, :cond_2

    move v0, v1

    .line 1803
    goto :goto_0

    .line 1805
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/af;

    .line 1806
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1807
    iget-object v2, p1, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1808
    goto :goto_0

    .line 1810
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1811
    goto :goto_0

    .line 1813
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1814
    iget-object v2, p1, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 1815
    goto :goto_0

    .line 1817
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 1818
    goto :goto_0

    .line 1820
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    if-nez v2, :cond_7

    .line 1821
    iget-object v2, p1, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    if-eqz v2, :cond_8

    move v0, v1

    .line 1822
    goto :goto_0

    .line 1825
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    invoke-virtual {v2, v3}, Lcom/google/n/a/a/a/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 1826
    goto :goto_0

    .line 1829
    :cond_8
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    if-nez v2, :cond_9

    .line 1830
    iget-object v2, p1, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1831
    goto :goto_0

    .line 1833
    :cond_9
    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1834
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1841
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1844
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1846
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1848
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 1850
    return v0

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1844
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1846
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    invoke-virtual {v0}, Lcom/google/n/a/a/a/a/ae;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1848
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_3
.end method
