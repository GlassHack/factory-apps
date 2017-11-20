.class public final Lcom/google/android/location/m/a/h;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/android/location/m/a/h;


# instance fields
.field public a:Lcom/google/android/location/m/a/f;

.field public b:Ljava/lang/Long;

.field public c:[Lcom/google/android/location/m/a/f;

.field public d:[Lcom/google/android/location/m/a/f;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    iput-object v1, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    invoke-static {}, Lcom/google/android/location/m/a/f;->b()[Lcom/google/android/location/m/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    invoke-static {}, Lcom/google/android/location/m/a/f;->b()[Lcom/google/android/location/m/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    iput-object v1, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/h;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/h;->G:I

    .line 40
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/h;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/h;->f:[Lcom/google/android/location/m/a/h;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/h;->f:[Lcom/google/android/location/m/a/h;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/h;

    sput-object v0, Lcom/google/android/location/m/a/h;->f:[Lcom/google/android/location/m/a/h;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/h;->f:[Lcom/google/android/location/m/a/h;

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
    const/4 v1, 0x0

    .line 144
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 145
    iget-object v2, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 149
    :cond_0
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    iget-object v2, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 152
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    aget-object v3, v3, v0

    .line 154
    if-eqz v3, :cond_1

    .line 155
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 161
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 162
    iget-object v2, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    aget-object v2, v2, v1

    .line 163
    if-eqz v2, :cond_4

    .line 164
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 161
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 170
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/h;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/f;

    invoke-direct {v0}, Lcom/google/android/location/m/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/f;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/location/m/a/f;

    invoke-direct {v3}, Lcom/google/android/location/m/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/location/m/a/f;

    invoke-direct {v3}, Lcom/google/android/location/m/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/f;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    new-instance v3, Lcom/google/android/location/m/a/f;

    invoke-direct {v3}, Lcom/google/android/location/m/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    array-length v0, v0

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/google/android/location/m/a/f;

    invoke-direct {v3}, Lcom/google/android/location/m/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 119
    :cond_0
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 120
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    aget-object v2, v2, v0

    .line 123
    if-eqz v2, :cond_1

    .line 124
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    aget-object v0, v0, v1

    .line 131
    if-eqz v0, :cond_3

    .line 132
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 129
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 137
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 139
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 140
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/h;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/google/android/location/m/a/h;

    .line 62
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    if-nez v1, :cond_5

    .line 63
    iget-object v1, p1, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    if-nez v1, :cond_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    if-nez v1, :cond_6

    .line 72
    iget-object v1, p1, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    iget-object v2, p1, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    iget-object v2, p1, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 87
    iget-object v1, p1, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 93
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/h;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    iget-object v2, p1, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 75
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 90
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 101
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->c:[Lcom/google/android/location/m/a/f;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->d:[Lcom/google/android/location/m/a/f;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/h;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->a:Lcom/google/android/location/m/a/f;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/f;->hashCode()I

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/h;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_1

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/h;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2
.end method
