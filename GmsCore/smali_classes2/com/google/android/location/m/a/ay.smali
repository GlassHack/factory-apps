.class public final Lcom/google/android/location/m/a/ay;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 30
    sget-object v0, Lcom/google/protobuf/nano/m;->a:[I

    iput-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    sget-object v0, Lcom/google/protobuf/nano/m;->a:[I

    iput-object v0, p0, Lcom/google/android/location/m/a/ay;->b:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/m/a/ay;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ay;->G:I

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v3

    .line 91
    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/m/a/ay;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/google/android/location/m/a/ay;->a:[I

    aget v4, v4, v0

    .line 95
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    add-int v0, v3, v2

    .line 99
    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 101
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 103
    :goto_2
    iget-object v3, p0, Lcom/google/android/location/m/a/ay;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/google/android/location/m/a/ay;->b:[I

    aget v3, v3, v1

    .line 105
    invoke-static {v3}, Lcom/google/protobuf/nano/b;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    :cond_1
    add-int/2addr v0, v2

    .line 109
    iget-object v1, p0, Lcom/google/android/location/m/a/ay;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 111
    :cond_2
    return v0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ay;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/ay;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ay;->a:[I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/location/m/a/ay;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->a:[I

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->b:[I

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/android/location/m/a/ay;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->b:[I

    array-length v0, v0

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ay;->b:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v2

    move v0, v1

    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->b:[I

    if-nez v2, :cond_d

    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/google/android/location/m/a/ay;->b:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_e

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->b:[I

    array-length v2, v2

    goto :goto_9

    :cond_e
    iput-object v0, p0, Lcom/google/android/location/m/a/ay;->b:[I

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 77
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/ay;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 82
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/ay;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 86
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
    instance-of v1, p1, Lcom/google/android/location/m/a/ay;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lcom/google/android/location/m/a/ay;

    .line 50
    iget-object v1, p0, Lcom/google/android/location/m/a/ay;->a:[I

    iget-object v2, p1, Lcom/google/android/location/m/a/ay;->a:[I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/android/location/m/a/ay;->b:[I

    iget-object v2, p1, Lcom/google/android/location/m/a/ay;->b:[I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ay;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/location/m/a/ay;->a:[I

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/ay;->b:[I

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ay;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    return v0
.end method
