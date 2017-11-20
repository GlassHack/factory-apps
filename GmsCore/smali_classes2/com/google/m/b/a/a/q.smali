.class public final Lcom/google/m/b/a/a/q;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:J

.field private c:Z

.field private d:I

.field private e:Z

.field private f:J

.field private g:Ljava/util/List;

.field private h:Z

.field private i:Lcom/google/protobuf/a/a;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 5239
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 5244
    iput v1, p0, Lcom/google/m/b/a/a/q;->d:I

    .line 5261
    iput-wide v2, p0, Lcom/google/m/b/a/a/q;->b:J

    .line 5278
    iput-wide v2, p0, Lcom/google/m/b/a/a/q;->f:J

    .line 5294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/a/q;->g:Ljava/util/List;

    .line 5328
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/a/q;->i:Lcom/google/protobuf/a/a;

    .line 5345
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/q;->k:Ljava/lang/String;

    .line 5397
    iput v1, p0, Lcom/google/m/b/a/a/q;->l:I

    .line 5239
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 5400
    iget v0, p0, Lcom/google/m/b/a/a/q;->l:I

    if-gez v0, :cond_0

    .line 5402
    invoke-virtual {p0}, Lcom/google/m/b/a/a/q;->b()I

    .line 5404
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/q;->l:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/a/q;
    .locals 1

    .prologue
    .line 5248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/q;->c:Z

    .line 5249
    iput p1, p0, Lcom/google/m/b/a/a/q;->d:I

    .line 5250
    return-object p0
.end method

.method public final a(J)Lcom/google/m/b/a/a/q;
    .locals 1

    .prologue
    .line 5265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/q;->a:Z

    .line 5266
    iput-wide p1, p0, Lcom/google/m/b/a/a/q;->b:J

    .line 5267
    return-object p0
.end method

.method public final a(Lcom/google/m/b/a/a/s;)Lcom/google/m/b/a/a/q;
    .locals 1

    .prologue
    .line 5311
    if-nez p1, :cond_0

    .line 5312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5314
    :cond_0
    iget-object v0, p0, Lcom/google/m/b/a/a/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/m/b/a/a/q;->g:Ljava/util/List;

    .line 5317
    :cond_1
    iget-object v0, p0, Lcom/google/m/b/a/a/q;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5318
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5236
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/q;->a(I)Lcom/google/m/b/a/a/q;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/m/b/a/a/q;->a(J)Lcom/google/m/b/a/a/q;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/m/b/a/a/q;->b(J)Lcom/google/m/b/a/a/q;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/m/b/a/a/s;

    invoke-direct {v0}, Lcom/google/m/b/a/a/s;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/q;->a(Lcom/google/m/b/a/a/s;)Lcom/google/m/b/a/a/q;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/q;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/q;->i:Lcom/google/protobuf/a/a;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/q;->j:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/q;->k:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
        0x1388a -> :sswitch_5
        0x13892 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 5377
    iget-boolean v0, p0, Lcom/google/m/b/a/a/q;->c:Z

    if-eqz v0, :cond_0

    .line 5378
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/a/q;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 5380
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/q;->a:Z

    if-eqz v0, :cond_1

    .line 5381
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/m/b/a/a/q;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 5383
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/q;->e:Z

    if-eqz v0, :cond_2

    .line 5384
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/m/b/a/a/q;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 5386
    :cond_2
    iget-object v0, p0, Lcom/google/m/b/a/a/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/s;

    .line 5387
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 5389
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/q;->h:Z

    if-eqz v0, :cond_4

    .line 5390
    const/16 v0, 0x2711

    iget-object v1, p0, Lcom/google/m/b/a/a/q;->i:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 5392
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/q;->j:Z

    if-eqz v0, :cond_5

    .line 5393
    const/16 v0, 0x2712

    iget-object v1, p0, Lcom/google/m/b/a/a/q;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 5395
    :cond_5
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 5409
    const/4 v0, 0x0

    .line 5410
    iget-boolean v1, p0, Lcom/google/m/b/a/a/q;->c:Z

    if-eqz v1, :cond_0

    .line 5411
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/a/q;->d:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5414
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/q;->a:Z

    if-eqz v1, :cond_1

    .line 5415
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/m/b/a/a/q;->b:J

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 5418
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/q;->e:Z

    if-eqz v1, :cond_2

    .line 5419
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/m/b/a/a/q;->f:J

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 5422
    :cond_2
    iget-object v1, p0, Lcom/google/m/b/a/a/q;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/s;

    .line 5423
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 5425
    goto :goto_0

    .line 5426
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/q;->h:Z

    if-eqz v0, :cond_4

    .line 5427
    const/16 v0, 0x2711

    iget-object v2, p0, Lcom/google/m/b/a/a/q;->i:Lcom/google/protobuf/a/a;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/2addr v1, v0

    .line 5430
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/q;->j:Z

    if-eqz v0, :cond_5

    .line 5431
    const/16 v0, 0x2712

    iget-object v2, p0, Lcom/google/m/b/a/a/q;->k:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 5434
    :cond_5
    iput v1, p0, Lcom/google/m/b/a/a/q;->l:I

    .line 5435
    return v1
.end method

.method public final b(J)Lcom/google/m/b/a/a/q;
    .locals 1

    .prologue
    .line 5282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/q;->e:Z

    .line 5283
    iput-wide p1, p0, Lcom/google/m/b/a/a/q;->f:J

    .line 5284
    return-object p0
.end method
