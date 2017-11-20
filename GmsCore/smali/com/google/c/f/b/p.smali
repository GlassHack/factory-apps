.class public final Lcom/google/c/f/b/p;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/c/f/b/k;

.field public e:Lcom/google/c/f/b/q;

.field public f:Lcom/google/c/f/b/o;

.field public g:Lcom/google/c/f/b/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 327
    iput-object v0, p0, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/c/f/b/p;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/p;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    iput-object v0, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    iput-object v0, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    iput-object v0, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    iput-object v0, p0, Lcom/google/c/f/b/p;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/p;->G:I

    .line 328
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 372
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/google/c/f/b/p;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 378
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/c/f/b/p;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/google/c/f/b/p;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 382
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/c/f/b/p;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    if-eqz v1, :cond_3

    .line 386
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_3
    iget-object v1, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    if-eqz v1, :cond_4

    .line 390
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_4
    iget-object v1, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    if-eqz v1, :cond_5

    .line 394
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 397
    :cond_5
    iget-object v1, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    if-eqz v1, :cond_6

    .line 398
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    :cond_6
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/p;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/p;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/p;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b/k;

    invoke-direct {v0}, Lcom/google/c/f/b/k;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/f/b/q;

    invoke-direct {v0}, Lcom/google/c/f/b/q;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/c/f/b/o;

    invoke-direct {v0}, Lcom/google/c/f/b/o;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    :cond_3
    iget-object v0, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/c/f/b/m;

    invoke-direct {v0}, Lcom/google/c/f/b/m;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    :cond_4
    iget-object v0, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/b/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 353
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/c/f/b/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    if-eqz v0, :cond_3

    .line 356
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    if-eqz v0, :cond_4

    .line 359
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 361
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    if-eqz v0, :cond_5

    .line 362
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 364
    :cond_5
    iget-object v0, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    if-eqz v0, :cond_6

    .line 365
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/c/f/b/p;->g:Lcom/google/c/f/b/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 367
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 368
    return-void
.end method
