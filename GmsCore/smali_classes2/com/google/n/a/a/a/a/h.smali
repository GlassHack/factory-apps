.class public final Lcom/google/n/a/a/a/a/h;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/n/a/a/a/a/h;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 334
    iput-object v0, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/h;->G:I

    .line 335
    return-void
.end method

.method public static b()[Lcom/google/n/a/a/a/a/h;
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/google/n/a/a/a/a/h;->c:[Lcom/google/n/a/a/a/a/h;

    if-nez v0, :cond_1

    .line 317
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    sget-object v0, Lcom/google/n/a/a/a/a/h;->c:[Lcom/google/n/a/a/a/a/h;

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/h;

    sput-object v0, Lcom/google/n/a/a/a/a/h;->c:[Lcom/google/n/a/a/a/a/h;

    .line 322
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_1
    sget-object v0, Lcom/google/n/a/a/a/a/h;->c:[Lcom/google/n/a/a/a/a/h;

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 394
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 396
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 400
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 403
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 310
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 387
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->a(ID)V

    .line 389
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 390
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 346
    if-ne p1, p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/h;

    if-nez v2, :cond_2

    move v0, v1

    .line 350
    goto :goto_0

    .line 352
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/h;

    .line 353
    iget-object v2, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 354
    iget-object v2, p1, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    .line 355
    goto :goto_0

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 358
    goto :goto_0

    .line 360
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    if-nez v2, :cond_5

    .line 361
    iget-object v2, p1, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    if-eqz v2, :cond_0

    move v0, v1

    .line 362
    goto :goto_0

    .line 364
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 365
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 375
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 377
    return v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_1
.end method
