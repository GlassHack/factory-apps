.class public final Lcom/google/android/gms/auth/login/al;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1252
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/al;->a:Ljava/lang/String;

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/al;->b:Ljava/lang/String;

    .line 1291
    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->c:Z

    .line 1308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/al;->d:Ljava/lang/String;

    .line 1325
    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->e:Z

    .line 1342
    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->f:Z

    .line 1359
    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->g:Z

    .line 1376
    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->i:Z

    .line 1436
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/login/al;->q:I

    .line 1252
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1439
    iget v0, p0, Lcom/google/android/gms/auth/login/al;->q:I

    if-gez v0, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/al;->b()I

    .line 1443
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/login/al;->q:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1249
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->j:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/al;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->k:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/al;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->c:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->m:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/al;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->n:Z

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->e:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->o:Z

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->f:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->g:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->i:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 1410
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->j:Z

    if-eqz v0, :cond_0

    .line 1411
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/al;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1413
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->k:Z

    if-eqz v0, :cond_1

    .line 1414
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/login/al;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1416
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->l:Z

    if-eqz v0, :cond_2

    .line 1417
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1419
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->m:Z

    if-eqz v0, :cond_3

    .line 1420
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/auth/login/al;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1422
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->n:Z

    if-eqz v0, :cond_4

    .line 1423
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1425
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->o:Z

    if-eqz v0, :cond_5

    .line 1426
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1428
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->p:Z

    if-eqz v0, :cond_6

    .line 1429
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1431
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/al;->h:Z

    if-eqz v0, :cond_7

    .line 1432
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->i:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1434
    :cond_7
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 1448
    const/4 v0, 0x0

    .line 1449
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->j:Z

    if-eqz v1, :cond_0

    .line 1450
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/al;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1453
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->k:Z

    if-eqz v1, :cond_1

    .line 1454
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/login/al;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1457
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->l:Z

    if-eqz v1, :cond_2

    .line 1458
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/al;->c:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1461
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->m:Z

    if-eqz v1, :cond_3

    .line 1462
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/login/al;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1465
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->n:Z

    if-eqz v1, :cond_4

    .line 1466
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/al;->e:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1469
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->o:Z

    if-eqz v1, :cond_5

    .line 1470
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/al;->f:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1473
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->p:Z

    if-eqz v1, :cond_6

    .line 1474
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/al;->g:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1477
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/al;->h:Z

    if-eqz v1, :cond_7

    .line 1478
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/al;->i:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1481
    :cond_7
    iput v0, p0, Lcom/google/android/gms/auth/login/al;->q:I

    .line 1482
    return v0
.end method
