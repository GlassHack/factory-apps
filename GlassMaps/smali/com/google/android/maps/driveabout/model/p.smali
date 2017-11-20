.class public final Lcom/google/android/maps/driveabout/model/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/k;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/k;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "full feature ID required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;
    .locals 2

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/model/p;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/model/p;-><init>(Lcom/google/android/maps/driveabout/model/k;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/model/p;

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/k;->b()J

    move-result-wide v2

    check-cast p1, Lcom/google/android/maps/driveabout/model/p;

    iget-object v4, p1, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/k;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 70
    :cond_2
    instance-of v2, p1, Lcom/google/android/maps/driveabout/model/r;

    if-eqz v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/k;->b()J

    move-result-wide v2

    check-cast p1, Lcom/google/android/maps/driveabout/model/r;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/r;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/k;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/k;->b()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/p;->a:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
