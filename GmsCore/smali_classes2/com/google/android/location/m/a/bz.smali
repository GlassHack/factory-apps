.class public final Lcom/google/android/location/m/a/bz;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/location/m/a/ce;

.field public b:Lcom/google/android/location/m/a/bx;

.field public c:Lcom/google/android/location/m/a/by;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/android/location/m/a/ce;->b()[Lcom/google/android/location/m/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    iput-object v1, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    iput-object v1, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    iput-object v1, p0, Lcom/google/android/location/m/a/bz;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bz;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v1

    .line 115
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 116
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    aget-object v2, v2, v0

    .line 118
    if-eqz v2, :cond_0

    .line 119
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    add-int/2addr v1, v0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    if-eqz v0, :cond_3

    .line 129
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    add-int/2addr v1, v0

    .line 132
    :cond_3
    return v1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bz;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/ce;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/ce;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ce;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/ce;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ce;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/m/a/bx;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bx;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/m/a/by;

    invoke-direct {v0}, Lcom/google/android/location/m/a/by;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 96
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    aget-object v1, v1, v0

    .line 98
    if-eqz v1, :cond_0

    .line 99
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    if-eqz v0, :cond_3

    .line 107
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 109
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 110
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    if-ne p1, p0, :cond_1

    .line 48
    const/4 v0, 0x1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bz;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/m/a/bz;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    iget-object v2, p1, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    if-nez v1, :cond_4

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    if-nez v1, :cond_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    if-nez v1, :cond_5

    .line 68
    iget-object v1, p1, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    if-nez v1, :cond_0

    .line 76
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bz;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    iget-object v2, p1, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 72
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    iget-object v2, p1, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/by;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->a:[Lcom/google/android/location/m/a/ce;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 84
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bz;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bz;->b:Lcom/google/android/location/m/a/bx;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bx;->hashCode()I

    move-result v0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bz;->c:Lcom/google/android/location/m/a/by;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/by;->hashCode()I

    move-result v1

    goto :goto_1
.end method
