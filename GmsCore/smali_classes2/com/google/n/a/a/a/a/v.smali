.class public final Lcom/google/n/a/a/a/a/v;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/n/a/a/a/a/o;

.field public b:[Lcom/google/n/a/a/a/a/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1814
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1815
    invoke-static {}, Lcom/google/n/a/a/a/a/o;->b()[Lcom/google/n/a/a/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    invoke-static {}, Lcom/google/n/a/a/a/a/o;->b()[Lcom/google/n/a/a/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/v;->G:I

    .line 1816
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1879
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1880
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 1881
    :goto_0
    iget-object v3, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1882
    iget-object v3, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    aget-object v3, v3, v0

    .line 1883
    if-eqz v3, :cond_0

    .line 1884
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1881
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1889
    :cond_2
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1890
    :goto_1
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1891
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    aget-object v2, v2, v1

    .line 1892
    if-eqz v2, :cond_3

    .line 1893
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1890
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1898
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1791
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

    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/o;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/n/a/a/a/a/o;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/a/a/a/o;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/o;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/n/a/a/a/a/o;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/n/a/a/a/a/o;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1858
    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 1859
    :goto_0
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1860
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    aget-object v2, v2, v0

    .line 1861
    if-eqz v2, :cond_0

    .line 1862
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1859
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1866
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1867
    :goto_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 1868
    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    aget-object v0, v0, v1

    .line 1869
    if-eqz v0, :cond_2

    .line 1870
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1867
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1874
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1875
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1827
    if-ne p1, p0, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return v0

    .line 1830
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/v;

    if-nez v2, :cond_2

    move v0, v1

    .line 1831
    goto :goto_0

    .line 1833
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/v;

    .line 1834
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1836
    goto :goto_0

    .line 1838
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1840
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 1850
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/a/a/a/v;->b:[Lcom/google/n/a/a/a/a/o;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1852
    return v0
.end method
