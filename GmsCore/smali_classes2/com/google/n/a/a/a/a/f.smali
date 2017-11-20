.class public final Lcom/google/n/a/a/a/a/f;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/n/a/a/a/a/f;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1362
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1363
    iput-object v0, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/f;->G:I

    .line 1364
    return-void
.end method

.method public static b()[Lcom/google/n/a/a/a/a/f;
    .locals 2

    .prologue
    .line 1345
    sget-object v0, Lcom/google/n/a/a/a/a/f;->c:[Lcom/google/n/a/a/a/a/f;

    if-nez v0, :cond_1

    .line 1346
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_0
    sget-object v0, Lcom/google/n/a/a/a/a/f;->c:[Lcom/google/n/a/a/a/a/f;

    if-nez v0, :cond_0

    .line 1349
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/f;

    sput-object v0, Lcom/google/n/a/a/a/a/f;->c:[Lcom/google/n/a/a/a/a/f;

    .line 1351
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    :cond_1
    sget-object v0, Lcom/google/n/a/a/a/a/f;->c:[Lcom/google/n/a/a/a/a/f;

    return-object v0

    .line 1351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1421
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1422
    iget-object v1, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1423
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1427
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1430
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1335
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

    iput-object v0, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1411
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1414
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1416
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1417
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1375
    if-ne p1, p0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return v0

    .line 1378
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/f;

    if-nez v2, :cond_2

    move v0, v1

    .line 1379
    goto :goto_0

    .line 1381
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/f;

    .line 1382
    iget-object v2, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1383
    iget-object v2, p1, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1384
    goto :goto_0

    .line 1386
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1387
    goto :goto_0

    .line 1389
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    if-nez v2, :cond_5

    .line 1390
    iget-object v2, p1, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1391
    goto :goto_0

    .line 1393
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1394
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1400
    iget-object v0, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1403
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 1404
    return v0

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1403
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method
