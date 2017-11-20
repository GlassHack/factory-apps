.class public final Lcom/google/maps/api/android/lib6/c/ax;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/LatLng;

.field private final b:D

.field private final c:D

.field private final d:F

.field private volatile e:Z

.field private f:Lcom/google/maps/api/android/lib6/c/ay;

.field private g:I

.field private h:[Lcom/google/maps/api/android/lib6/c/az;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 4

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->h:[Lcom/google/maps/api/android/lib6/c/az;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ax;->a:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/c/ax;->b:D

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/c/ax;->c:D

    iput p2, p0, Lcom/google/maps/api/android/lib6/c/ax;->d:F

    return-void
.end method

.method private static a(D)I
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/g/a/b/b/f;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/r;->d:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v0, v4, v4}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/r;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/c/ax;->a(D)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/c/ax;->a(D)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, v5, v1}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    return-object v0
.end method

.method private static a(ILcom/google/g/a/b/b/f;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v0

    if-le v0, p0, :cond_1

    invoke-virtual {p1, v1, p0}, Lcom/google/g/a/b/b/f;->d(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ax;->f:Lcom/google/maps/api/android/lib6/c/ay;

    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v5, 0x1

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/ad;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ax;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/ax;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ax;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/ax;->d:F

    new-instance v3, Lcom/google/g/a/b/b/f;

    sget-object v4, Lcom/google/n/c/a/a/r;->e:Lcom/google/g/a/b/b/h;

    invoke-direct {v3, v4}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/ax;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x2

    invoke-static {v6, v7}, Lcom/google/maps/api/android/lib6/c/ax;->a(D)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    invoke-static {v6, v7}, Lcom/google/maps/api/android/lib6/c/ax;->a(D)I

    move-result v1

    invoke-virtual {v3, v8, v1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    float-to-int v1, v2

    invoke-virtual {v3, v9, v1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    :cond_0
    invoke-virtual {v0, v8, v3}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, v9, v5}, Lcom/google/g/a/b/b/f;->a(IZ)Lcom/google/g/a/b/b/f;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/b/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/google/n/c/a/a/ad;->b:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->g:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->g:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iput-boolean v8, p0, Lcom/google/maps/api/android/lib6/c/ax;->e:Z

    return v8

    :pswitch_0
    invoke-virtual {v2, v9}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    new-array v0, v3, [Lcom/google/maps/api/android/lib6/c/az;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->h:[Lcom/google/maps/api/android/lib6/c/az;

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v9, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/g/a/b/b/f;->d(I)I

    invoke-static {v1, v4}, Lcom/google/maps/api/android/lib6/c/ax;->a(ILcom/google/g/a/b/b/f;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v4}, Lcom/google/maps/api/android/lib6/c/ax;->a(ILcom/google/g/a/b/b/f;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v10}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v10}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    :cond_1
    new-instance v4, Lcom/google/maps/api/android/lib6/c/az;

    new-array v7, v9, [Ljava/lang/String;

    aput-object v5, v7, v1

    aput-object v6, v7, v8

    invoke-direct {v4, v7}, Lcom/google/maps/api/android/lib6/c/az;-><init>([Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/ax;->h:[Lcom/google/maps/api/android/lib6/c/az;

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->f:Lcom/google/maps/api/android/lib6/c/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->f:Lcom/google/maps/api/android/lib6/c/ay;

    invoke-interface {v0, p0}, Lcom/google/maps/api/android/lib6/c/ay;->a(Lcom/google/maps/api/android/lib6/c/ax;)V

    :cond_0
    return-void
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public final i()Lcom/google/maps/api/android/lib6/c/az;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->h:[Lcom/google/maps/api/android/lib6/c/az;

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->h:[Lcom/google/maps/api/android/lib6/c/az;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->h:[Lcom/google/maps/api/android/lib6/c/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ax;->h:[Lcom/google/maps/api/android/lib6/c/az;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
