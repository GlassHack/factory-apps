.class final Lcom/google/android/maps/driveabout/store/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:[B


# direct methods
.method constructor <init>(J[B)V
    .locals 1

    .prologue
    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/store/ad;->a:J

    .line 1053
    if-nez p3, :cond_0

    .line 1054
    invoke-static {}, Lcom/google/android/maps/driveabout/store/y;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ad;->b:[B

    .line 1058
    :goto_0
    return-void

    .line 1056
    :cond_0
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/ad;->b:[B

    goto :goto_0
.end method


# virtual methods
.method final a()J
    .locals 2

    .prologue
    .line 1066
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/ad;->a:J

    return-wide v0
.end method

.method final b()[B
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ad;->b:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1083
    if-ne p0, p1, :cond_1

    .line 1084
    const/4 v0, 0x1

    .line 1097
    :cond_0
    :goto_0
    return v0

    .line 1087
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1091
    check-cast p1, Lcom/google/android/maps/driveabout/store/ad;

    .line 1093
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/store/ad;->a:J

    iget-wide v3, p1, Lcom/google/android/maps/driveabout/store/ad;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ad;->b:[B

    iget-object v1, p1, Lcom/google/android/maps/driveabout/store/ad;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 1102
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/ad;->a:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/store/ad;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ad;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1104
    return v0
.end method
