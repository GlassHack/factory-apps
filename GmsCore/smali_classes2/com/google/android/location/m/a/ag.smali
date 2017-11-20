.class public final Lcom/google/android/location/m/a/ag;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile i:[Lcom/google/android/location/m/a/ag;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/google/android/location/m/a/aj;

.field public c:[Lcom/google/android/location/m/a/r;

.field public d:Ljava/lang/Integer;

.field public e:Lcom/google/android/location/m/a/bz;

.field public f:Lcom/google/android/location/m/a/ca;

.field public g:Lcom/google/android/location/m/a/be;

.field public h:Lcom/google/android/location/m/a/aj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    invoke-static {}, Lcom/google/android/location/m/a/r;->b()[Lcom/google/android/location/m/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    iput-object v1, p0, Lcom/google/android/location/m/a/ag;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ag;->G:I

    .line 49
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/ag;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/ag;->i:[Lcom/google/android/location/m/a/ag;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/ag;->i:[Lcom/google/android/location/m/a/ag;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/ag;

    sput-object v0, Lcom/google/android/location/m/a/ag;->i:[Lcom/google/android/location/m/a/ag;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/ag;->i:[Lcom/google/android/location/m/a/ag;

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
    .line 196
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 197
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 204
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    aget-object v2, v2, v0

    .line 206
    if-eqz v2, :cond_1

    .line 207
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 213
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    if-eqz v1, :cond_5

    .line 217
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    if-eqz v1, :cond_6

    .line 221
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    if-eqz v1, :cond_7

    .line 225
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    if-eqz v1, :cond_8

    .line 229
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_8
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ag;->a(Lcom/google/protobuf/nano/a;I)Z

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

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/aj;

    invoke-direct {v0}, Lcom/google/android/location/m/a/aj;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/r;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/location/m/a/r;

    invoke-direct {v3}, Lcom/google/android/location/m/a/r;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/location/m/a/r;

    invoke-direct {v3}, Lcom/google/android/location/m/a/r;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/m/a/bz;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bz;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/location/m/a/ca;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ca;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/location/m/a/aj;

    invoke-direct {v0}, Lcom/google/android/location/m/a/aj;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/location/m/a/be;

    invoke-direct {v0}, Lcom/google/android/location/m/a/be;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 165
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 169
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    aget-object v1, v1, v0

    .line 171
    if-eqz v1, :cond_1

    .line 172
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 177
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    if-eqz v0, :cond_4

    .line 180
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    if-eqz v0, :cond_5

    .line 183
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    if-eqz v0, :cond_6

    .line 186
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    if-eqz v0, :cond_7

    .line 189
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 191
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 192
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    .line 68
    const/4 v0, 0x1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ag;

    if-eqz v1, :cond_0

    .line 73
    check-cast p1, Lcom/google/android/location/m/a/ag;

    .line 74
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 75
    iget-object v1, p1, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_a

    .line 81
    iget-object v1, p1, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_0

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    if-nez v1, :cond_b

    .line 94
    iget-object v1, p1, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    if-nez v1, :cond_c

    .line 101
    iget-object v1, p1, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    if-nez v1, :cond_0

    .line 109
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    if-nez v1, :cond_d

    .line 110
    iget-object v1, p1, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    if-nez v1, :cond_0

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    if-nez v1, :cond_e

    .line 119
    iget-object v1, p1, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    if-nez v1, :cond_0

    .line 127
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_f

    .line 128
    iget-object v1, p1, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_0

    .line 136
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ag;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 78
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 85
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/aj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 97
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 105
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 114
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ca;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 123
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/be;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 132
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    iget-object v2, p1, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/aj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 143
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->c:[Lcom/google/android/location/m/a/r;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ag;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->b:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/aj;->hashCode()I

    move-result v0

    goto :goto_1

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->e:Lcom/google/android/location/m/a/bz;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bz;->hashCode()I

    move-result v0

    goto :goto_3

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->f:Lcom/google/android/location/m/a/ca;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ca;->hashCode()I

    move-result v0

    goto :goto_4

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ag;->g:Lcom/google/android/location/m/a/be;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/be;->hashCode()I

    move-result v0

    goto :goto_5

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ag;->h:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/aj;->hashCode()I

    move-result v1

    goto :goto_6
.end method
