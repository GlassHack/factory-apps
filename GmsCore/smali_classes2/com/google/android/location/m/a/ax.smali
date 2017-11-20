.class public final Lcom/google/android/location/m/a/ax;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile h:[Lcom/google/android/location/m/a/ax;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Lcom/google/android/location/m/a/bj;

.field public g:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/location/m/a/bj;->b()[Lcom/google/android/location/m/a/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/ax;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ax;->G:I

    .line 46
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/ax;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/ax;->h:[Lcom/google/android/location/m/a/ax;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/ax;->h:[Lcom/google/android/location/m/a/ax;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/ax;

    sput-object v0, Lcom/google/android/location/m/a/ax;->h:[Lcom/google/android/location/m/a/ax;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/ax;->h:[Lcom/google/android/location/m/a/ax;

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
    const/4 v1, 0x0

    .line 176
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 177
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 178
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 182
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 186
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 190
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 194
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 197
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v0

    move v0, v1

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 199
    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    aget-object v3, v3, v0

    .line 200
    if-eqz v3, :cond_5

    .line 201
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 198
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v2

    .line 206
    :cond_7
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_a

    move v2, v1

    move v3, v1

    .line 209
    :goto_1
    iget-object v4, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_9

    .line 210
    iget-object v4, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 211
    if-eqz v4, :cond_8

    .line 212
    add-int/lit8 v3, v3, 0x1

    .line 213
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 209
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_9
    add-int/2addr v0, v2

    .line 218
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 220
    :cond_a
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ax;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/bj;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/bj;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bj;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/bj;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bj;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 147
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 150
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 153
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 157
    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    aget-object v2, v2, v0

    .line 158
    if-eqz v2, :cond_5

    .line 159
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 156
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 165
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 166
    if-eqz v0, :cond_7

    .line 167
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 164
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 172
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 64
    const/4 v0, 0x1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ax;

    if-eqz v1, :cond_0

    .line 69
    check-cast p1, Lcom/google/android/location/m/a/ax;

    .line 70
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 71
    iget-object v1, p1, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 78
    iget-object v1, p1, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 92
    iget-object v1, p1, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 99
    iget-object v1, p1, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 105
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    iget-object v2, p1, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ax;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 81
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 88
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 95
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 102
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 121
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 123
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 125
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->f:[Lcom/google/android/location/m/a/bj;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->g:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ax;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ax;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ax;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
