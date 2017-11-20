.class public final Lcom/google/android/location/m/a/be;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/location/m/a/ap;

.field public b:[Lcom/google/android/location/m/a/bd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/android/location/m/a/ap;->b()[Lcom/google/android/location/m/a/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    invoke-static {}, Lcom/google/android/location/m/a/bd;->b()[Lcom/google/android/location/m/a/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/m/a/be;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/be;->G:I

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 97
    iget-object v2, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    aget-object v3, v3, v0

    .line 100
    if-eqz v3, :cond_0

    .line 101
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 108
    iget-object v2, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    aget-object v2, v2, v1

    .line 109
    if-eqz v2, :cond_3

    .line 110
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 107
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_4
    return v0
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/be;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/ap;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/ap;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ap;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/ap;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ap;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/bd;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/location/m/a/bd;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bd;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/location/m/a/bd;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bd;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

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

    .line 75
    iget-object v0, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    aget-object v2, v2, v0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    aget-object v0, v0, v1

    .line 86
    if-eqz v0, :cond_2

    .line 87
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 84
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 92
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/be;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lcom/google/android/location/m/a/be;

    .line 50
    iget-object v1, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    iget-object v2, p1, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    iget-object v2, p1, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/be;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/location/m/a/be;->a:[Lcom/google/android/location/m/a/ap;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/be;->b:[Lcom/google/android/location/m/a/bd;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/be;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    return v0
.end method
