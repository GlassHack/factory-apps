.class public final Lcom/google/android/gms/internal/gx;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gx;->a:[B

    iput p2, p0, Lcom/google/android/gms/internal/gx;->c:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/gx;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/gx;->c(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([B)Lcom/google/android/gms/internal/gx;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/gx;->a([BII)Lcom/google/android/gms/internal/gx;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)Lcom/google/android/gms/internal/gx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gx;-><init>([BII)V

    return-object v0
.end method

.method private a(B)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/gx;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/gx;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gx$a;

    iget v1, p0, Lcom/google/android/gms/internal/gx;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/gx;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/gx$a;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gx;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/gx;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gx;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private a(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gx;->c(J)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gx;->e(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->f(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gx;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/android/gms/internal/bk;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->f(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->c(Lcom/google/android/gms/internal/bk;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->d([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static b(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gx;->d(J)I

    move-result v0

    return v0
.end method

.method private static b(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gx;->b(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gx;->b([B)V

    return-void
.end method

.method private b([BII)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/gx;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/gx;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gx;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/gx;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/gx;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/gx;->c:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gx$a;

    iget v1, p0, Lcom/google/android/gms/internal/gx;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/gx;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/gx$a;-><init>(II)V

    throw v0
.end method

.method public static c(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static c(ILcom/google/android/gms/internal/bk;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/gx;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->d(Lcom/google/android/gms/internal/bk;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static c(Lcom/google/android/gms/internal/bk;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bk;->d()I

    move-result v0

    return v0
.end method

.method private c(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gx;->e(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gx;->e(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method private c([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gx;->b(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gx;->b([B)V

    return-void
.end method

.method private static d(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static d(Lcom/google/android/gms/internal/bk;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bk;->d()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static d([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->c(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method private d(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gx;->b(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/gx;->c(J)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gx;->a(B)V

    return-void
.end method

.method private static f(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/bo;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->c(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gx;->c(II)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gx;->d(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gx;->c(II)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gx;->a(J)V

    return-void
.end method

.method public final a(ILcom/google/android/gms/internal/bk;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gx;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gx;->b(Lcom/google/android/gms/internal/bk;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gx;->c(II)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gx;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gx;->c(II)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gx;->a(Z)V

    return-void
.end method

.method public final a(I[B)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gx;->c(II)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gx;->c([B)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bk;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gx;->e(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gx;->e(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/bk;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bk;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gx;->b(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method

.method public final b([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/gx;->b([BII)V

    return-void
.end method

.method public final c(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/bo;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gx;->b(I)V

    return-void
.end method
