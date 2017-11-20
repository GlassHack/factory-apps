.class public final Lcom/google/n/a/a/a/a/o;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/n/a/a/a/a/o;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/n/a/a/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1380
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1381
    iput-object v0, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/o;->G:I

    .line 1382
    return-void
.end method

.method public static b()[Lcom/google/n/a/a/a/a/o;
    .locals 2

    .prologue
    .line 1363
    sget-object v0, Lcom/google/n/a/a/a/a/o;->c:[Lcom/google/n/a/a/a/a/o;

    if-nez v0, :cond_1

    .line 1364
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1366
    :try_start_0
    sget-object v0, Lcom/google/n/a/a/a/a/o;->c:[Lcom/google/n/a/a/a/a/o;

    if-nez v0, :cond_0

    .line 1367
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/o;

    sput-object v0, Lcom/google/n/a/a/a/a/o;->c:[Lcom/google/n/a/a/a/a/o;

    .line 1369
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    :cond_1
    sget-object v0, Lcom/google/n/a/a/a/a/o;->c:[Lcom/google/n/a/a/a/a/o;

    return-object v0

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1443
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1444
    iget-object v1, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1445
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    if-eqz v1, :cond_1

    .line 1449
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1452
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1357
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

    iput-object v0, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/n/a/a/a/a/d;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1433
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    if-eqz v0, :cond_1

    .line 1436
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1438
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1439
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1393
    if-ne p1, p0, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return v0

    .line 1396
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/o;

    if-nez v2, :cond_2

    move v0, v1

    .line 1397
    goto :goto_0

    .line 1399
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/o;

    .line 1400
    iget-object v2, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1401
    iget-object v2, p1, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1402
    goto :goto_0

    .line 1404
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1405
    goto :goto_0

    .line 1407
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    if-nez v2, :cond_5

    .line 1408
    iget-object v2, p1, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1409
    goto :goto_0

    .line 1412
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    invoke-virtual {v2, v3}, Lcom/google/n/a/a/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1413
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1421
    iget-object v0, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1424
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 1426
    return v0

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1424
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    invoke-virtual {v1}, Lcom/google/n/a/a/a/a/d;->hashCode()I

    move-result v1

    goto :goto_1
.end method
