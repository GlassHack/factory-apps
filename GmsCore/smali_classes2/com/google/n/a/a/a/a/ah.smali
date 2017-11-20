.class public final Lcom/google/n/a/a/a/a/ah;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:[Lcom/google/n/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/n/a/a/a/a/ah;->b()Lcom/google/n/a/a/a/a/ah;

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 116
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 120
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    aget-object v2, v2, v0

    .line 122
    if-eqz v2, :cond_2

    .line 123
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 128
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8
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

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

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
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 98
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    aget-object v1, v1, v0

    .line 100
    if-eqz v1, :cond_2

    .line 101
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 98
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 106
    return-void
.end method

.method public final b()Lcom/google/n/a/a/a/a/ah;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    .line 40
    iput-object v0, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    .line 41
    invoke-static {}, Lcom/google/n/a/a/a/a/c;->b()[Lcom/google/n/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/ah;->G:I

    .line 43
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/ah;

    if-nez v2, :cond_2

    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/ah;

    .line 55
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    if-nez v2, :cond_3

    .line 56
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 63
    iget-object v2, p1, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    if-eqz v2, :cond_6

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_1
.end method
