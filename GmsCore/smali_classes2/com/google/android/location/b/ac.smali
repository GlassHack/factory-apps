.class public final Lcom/google/android/location/b/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/g/a/b/b/a;

.field public b:J


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/b/ac;->b:J

    .line 512
    iput-object p1, p0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    .line 513
    return-void
.end method

.method static a(JJJJ)J
    .locals 2

    .prologue
    .line 684
    add-long v0, p2, p0

    sub-long/2addr v0, p4

    invoke-static {p6, p7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static b(J)I
    .locals 6

    .prologue
    .line 692
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 695
    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, v0

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 696
    const-wide/32 v4, 0x51d3440

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 697
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 699
    :cond_0
    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 567
    iget-object v0, p0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 578
    return-void
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Lcom/google/android/location/b/ac;->b(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 624
    return-void
.end method
