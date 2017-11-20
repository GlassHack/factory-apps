.class public final Lcom/google/android/location/places/d/a/v;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/android/location/places/d/a/v;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lcom/google/android/location/places/d/a/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/location/places/d/a/u;->b()[Lcom/google/android/location/places/d/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/v;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/v;->G:I

    .line 31
    return-void
.end method

.method public static b()[Lcom/google/android/location/places/d/a/v;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/places/d/a/v;->c:[Lcom/google/android/location/places/d/a/v;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/places/d/a/v;->c:[Lcom/google/android/location/places/d/a/v;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/places/d/a/v;

    sput-object v0, Lcom/google/android/location/places/d/a/v;->c:[Lcom/google/android/location/places/d/a/v;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/places/d/a/v;->c:[Lcom/google/android/location/places/d/a/v;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 98
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    aget-object v2, v2, v0

    .line 100
    if-eqz v2, :cond_1

    .line 101
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 106
    :cond_3
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/v;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/places/d/a/u;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/places/d/a/u;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/u;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/places/d/a/u;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/u;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 80
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    aget-object v1, v1, v0

    .line 82
    if-eqz v1, :cond_1

    .line 83
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 88
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

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/v;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lcom/google/android/location/places/d/a/v;

    .line 50
    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 51
    iget-object v1, p1, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/v;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/v;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
