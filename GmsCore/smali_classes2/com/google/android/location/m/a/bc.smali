.class public final Lcom/google/android/location/m/a/bc;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile l:[Lcom/google/android/location/m/a/bc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/location/m/a/at;

.field public c:Lcom/google/android/location/m/a/bh;

.field public d:Lcom/google/android/location/m/a/bi;

.field public e:Lcom/google/android/location/m/a/bk;

.field public f:Lcom/google/android/location/m/a/av;

.field public g:Lcom/google/android/location/m/a/bb;

.field public h:Lcom/google/android/location/m/a/bf;

.field public i:Lcom/google/android/location/m/a/aq;

.field public j:Lcom/google/android/location/m/a/bm;

.field public k:Lcom/google/android/location/m/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bc;->G:I

    .line 58
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/bc;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/bc;->l:[Lcom/google/android/location/m/a/bc;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/bc;->l:[Lcom/google/android/location/m/a/bc;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/bc;

    sput-object v0, Lcom/google/android/location/m/a/bc;->l:[Lcom/google/android/location/m/a/bc;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/bc;->l:[Lcom/google/android/location/m/a/bc;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    if-eqz v1, :cond_1

    .line 262
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    if-eqz v1, :cond_2

    .line 266
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    if-eqz v1, :cond_3

    .line 270
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    if-eqz v1, :cond_4

    .line 274
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    if-eqz v1, :cond_5

    .line 278
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    if-eqz v1, :cond_6

    .line 282
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    if-eqz v1, :cond_7

    .line 286
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    if-eqz v1, :cond_8

    .line 290
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    if-eqz v1, :cond_9

    .line 294
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    if-eqz v1, :cond_a

    .line 298
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_a
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bc;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/at;

    invoke-direct {v0}, Lcom/google/android/location/m/a/at;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/bh;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bh;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/location/m/a/bi;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bi;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/m/a/bk;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bk;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/m/a/av;

    invoke-direct {v0}, Lcom/google/android/location/m/a/av;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/location/m/a/bb;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bb;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/location/m/a/bf;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bf;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/location/m/a/d;

    invoke-direct {v0}, Lcom/google/android/location/m/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/location/m/a/aq;

    invoke-direct {v0}, Lcom/google/android/location/m/a/aq;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/location/m/a/bm;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bm;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

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
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    if-eqz v0, :cond_3

    .line 228
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    if-eqz v0, :cond_4

    .line 231
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    if-eqz v0, :cond_5

    .line 234
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    if-eqz v0, :cond_6

    .line 237
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 239
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    if-eqz v0, :cond_7

    .line 240
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    if-eqz v0, :cond_8

    .line 243
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    if-eqz v0, :cond_9

    .line 246
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    if-eqz v0, :cond_a

    .line 249
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 251
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 252
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bc;

    if-eqz v1, :cond_0

    .line 85
    check-cast p1, Lcom/google/android/location/m/a/bc;

    .line 86
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 87
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    if-nez v1, :cond_e

    .line 94
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    if-nez v1, :cond_0

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    if-nez v1, :cond_f

    .line 103
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    if-nez v1, :cond_0

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    if-nez v1, :cond_10

    .line 112
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    if-nez v1, :cond_0

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    if-nez v1, :cond_11

    .line 121
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    if-nez v1, :cond_0

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    if-nez v1, :cond_12

    .line 130
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    if-nez v1, :cond_0

    .line 138
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    if-nez v1, :cond_13

    .line 139
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    if-nez v1, :cond_0

    .line 147
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    if-nez v1, :cond_14

    .line 148
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    if-nez v1, :cond_0

    .line 156
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    if-nez v1, :cond_15

    .line 157
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    if-nez v1, :cond_0

    .line 165
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    if-nez v1, :cond_16

    .line 166
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    if-nez v1, :cond_0

    .line 174
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    if-nez v1, :cond_17

    .line 175
    iget-object v1, p1, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    if-nez v1, :cond_0

    .line 183
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bc;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 98
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/at;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 107
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 116
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 125
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 134
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/av;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 143
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 152
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 161
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/aq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 170
    :cond_16
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 179
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    iget-object v2, p1, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 191
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 195
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 197
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 199
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 201
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 203
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 205
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 209
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    if-nez v2, :cond_a

    :goto_a
    add-int/2addr v0, v1

    .line 211
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bc;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    return v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/at;->hashCode()I

    move-result v0

    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->c:Lcom/google/android/location/m/a/bh;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bh;->hashCode()I

    move-result v0

    goto :goto_2

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->d:Lcom/google/android/location/m/a/bi;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bi;->hashCode()I

    move-result v0

    goto :goto_3

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->e:Lcom/google/android/location/m/a/bk;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bk;->hashCode()I

    move-result v0

    goto :goto_4

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->f:Lcom/google/android/location/m/a/av;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/av;->hashCode()I

    move-result v0

    goto :goto_5

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->g:Lcom/google/android/location/m/a/bb;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bb;->hashCode()I

    move-result v0

    goto :goto_6

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->h:Lcom/google/android/location/m/a/bf;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bf;->hashCode()I

    move-result v0

    goto :goto_7

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->i:Lcom/google/android/location/m/a/aq;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/aq;->hashCode()I

    move-result v0

    goto :goto_8

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bm;->hashCode()I

    move-result v0

    goto :goto_9

    .line 209
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/d;->hashCode()I

    move-result v1

    goto :goto_a
.end method
