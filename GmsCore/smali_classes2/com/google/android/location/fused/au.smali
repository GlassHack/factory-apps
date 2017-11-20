.class public final Lcom/google/android/location/fused/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/location/fused/au;->a:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/google/android/location/fused/au;->b:I

    .line 70
    iput-wide p3, p0, Lcom/google/android/location/fused/au;->c:J

    .line 71
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 75
    instance-of v1, p1, Lcom/google/android/location/fused/au;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    check-cast p1, Lcom/google/android/location/fused/au;

    .line 80
    iget-object v1, p0, Lcom/google/android/location/fused/au;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/fused/au;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/location/fused/au;->b:I

    iget v2, p1, Lcom/google/android/location/fused/au;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/location/fused/au;->c:J

    iget-wide v4, p1, Lcom/google/android/location/fused/au;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/au;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/location/fused/au;->b:I

    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/location/fused/au;->c:J

    iget-wide v4, p0, Lcom/google/android/location/fused/au;->c:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 90
    return v0
.end method
