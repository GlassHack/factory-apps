.class public final Lcom/google/a/a/a/a/a/d;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile h:[Lcom/google/a/a/a/a/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 280
    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/a/d;->G:I

    .line 281
    return-void
.end method

.method public static b()[Lcom/google/a/a/a/a/a/d;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/google/a/a/a/a/a/d;->h:[Lcom/google/a/a/a/a/a/d;

    if-nez v0, :cond_1

    .line 248
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/a/a/d;->h:[Lcom/google/a/a/a/a/a/d;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/a/a/d;

    sput-object v0, Lcom/google/a/a/a/a/a/d;->h:[Lcom/google/a/a/a/a/a/d;

    .line 253
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_1
    sget-object v0, Lcom/google/a/a/a/a/a/d;->h:[Lcom/google/a/a/a/a/a/d;

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 326
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 330
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 334
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 338
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 342
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 346
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 350
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/a/a/a/a/a/d;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_6
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 241
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/d;->g:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 302
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 305
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 308
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 311
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 314
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 317
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/a/a/a/a/a/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 319
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 320
    return-void
.end method
