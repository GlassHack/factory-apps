.class public final Lcom/google/android/location/geofencer/data/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

.field public final b:Landroid/app/PendingIntent;

.field c:B

.field d:Z

.field final e:Lcom/google/android/location/geofencer/data/m;

.field f:J

.field g:Z

.field private final h:Lcom/google/android/location/geofencer/data/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/data/g;->d:Z

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/geofencer/data/g;->f:J

    .line 86
    iput-boolean v2, p0, Lcom/google/android/location/geofencer/data/g;->g:Z

    .line 89
    iput-byte v2, p0, Lcom/google/android/location/geofencer/data/g;->c:B

    .line 90
    iput-object p1, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    .line 91
    iput-object p2, p0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    .line 92
    new-instance v0, Lcom/google/android/location/geofencer/data/m;

    invoke-direct {v0, p1}, Lcom/google/android/location/geofencer/data/m;-><init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    .line 93
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/google/android/location/geofencer/data/q;

    invoke-direct {v0, p1}, Lcom/google/android/location/geofencer/data/q;-><init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/g;->h:Lcom/google/android/location/geofencer/data/q;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/g;->h:Lcom/google/android/location/geofencer/data/q;

    goto :goto_0
.end method

.method static a(I)B
    .locals 1

    .prologue
    .line 459
    packed-switch p0, :pswitch_data_0

    .line 471
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 461
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 463
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 465
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 469
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static a(B)I
    .locals 3

    .prologue
    .line 480
    packed-switch p0, :pswitch_data_0

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :pswitch_0
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    .line 484
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 486
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 490
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static a(Lcom/google/android/location/geofencer/b/d;)Lcom/google/android/gms/location/internal/ParcelableGeofence;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 390
    iget v0, p0, Lcom/google/android/location/geofencer/b/d;->a:I

    .line 391
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 392
    const-string v1, "GeofenceState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 421
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->l:Z

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v7

    .line 398
    goto :goto_0

    .line 401
    :cond_2
    const/4 v0, 0x0

    .line 402
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->n:Z

    if-eqz v1, :cond_3

    .line 403
    iget v0, p0, Lcom/google/android/location/geofencer/b/d;->o:I

    .line 405
    :cond_3
    const/4 v1, -0x1

    .line 406
    iget-boolean v2, p0, Lcom/google/android/location/geofencer/b/d;->p:Z

    if-eqz v2, :cond_5

    .line 407
    iget v1, p0, Lcom/google/android/location/geofencer/b/d;->q:I

    move v8, v1

    .line 411
    :goto_1
    :try_start_0
    new-instance v1, Lcom/google/android/gms/location/f;

    invoke-direct {v1}, Lcom/google/android/gms/location/f;-><init>()V

    iget-object v2, p0, Lcom/google/android/location/geofencer/b/d;->k:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/location/geofencer/b/d;->m:I

    iput v2, v1, Lcom/google/android/gms/location/f;->b:I

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->c:D

    iget-wide v4, p0, Lcom/google/android/location/geofencer/b/d;->e:D

    iget v6, p0, Lcom/google/android/location/geofencer/b/d;->g:F

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/f;->a(DDF)Lcom/google/android/gms/location/f;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->i:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/google/android/gms/location/f;->c:J

    :goto_2
    iput v0, v1, Lcom/google/android/gms/location/f;->d:I

    iput v8, v1, Lcom/google/android/gms/location/f;->e:I

    invoke-virtual {v1}, Lcom/google/android/gms/location/f;->b()Lcom/google/android/gms/location/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    goto :goto_0

    :cond_4
    iput-wide v2, v1, Lcom/google/android/gms/location/f;->c:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "GeofenceState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid geofence from protocol buffer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 421
    goto :goto_0

    :cond_5
    move v8, v1

    goto :goto_1
.end method

.method private b(B)B
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 218
    if-ne p1, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v3}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 230
    :goto_0
    return v0

    .line 222
    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :cond_1
    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    .line 228
    goto :goto_0

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    packed-switch p0, :pswitch_data_0

    .line 332
    const-string v0, "?"

    .line 334
    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    const-string v0, "IN"

    goto :goto_0

    .line 323
    :pswitch_1
    const-string v0, "OUT"

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v0, "STATE_INSIDE_LOW_CONFIDENCE"

    goto :goto_0

    .line 329
    :pswitch_3
    const-string v0, "STATE_OUTSIDE_LOW_CONFIDENCE"

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(JLandroid/location/Location;)B
    .locals 9

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/data/g;->d:Z

    .line 127
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/m;->a()B

    .line 128
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v0, p3}, Lcom/google/android/location/geofencer/data/m;->a(Landroid/location/Location;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/m;->a()B

    move-result v1

    .line 130
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->h:Lcom/google/android/location/geofencer/data/q;

    invoke-virtual {v0, p3}, Lcom/google/android/location/geofencer/data/q;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->h:Lcom/google/android/location/geofencer/data/q;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/q;->a()B

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v2, "GeofenceState"

    const-string v3, "Different status in %s. Simple=%s, HighConfidence=%s, Overlap=%.4f"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/google/android/location/geofencer/data/g;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-static {v1}, Lcom/google/android/location/geofencer/data/g;->b(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget-object v5, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    iget-wide v6, v5, Lcom/google/android/location/geofencer/data/m;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    .line 133
    :cond_1
    const/4 v0, 0x0

    .line 134
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 138
    iget-boolean v2, p0, Lcom/google/android/location/geofencer/data/g;->g:Z

    if-nez v2, :cond_2

    .line 139
    iget-wide v2, p0, Lcom/google/android/location/geofencer/data/g;->f:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 142
    iput-wide p1, p0, Lcom/google/android/location/geofencer/data/g;->f:J

    .line 160
    :cond_2
    :goto_0
    iget-byte v2, p0, Lcom/google/android/location/geofencer/data/g;->c:B

    if-nez v2, :cond_6

    .line 161
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 162
    iput-byte v1, p0, Lcom/google/android/location/geofencer/data/g;->c:B

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/geofencer/data/g;->b(B)B

    move-result v0

    .line 180
    :goto_1
    return v0

    .line 143
    :cond_3
    iget-wide v2, p0, Lcom/google/android/location/geofencer/data/g;->f:J

    sub-long v2, p1, v2

    iget-object v4, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->j()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 144
    const/4 v0, 0x1

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/location/geofencer/data/g;->g:Z

    .line 146
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/geofencer/data/g;->f:J

    .line 147
    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    .line 149
    const-string v2, "GeofenceState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "User dwelled at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_4
    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    .line 153
    const-string v2, "GeofenceState"

    const-string v3, "Still confirming dwelling."

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/geofencer/data/g;->f:J

    .line 158
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/geofencer/data/g;->g:Z

    goto :goto_0

    .line 165
    :cond_6
    iget-byte v2, p0, Lcom/google/android/location/geofencer/data/g;->c:B

    if-eq v2, v1, :cond_8

    .line 166
    iput-byte v1, p0, Lcom/google/android/location/geofencer/data/g;->c:B

    .line 167
    const/4 v0, 0x1

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/location/geofencer/data/g;->b(B)B

    move-result v0

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    goto :goto_2

    .line 176
    :cond_8
    if-eqz v0, :cond_9

    .line 177
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/location/geofencer/data/g;->b(B)B

    move-result v0

    goto :goto_1

    .line 180
    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()D
    .locals 4

    .prologue
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 239
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v2}, Lcom/google/android/location/geofencer/data/m;->b()D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    .line 242
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v2}, Lcom/google/android/location/geofencer/data/m;->b()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(D)I
    .locals 5

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v0

    .line 256
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 257
    const v0, 0x7fffffff

    .line 268
    :goto_0
    return v0

    .line 259
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    .line 260
    const-wide p1, 0x3bc79ca10c924223L    # 1.0E-20

    .line 262
    :cond_1
    div-double/2addr v0, p1

    .line 263
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->i()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    add-double/2addr v0, v2

    .line 264
    const-wide v2, 0x41dfffffff800000L    # 2.147483646E9

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    .line 266
    const v0, 0x7ffffffe

    goto :goto_0

    .line 268
    :cond_2
    double-to-int v0, v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v1}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    iget-wide v2, p0, Lcom/google/android/location/geofencer/data/g;->f:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/location/geofencer/data/g;->g:Z

    if-nez v1, :cond_0

    .line 285
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/data/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/16 v0, 0x3c

    .line 303
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/m;->a()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/location/geofencer/data/g;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/m;->b()D

    move-result-wide v0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 312
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/data/g;->g:Z

    if-eqz v1, :cond_1

    const-string v1, " dwelled"

    .line 313
    :goto_1
    const-string v3, "%s d=%s %s%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v5}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.0f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/location/geofencer/data/g;->e:Lcom/google/android/location/geofencer/data/m;

    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/m;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method
