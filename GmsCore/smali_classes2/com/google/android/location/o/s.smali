.class public final Lcom/google/android/location/o/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:D


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/security/SecureRandom;

.field private final d:Landroid/database/ContentObserver;

.field private final e:Landroid/content/Context;

.field private f:D

.field private g:D

.field private h:J

.field private i:F

.field private j:D

.field private k:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/o/s;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/o/s;->b:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/o/s;->c:Ljava/security/SecureRandom;

    .line 126
    iput-object p1, p0, Lcom/google/android/location/o/s;->e:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/google/android/location/o/t;

    invoke-direct {v0, p0, p2}, Lcom/google/android/location/o/t;-><init>(Lcom/google/android/location/o/s;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/o/s;->d:Landroid/database/ContentObserver;

    .line 133
    iget-object v0, p0, Lcom/google/android/location/o/s;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "locationCoarseAccuracy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/location/o/s;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/location/o/s;->b()F

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/google/android/location/o/s;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/location/o/s;->a(F)V

    .line 139
    invoke-direct {p0}, Lcom/google/android/location/o/s;->a()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/o/s;->f:D

    .line 140
    invoke-direct {p0}, Lcom/google/android/location/o/s;->a()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/o/s;->g:D

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/location/o/s;->h:J

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()D
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/location/o/s;->c:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextGaussian()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/o/s;->k:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(D)D
    .locals 6

    .prologue
    const-wide v2, 0x40567fffda36a676L    # 89.999990990991

    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    .line 289
    cmpl-double v4, p0, v2

    if-lez v4, :cond_1

    .line 292
    :goto_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    .line 295
    :goto_1
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_1

    :cond_1
    move-wide v2, p0

    goto :goto_0
.end method

.method private static a(DD)D
    .locals 4

    .prologue
    .line 317
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/location/o/s;)F
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/location/o/s;->b()F

    move-result v0

    return v0
.end method

.method private a(F)V
    .locals 4

    .prologue
    .line 330
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/location/o/s;->i:F

    .line 334
    iget v0, p0, Lcom/google/android/location/o/s;->i:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/location/o/s;->j:D

    .line 335
    iget-wide v0, p0, Lcom/google/android/location/o/s;->j:D

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/o/s;->k:D

    .line 336
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/o/s;F)V
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/google/android/location/o/s;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/location/o/s;->a(F)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(D)D
    .locals 6

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 299
    rem-double v0, p0, v4

    .line 300
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 301
    sub-double/2addr v0, v4

    .line 303
    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 304
    add-double/2addr v0, v4

    .line 306
    :cond_1
    return-wide v0
.end method

.method private b()F
    .locals 3

    .prologue
    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 351
    iget-object v1, p0, Lcom/google/android/location/o/s;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "locationCoarseAccuracy"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    if-nez v1, :cond_0

    .line 362
    :goto_0
    return v0

    .line 360
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Landroid/location/Location;)Landroid/location/Location;
    .locals 14

    .prologue
    const-wide v12, 0x40fb198000000000L    # 111000.0

    const-wide v10, 0x3f9eb851eb851eb8L    # 0.03

    .line 162
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3}, Lcom/google/android/location/o/s;->a(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lcom/google/android/location/o/s;->b(D)D

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/location/o/s;->h:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/location/o/s;->h:J

    iget-wide v6, p0, Lcom/google/android/location/o/s;->f:D

    sget-wide v8, Lcom/google/android/location/o/s;->a:D

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/location/o/s;->f:D

    iget-wide v6, p0, Lcom/google/android/location/o/s;->f:D

    invoke-direct {p0}, Lcom/google/android/location/o/s;->a()D

    move-result-wide v8

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/location/o/s;->f:D

    iget-wide v6, p0, Lcom/google/android/location/o/s;->g:D

    sget-wide v8, Lcom/google/android/location/o/s;->a:D

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/location/o/s;->g:D

    iget-wide v6, p0, Lcom/google/android/location/o/s;->g:D

    invoke-direct {p0}, Lcom/google/android/location/o/s;->a()D

    move-result-wide v8

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/location/o/s;->g:D

    :cond_0
    iget-wide v6, p0, Lcom/google/android/location/o/s;->g:D

    invoke-static {v6, v7, v2, v3}, Lcom/google/android/location/o/s;->a(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/location/o/s;->f:D

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Lcom/google/android/location/o/s;->a(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lcom/google/android/location/o/s;->b(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/location/o/s;->j:D

    div-double/2addr v6, v12

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, v6

    iget-wide v6, p0, Lcom/google/android/location/o/s;->j:D

    invoke-static {v6, v7, v2, v3}, Lcom/google/android/location/o/s;->a(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v6

    invoke-static {v2, v3}, Lcom/google/android/location/o/s;->a(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lcom/google/android/location/o/s;->b(D)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    iget v1, p0, Lcom/google/android/location/o/s;->i:F

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 163
    const-string v1, "coarseLocation"

    invoke-static {p1, v1, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;Landroid/location/Location;)V

    .line 164
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;)Landroid/location/Location;
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/location/o/s;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    const-string v0, "coarseLocation"

    invoke-static {p1, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/location/o/s;->b(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    monitor-exit v1

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget v3, p0, Lcom/google/android/location/o/s;->i:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/location/o/s;->b(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 157
    :cond_1
    monitor-exit v1

    goto :goto_0
.end method
