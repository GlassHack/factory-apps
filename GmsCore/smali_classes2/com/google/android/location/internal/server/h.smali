.class public final Lcom/google/android/location/internal/server/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/location/internal/server/h;->a:I

    .line 39
    return-void
.end method

.method private static a(Landroid/location/Location;Ljava/lang/Object;)[B
    .locals 12

    .prologue
    const-wide v10, 0x416312d000000000L    # 1.0E7

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x6

    .line 127
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 128
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->c:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 130
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->r:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 136
    invoke-virtual {v0, v9, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 137
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v9, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 140
    :cond_0
    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->i:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 141
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v10

    double-to-int v4, v4

    invoke-virtual {v3, v8, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 142
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v10

    double-to-int v4, v4

    invoke-virtual {v3, v7, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 143
    invoke-virtual {v2, v8, v3}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 146
    if-nez p1, :cond_2

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 179
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->a([B)V

    .line 180
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->a(I)V

    .line 181
    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->f()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_1
    return-object v0

    .line 149
    :cond_2
    instance-of v2, p1, Lcom/google/android/location/f/af;

    if-eqz v2, :cond_6

    .line 150
    check-cast p1, Lcom/google/android/location/f/af;

    .line 151
    iget-object v2, p1, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v3, p1, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-ne v2, v3, :cond_5

    .line 152
    invoke-virtual {v1, v6, v8}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 156
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 157
    iget-object v4, p1, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-eqz v4, :cond_4

    .line 158
    iget-object v4, p1, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v4, v4, Lcom/google/android/location/f/e;->a:Lcom/google/android/location/f/g;

    .line 159
    if-eqz v4, :cond_4

    .line 160
    invoke-virtual {v4, v0, v2, v3}, Lcom/google/android/location/f/g;->a(Lcom/google/g/a/b/b/a;J)V

    .line 163
    :cond_4
    iget-object v4, p1, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-eqz v4, :cond_1

    .line 164
    iget-object v4, p1, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v4, v4, Lcom/google/android/location/f/be;->b:Lcom/google/android/location/f/bh;

    .line 165
    if-eqz v4, :cond_1

    .line 166
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lcom/google/android/location/f/bh;->a(JZ)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v7, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    goto :goto_0

    .line 153
    :cond_5
    iget-object v2, p1, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v3, p1, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-ne v2, v3, :cond_3

    .line 154
    invoke-virtual {v1, v6, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    goto :goto_2

    .line 170
    :cond_6
    instance-of v2, p1, Lcom/google/android/location/f/y;

    if-eqz v2, :cond_7

    .line 171
    invoke-virtual {v1, v6, v9}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    goto :goto_0

    .line 172
    :cond_7
    instance-of v2, p1, Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 173
    const/4 v2, 0x4

    invoke-virtual {v1, v6, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_8

    const-string v1, "LocationCreator"

    const-string v2, "getLocationDebugInfo"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(ZLcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)Landroid/location/Location;
    .locals 8

    .prologue
    const-wide v6, 0x416312d000000000L    # 1.0E7

    .line 43
    iget-object v0, p2, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    new-instance v1, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    iget v3, v2, Lcom/google/android/location/f/ak;->d:I

    int-to-double v4, v3

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    iget v3, v2, Lcom/google/android/location/f/ak;->e:I

    int-to-double v4, v3

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    iget v2, v2, Lcom/google/android/location/f/ak;->f:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    iget-wide v2, v0, Lcom/google/android/location/f/y;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/be;->b(Landroid/location/Location;)V

    .line 44
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p2, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    const-string v3, "nlpVersion"

    iget v4, p0, Lcom/google/android/location/internal/server/h;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    invoke-static {v1, p2}, Lcom/google/android/location/internal/server/h;->a(Landroid/location/Location;Ljava/lang/Object;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "dbgProtoBuf"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    iget-object v3, p2, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-ne v0, v3, :cond_3

    const-string v0, "networkLocationType"

    const-string v3, "cell"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    sget-object v0, Lcom/google/android/location/f/ax;->c:Lcom/google/android/location/f/ax;

    if-eq p3, v0, :cond_2

    const-string v0, "travelState"

    invoke-virtual {p3}, Lcom/google/android/location/f/ax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 46
    return-object v1

    .line 44
    :cond_3
    iget-object v3, p2, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-ne v0, v3, :cond_1

    const-string v0, "networkLocationType"

    const-string v3, "wifi"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v0, v0, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/google/android/location/f/m;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/location/f/m;

    iget-object v3, v0, Lcom/google/android/location/f/m;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v3, "levelId"

    iget-object v4, v0, Lcom/google/android/location/f/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v3, v0, Lcom/google/android/location/f/m;->c:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    const-string v3, "levelNumberE3"

    iget v0, v0, Lcom/google/android/location/f/m;->c:I

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
