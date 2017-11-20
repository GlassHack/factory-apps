.class public final Lcom/google/android/location/fused/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/location/fused/av;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:F

.field public final f:Ljava/util/Collection;

.field public final g:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/fused/av;->a:Lcom/google/android/location/fused/av;

    return-void
.end method

.method private constructor <init>(JJJFLjava/util/Collection;Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-wide p1, p0, Lcom/google/android/location/fused/av;->b:J

    .line 181
    iput-wide p3, p0, Lcom/google/android/location/fused/av;->c:J

    .line 182
    iput-wide p5, p0, Lcom/google/android/location/fused/av;->d:J

    .line 183
    iput p7, p0, Lcom/google/android/location/fused/av;->e:F

    .line 184
    iput-object p8, p0, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    .line 185
    iput-object p9, p0, Lcom/google/android/location/fused/av;->g:Ljava/util/Collection;

    .line 186
    return-void
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;
    .locals 15

    .prologue
    .line 61
    const-wide v2, 0x7fffffffffffffffL

    .line 62
    const-wide v4, 0x7fffffffffffffffL

    .line 63
    const-wide v6, 0x7fffffffffffffffL

    .line 64
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 65
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v1, v0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v10

    .line 68
    invoke-virtual {v10}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v12

    .line 69
    invoke-virtual {v10}, Lcom/google/android/gms/location/LocationRequest;->d()J

    move-result-wide v8

    .line 70
    invoke-virtual {v10}, Lcom/google/android/gms/location/LocationRequest;->h()F

    move-result v10

    .line 71
    const/4 v14, 0x0

    cmpl-float v14, v10, v14

    if-nez v14, :cond_0

    cmp-long v14, v12, v4

    if-gez v14, :cond_0

    move-wide v4, v12

    .line 74
    :cond_0
    cmp-long v14, v12, v2

    if-gez v14, :cond_1

    move-wide v2, v12

    .line 77
    :cond_1
    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-eqz v12, :cond_2

    cmpg-float v12, v10, v1

    if-gez v12, :cond_2

    move v1, v10

    .line 80
    :cond_2
    cmp-long v10, v8, v6

    if-gez v10, :cond_3

    move-wide v6, v8

    .line 83
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b()Z

    goto :goto_0

    .line 88
    :cond_4
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_5

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    .line 89
    :cond_5
    const/4 v8, 0x0

    .line 93
    :goto_1
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 100
    :goto_2
    cmp-long v0, v4, v2

    if-gtz v0, :cond_7

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 106
    :goto_3
    new-instance v1, Lcom/google/android/location/fused/av;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/location/fused/av;-><init>(JJJFLjava/util/Collection;Ljava/util/Collection;)V

    return-object v1

    .line 96
    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, v2, v3, v0}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;JZ)Ljava/util/List;

    move-result-object v9

    goto :goto_2

    .line 103
    :cond_7
    const/4 v0, 0x1

    invoke-static {p0, v4, v5, v0}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;JZ)Ljava/util/List;

    move-result-object v10

    goto :goto_3

    :cond_8
    move v8, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/Collection;JZ)Ljava/util/List;
    .locals 9

    .prologue
    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 162
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest;->h()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/fused/av;)Lcom/google/android/location/fused/av;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-wide v4, p1, Lcom/google/android/location/fused/av;->b:J

    iget-wide v6, p0, Lcom/google/android/location/fused/av;->b:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/google/android/location/fused/av;->e:F

    iget v3, p0, Lcom/google/android/location/fused/av;->e:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    move v0, v1

    .line 123
    :goto_0
    iget-wide v4, p1, Lcom/google/android/location/fused/av;->c:J

    iget-wide v6, p0, Lcom/google/android/location/fused/av;->c:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 125
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 126
    sget-object v1, Lcom/google/android/location/fused/av;->a:Lcom/google/android/location/fused/av;

    .line 145
    :goto_2
    return-object v1

    :cond_0
    move v0, v2

    .line 120
    goto :goto_0

    :cond_1
    move v1, v2

    .line 123
    goto :goto_1

    .line 127
    :cond_2
    if-eqz v0, :cond_3

    .line 128
    new-instance v1, Lcom/google/android/location/fused/av;

    iget-wide v2, p0, Lcom/google/android/location/fused/av;->c:J

    iget-wide v4, p0, Lcom/google/android/location/fused/av;->c:J

    iget-wide v6, p0, Lcom/google/android/location/fused/av;->d:J

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/location/fused/av;->g:Ljava/util/Collection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/google/android/location/fused/av;-><init>(JJJFLjava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2

    .line 135
    :cond_3
    if-eqz v1, :cond_4

    .line 136
    new-instance v1, Lcom/google/android/location/fused/av;

    iget-wide v2, p0, Lcom/google/android/location/fused/av;->b:J

    const-wide v4, 0x7fffffffffffffffL

    iget-wide v6, p0, Lcom/google/android/location/fused/av;->d:J

    iget v8, p0, Lcom/google/android/location/fused/av;->e:F

    iget-object v9, p0, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/google/android/location/fused/av;-><init>(JJJFLjava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2

    :cond_4
    move-object v1, p0

    .line 145
    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 190
    instance-of v1, p1, Lcom/google/android/location/fused/av;

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    check-cast p1, Lcom/google/android/location/fused/av;

    .line 195
    iget-wide v2, p0, Lcom/google/android/location/fused/av;->b:J

    iget-wide v4, p1, Lcom/google/android/location/fused/av;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/location/fused/av;->c:J

    iget-wide v4, p1, Lcom/google/android/location/fused/av;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/location/fused/av;->e:F

    iget v2, p1, Lcom/google/android/location/fused/av;->e:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    iget-object v2, p1, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/fused/av;->g:Ljava/util/Collection;

    iget-object v2, p1, Lcom/google/android/location/fused/av;->g:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 204
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/location/fused/av;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/location/fused/av;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/location/fused/av;->e:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/fused/av;->g:Ljava/util/Collection;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationRequestSummary["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "minIntervalMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/fused/av;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", minIntervalNoDistanceMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/fused/av;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", minDistanceMeters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/fused/av;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", blameClients "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", blameNoDistanceClients "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/fused/av;->g:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
