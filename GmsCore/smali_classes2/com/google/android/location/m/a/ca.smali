.class public final Lcom/google/android/location/m/a/ca;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 27
    sget-object v0, Lcom/google/protobuf/nano/m;->b:[J

    iput-object v0, p0, Lcom/google/android/location/m/a/ca;->a:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/m/a/ca;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ca;->G:I

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v2

    .line 76
    iget-object v1, p0, Lcom/google/android/location/m/a/ca;->a:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/m/a/ca;->a:[J

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v0

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/ca;->a:[J

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/google/android/location/m/a/ca;->a:[J

    aget-wide v4, v3, v0

    .line 80
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/b;->b(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    add-int v0, v2, v1

    .line 84
    iget-object v1, p0, Lcom/google/android/location/m/a/ca;->a:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 86
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ca;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ca;->a:[J

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/ca;->a:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ca;->a:[J

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ca;->a:[J

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

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v2, p0, Lcom/google/android/location/m/a/ca;->a:[J

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/location/m/a/ca;->a:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/location/m/a/ca;->a:[J

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/location/m/a/ca;->a:[J

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/location/m/a/ca;->a:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/m/a/ca;->a:[J

    array-length v0, v0

    if-lez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/ca;->a:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 67
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ca;->a:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/b;->a(IJ)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 71
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 40
    const/4 v0, 0x1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ca;

    if-eqz v1, :cond_0

    .line 45
    check-cast p1, Lcom/google/android/location/m/a/ca;

    .line 46
    iget-object v1, p0, Lcom/google/android/location/m/a/ca;->a:[J

    iget-object v2, p1, Lcom/google/android/location/m/a/ca;->a:[J

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([J[J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ca;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/location/m/a/ca;->a:[J

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([J)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ca;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    return v0
.end method
