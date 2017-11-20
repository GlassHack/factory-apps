.class public final Lcom/google/android/location/m/a/bl;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/bl;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:[Lcom/google/android/location/m/a/bn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/location/m/a/bn;->b()[Lcom/google/android/location/m/a/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    iput-object v1, p0, Lcom/google/android/location/m/a/bl;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bl;->G:I

    .line 37
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/bl;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/bl;->e:[Lcom/google/android/location/m/a/bl;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/bl;->e:[Lcom/google/android/location/m/a/bl;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/bl;

    sput-object v0, Lcom/google/android/location/m/a/bl;->e:[Lcom/google/android/location/m/a/bl;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/bl;->e:[Lcom/google/android/location/m/a/bl;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 134
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 140
    :goto_0
    iget-object v5, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 141
    iget-object v5, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 142
    if-eqz v5, :cond_2

    .line 143
    add-int/lit8 v4, v4, 0x1

    .line 144
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_3
    add-int/2addr v0, v3

    .line 149
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    array-length v1, v1

    if-ge v2, v1, :cond_6

    .line 153
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    aget-object v1, v1, v2

    .line 154
    if-eqz v1, :cond_5

    .line 155
    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_6
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bl;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/bn;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/location/m/a/bn;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bn;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/location/m/a/bn;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bn;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 110
    if-eqz v2, :cond_2

    .line 111
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    aget-object v0, v0, v1

    .line 118
    if-eqz v0, :cond_4

    .line 119
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 116
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 124
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    if-ne p1, p0, :cond_1

    .line 52
    const/4 v0, 0x1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bl;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/m/a/bl;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 66
    iget-object v1, p1, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    iget-object v2, p1, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bl;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bl;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
