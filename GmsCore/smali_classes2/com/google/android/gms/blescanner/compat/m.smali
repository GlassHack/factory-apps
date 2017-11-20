.class public final Lcom/google/android/gms/blescanner/compat/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/os/ParcelUuid;

.field d:Landroid/os/ParcelUuid;

.field e:Landroid/os/ParcelUuid;

.field f:[B

.field g:[B

.field h:I

.field i:[B

.field j:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/m;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/blescanner/compat/ScanFilter;
    .locals 12

    .prologue
    .line 584
    new-instance v0, Lcom/google/android/gms/blescanner/compat/ScanFilter;

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/blescanner/compat/m;->c:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lcom/google/android/gms/blescanner/compat/m;->d:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/google/android/gms/blescanner/compat/m;->e:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lcom/google/android/gms/blescanner/compat/m;->f:[B

    iget-object v7, p0, Lcom/google/android/gms/blescanner/compat/m;->g:[B

    iget v8, p0, Lcom/google/android/gms/blescanner/compat/m;->h:I

    iget-object v9, p0, Lcom/google/android/gms/blescanner/compat/m;->i:[B

    iget-object v10, p0, Lcom/google/android/gms/blescanner/compat/m;->j:[B

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/blescanner/compat/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BB)V

    return-object v0
.end method

.method public final a(I[B[B)Lcom/google/android/gms/blescanner/compat/m;
    .locals 2

    .prologue
    .line 557
    if-eqz p2, :cond_0

    if-gez p1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/m;->j:[B

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/m;->i:[B

    if-nez v0, :cond_1

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/m;->i:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/m;->j:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_2
    iput p1, p0, Lcom/google/android/gms/blescanner/compat/m;->h:I

    .line 573
    iput-object p2, p0, Lcom/google/android/gms/blescanner/compat/m;->i:[B

    .line 574
    iput-object p3, p0, Lcom/google/android/gms/blescanner/compat/m;->j:[B

    .line 575
    return-object p0
.end method

.method public final a(Landroid/os/ParcelUuid;[B[B)Lcom/google/android/gms/blescanner/compat/m;
    .locals 2

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/m;->g:[B

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/m;->f:[B

    if-nez v0, :cond_1

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/m;->f:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/m;->g:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for service data and service data mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/m;->e:Landroid/os/ParcelUuid;

    .line 522
    iput-object p2, p0, Lcom/google/android/gms/blescanner/compat/m;->f:[B

    .line 523
    iput-object p3, p0, Lcom/google/android/gms/blescanner/compat/m;->g:[B

    .line 524
    return-object p0
.end method
