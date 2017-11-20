.class public final Lcom/google/n/a/b/a/a/m;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 1756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/m;->G:I

    .line 1757
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1857
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 1858
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1859
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1862
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1863
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1866
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1867
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1870
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1871
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1874
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1875
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1878
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1723
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1838
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1841
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1844
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1846
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1847
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1849
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1850
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1852
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 1853
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1772
    if-ne p1, p0, :cond_1

    .line 1773
    const/4 v0, 0x1

    .line 1814
    :cond_0
    :goto_0
    return v0

    .line 1775
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/m;

    if-eqz v1, :cond_0

    .line 1778
    check-cast p1, Lcom/google/n/a/b/a/a/m;

    .line 1779
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1780
    iget-object v1, p1, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1786
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 1787
    iget-object v1, p1, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1793
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1794
    iget-object v1, p1, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1800
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1801
    iget-object v1, p1, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1807
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 1808
    iget-object v1, p1, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1814
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/m;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 1783
    :cond_7
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1790
    :cond_8
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1797
    :cond_9
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 1804
    :cond_a
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 1811
    :cond_b
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1819
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1822
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1824
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1826
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 1828
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 1830
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/m;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1831
    return v0

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1822
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1824
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1826
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 1828
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/m;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
