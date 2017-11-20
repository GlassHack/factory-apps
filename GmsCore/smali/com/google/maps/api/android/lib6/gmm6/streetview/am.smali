.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/am;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final b:D

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->a:D

    iput-wide p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->b:D

    const-wide/16 v0, 0x11

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x25

    mul-long/2addr v0, v2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/g/a/b/b/f;
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/r;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->a:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->b:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/Formatter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
