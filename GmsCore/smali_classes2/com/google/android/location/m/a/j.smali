.class public final Lcom/google/android/location/m/a/j;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/location/m/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/android/location/m/a/m;->b()[Lcom/google/android/location/m/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/m/a/j;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/j;->G:I

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v1

    .line 79
    iget-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    aget-object v2, v2, v0

    .line 82
    if-eqz v2, :cond_0

    .line 83
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/m;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/m;

    invoke-direct {v3}, Lcom/google/android/location/m/a/m;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/m;

    invoke-direct {v3}, Lcom/google/android/location/m/a/m;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    aget-object v1, v1, v0

    .line 68
    if-eqz v1, :cond_0

    .line 69
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 74
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
    instance-of v1, p1, Lcom/google/android/location/m/a/j;

    if-eqz v1, :cond_0

    .line 45
    check-cast p1, Lcom/google/android/location/m/a/j;

    .line 46
    iget-object v1, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    iget-object v2, p1, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/j;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/location/m/a/j;->a:[Lcom/google/android/location/m/a/m;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/j;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    return v0
.end method
