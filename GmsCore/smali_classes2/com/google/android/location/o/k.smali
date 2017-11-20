.class public Lcom/google/android/location/o/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field private final b:[I

.field private c:J

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/location/o/k;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/location/o/k;->b:[I

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/o/k;->c:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/o/k;->d:I

    .line 40
    return-void
.end method

.method public static varargs a([Lcom/google/android/location/o/k;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/location/o/l;

    invoke-direct {v0, p0}, Lcom/google/android/location/o/l;-><init>([Lcom/google/android/location/o/k;)V

    return-object v0
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 167
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/location/o/k;->d:I

    if-lt p1, v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/o/k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    return-void
.end method

.method private f(I)I
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/location/o/k;->e:I

    sub-int/2addr v0, p1

    .line 177
    if-gez v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/android/location/o/k;->b:[I

    array-length v1, v1

    add-int/2addr v0, v1

    .line 181
    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/location/o/k;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Cookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/location/o/k;->b(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(BJ)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    iget-wide v0, p0, Lcom/google/android/location/o/k;->c:J

    sub-long v0, p2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 44
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x1000000

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 49
    :cond_0
    iput-wide p2, p0, Lcom/google/android/location/o/k;->c:J

    move-wide v0, v2

    .line 52
    :cond_1
    iget v2, p0, Lcom/google/android/location/o/k;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/location/o/k;->e:I

    .line 53
    iget v2, p0, Lcom/google/android/location/o/k;->e:I

    iget-object v3, p0, Lcom/google/android/location/o/k;->b:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/location/o/k;->e:I

    .line 56
    :cond_2
    iget v2, p0, Lcom/google/android/location/o/k;->d:I

    iget-object v3, p0, Lcom/google/android/location/o/k;->b:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 57
    iget v2, p0, Lcom/google/android/location/o/k;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/location/o/k;->d:I

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/o/k;->b:[I

    iget v3, p0, Lcom/google/android/location/o/k;->e:I

    shl-int/lit8 v4, p1, 0x18

    const-wide/32 v6, 0xffffff

    and-long/2addr v0, v6

    long-to-int v0, v0

    or-int/2addr v0, v4

    aput v0, v2, v3

    .line 60
    return-void
.end method

.method public final b(I)B
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/location/o/k;->e(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/location/o/k;->b:[I

    invoke-direct {p0, p1}, Lcom/google/android/location/o/k;->f(I)I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method public final c(I)J
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/location/o/k;->e(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/location/o/k;->b:[I

    invoke-direct {p0, p1}, Lcom/google/android/location/o/k;->f(I)I

    move-result v1

    aget v0, v0, v1

    int-to-long v0, v0

    .line 86
    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/location/o/k;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/o/k;->c(I)J

    move-result-wide v0

    .line 108
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 109
    sget-object v0, Lcom/google/android/location/o/k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/location/o/k;->d:I

    return v0
.end method
