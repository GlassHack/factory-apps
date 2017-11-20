.class public final Lcom/google/android/location/reporting/config/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/reporting/config/AccountConfig;

.field public final b:Lcom/google/android/location/reporting/config/d;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/reporting/config/AccountConfig;Lcom/google/android/location/reporting/config/d;J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/location/reporting/config/c;->a:Lcom/google/android/location/reporting/config/AccountConfig;

    .line 27
    iput-object p2, p0, Lcom/google/android/location/reporting/config/c;->b:Lcom/google/android/location/reporting/config/d;

    .line 28
    iput-wide p3, p0, Lcom/google/android/location/reporting/config/c;->c:J

    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 39
    instance-of v1, p1, Lcom/google/android/location/reporting/config/c;

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    check-cast p1, Lcom/google/android/location/reporting/config/c;

    .line 45
    iget-wide v2, p0, Lcom/google/android/location/reporting/config/c;->c:J

    iget-wide v4, p1, Lcom/google/android/location/reporting/config/c;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/c;->a:Lcom/google/android/location/reporting/config/AccountConfig;

    iget-object v2, p1, Lcom/google/android/location/reporting/config/c;->a:Lcom/google/android/location/reporting/config/AccountConfig;

    invoke-virtual {v1, v2}, Lcom/google/android/location/reporting/config/AccountConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/c;->b:Lcom/google/android/location/reporting/config/d;

    iget-object v2, p1, Lcom/google/android/location/reporting/config/c;->b:Lcom/google/android/location/reporting/config/d;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/reporting/config/c;->a:Lcom/google/android/location/reporting/config/AccountConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/config/c;->b:Lcom/google/android/location/reporting/config/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/c;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivationChange{account="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/config/c;->a:Lcom/google/android/location/reporting/config/AccountConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/c;->b:Lcom/google/android/location/reporting/config/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/c;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
