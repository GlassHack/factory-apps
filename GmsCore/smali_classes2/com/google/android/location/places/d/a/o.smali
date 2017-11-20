.class public final Lcom/google/android/location/places/d/a/o;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/android/location/places/d/a/o;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/location/places/d/a/m;

.field public c:[Lcom/google/android/location/places/d/a/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    invoke-static {}, Lcom/google/android/location/places/d/a/t;->b()[Lcom/google/android/location/places/d/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/o;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/o;->G:I

    .line 34
    return-void
.end method

.method public static b()[Lcom/google/android/location/places/d/a/o;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/places/d/a/o;->d:[Lcom/google/android/location/places/d/a/o;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/places/d/a/o;->d:[Lcom/google/android/location/places/d/a/o;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/places/d/a/o;

    sput-object v0, Lcom/google/android/location/places/d/a/o;->d:[Lcom/google/android/location/places/d/a/o;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/places/d/a/o;->d:[Lcom/google/android/location/places/d/a/o;

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
    .line 112
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 122
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    aget-object v2, v2, v0

    .line 124
    if-eqz v2, :cond_2

    .line 125
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 130
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/o;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/places/d/a/m;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/places/d/a/t;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/location/places/d/a/t;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/t;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/location/places/d/a/t;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/t;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

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
    .line 93
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 100
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    aget-object v1, v1, v0

    .line 102
    if-eqz v1, :cond_2

    .line 103
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 100
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 108
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

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/o;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/places/d/a/o;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 55
    iget-object v1, p1, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    if-nez v1, :cond_5

    .line 62
    iget-object v1, p1, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    if-nez v1, :cond_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/o;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 66
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->c:[Lcom/google/android/location/places/d/a/t;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/o;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/o;->b:Lcom/google/android/location/places/d/a/m;

    invoke-virtual {v1}, Lcom/google/android/location/places/d/a/m;->hashCode()I

    move-result v1

    goto :goto_1
.end method
