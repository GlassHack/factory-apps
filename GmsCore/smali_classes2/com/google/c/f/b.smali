.class public final Lcom/google/c/f/b;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1926
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1927
    iput-wide v0, p0, Lcom/google/c/f/b;->a:J

    iput-wide v0, p0, Lcom/google/c/f/b;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b;->G:I

    .line 1928
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1979
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1980
    iget-wide v2, p0, Lcom/google/c/f/b;->a:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1981
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/c/f/b;->a:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1984
    :cond_0
    iget-wide v2, p0, Lcom/google/c/f/b;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1985
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/c/f/b;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1988
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 1903
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

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/f/b;->a:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/f/b;->b:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1968
    iget-wide v0, p0, Lcom/google/c/f/b;->a:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1969
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/c/f/b;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 1971
    :cond_0
    iget-wide v0, p0, Lcom/google/c/f/b;->b:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 1972
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/c/f/b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 1974
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1975
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1939
    if-ne p1, p0, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return v0

    .line 1942
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 1943
    goto :goto_0

    .line 1945
    :cond_2
    check-cast p1, Lcom/google/c/f/b;

    .line 1946
    iget-wide v2, p0, Lcom/google/c/f/b;->a:J

    iget-wide v4, p1, Lcom/google/c/f/b;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    .line 1947
    goto :goto_0

    .line 1949
    :cond_3
    iget-wide v2, p0, Lcom/google/c/f/b;->b:J

    iget-wide v4, p1, Lcom/google/c/f/b;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 1950
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 1957
    iget-wide v0, p0, Lcom/google/c/f/b;->a:J

    iget-wide v2, p0, Lcom/google/c/f/b;->a:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 1960
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/c/f/b;->b:J

    iget-wide v4, p0, Lcom/google/c/f/b;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1962
    return v0
.end method
