.class final Lcom/google/android/location/fused/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:Lcom/google/android/gms/location/h;

.field public final b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field public final c:Landroid/app/PendingIntent;

.field final synthetic d:Lcom/google/android/location/fused/g;

.field private e:J

.field private f:I

.field private g:Landroid/location/Location;

.field private final h:Z

.field private final i:Ljava/util/HashSet;

.field private final j:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/internal/LocationRequestInternal;ZLcom/google/android/gms/location/h;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput-object p4, p0, Lcom/google/android/location/fused/r;->a:Lcom/google/android/gms/location/h;

    .line 1126
    iput-object p2, p0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 1127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/fused/r;->f:I

    .line 1128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/r;->g:Landroid/location/Location;

    .line 1129
    iput-boolean p3, p0, Lcom/google/android/location/fused/r;->h:Z

    .line 1130
    iput-object p5, p0, Lcom/google/android/location/fused/r;->c:Landroid/app/PendingIntent;

    .line 1132
    invoke-virtual {p2}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/location/fused/r;->i:Ljava/util/HashSet;

    .line 1134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/location/fused/r;->j:Ljava/util/HashSet;

    .line 1135
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/google/android/location/fused/r;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    iget-object v1, p0, Lcom/google/android/location/fused/r;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/g;->b(Landroid/app/PendingIntent;)V

    .line 1314
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    iget-object v1, p0, Lcom/google/android/location/fused/r;->a:Lcom/google/android/gms/location/h;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/h;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/fused/r;)Z
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/google/android/location/fused/r;->h:Z

    return v0
.end method

.method private a(ZLjava/util/HashSet;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 1279
    const/4 v0, 0x0

    .line 1280
    if-eqz p1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 1284
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1285
    iget-object v4, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    invoke-static {v4}, Lcom/google/android/location/fused/g;->j(Lcom/google/android/location/fused/g;)Lcom/google/android/location/o/g;

    move-result-object v4

    iget v5, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    iget-object v6, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-virtual {v4, p3, v5, v6}, Lcom/google/android/location/o/g;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1287
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_1
    move v1, v0

    .line 1291
    goto :goto_0

    .line 1295
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 1296
    iget-object v3, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    invoke-static {v3}, Lcom/google/android/location/fused/g;->j(Lcom/google/android/location/fused/g;)Lcom/google/android/location/o/g;

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    iget-object v0, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-virtual {v3, p3, v4, v0}, Lcom/google/android/location/o/g;->b(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    .line 1298
    goto :goto_2

    .line 1299
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    move v1, v0

    .line 1302
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/location/fused/r;)I
    .locals 1

    .prologue
    .line 1098
    iget v0, p0, Lcom/google/android/location/fused/r;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/location/fused/r;)J
    .locals 2

    .prologue
    .line 1098
    iget-wide v0, p0, Lcom/google/android/location/fused/r;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/location/fused/r;)V
    .locals 0

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/google/android/location/fused/r;->a()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/google/android/location/fused/r;->i:Ljava/util/HashSet;

    const-string v1, "android:monitor_location"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/fused/r;->a(ZLjava/util/HashSet;Ljava/lang/String;)Z

    .line 1249
    iget-object v0, p0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v0

    .line 1250
    if-eqz p1, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1253
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/fused/r;->j:Ljava/util/HashSet;

    const-string v2, "android:monitor_location_high_power"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/location/fused/r;->a(ZLjava/util/HashSet;Ljava/lang/String;)Z

    move-result v0

    .line 1256
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    if-eqz v0, :cond_0

    .line 1260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    invoke-static {v1}, Lcom/google/android/location/fused/g;->i(Lcom/google/android/location/fused/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1264
    :cond_0
    return-void

    .line 1250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;Z)Z
    .locals 12

    .prologue
    .line 1146
    if-nez p1, :cond_0

    .line 1147
    const/4 v0, 0x0

    .line 1234
    :goto_0
    return v0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 1153
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->d()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 1154
    const/4 v0, 0x0

    goto :goto_0

    .line 1157
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/fused/r;->d:Lcom/google/android/location/fused/g;

    invoke-static {v1}, Lcom/google/android/location/fused/g;->h(Lcom/google/android/location/fused/g;)Lcom/google/android/location/fused/c;

    invoke-static {p1}, Lcom/google/android/location/fused/c;->a(Landroid/location/Location;)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 1160
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->f()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 1162
    invoke-direct {p0}, Lcom/google/android/location/fused/r;->a()V

    .line 1163
    const-string v1, "GCoreFlp"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1164
    const-string v1, "Removing expired location, current time=%s, expire at=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1170
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->g()I

    move-result v1

    .line 1171
    iget v4, p0, Lcom/google/android/location/fused/r;->f:I

    if-lt v4, v1, :cond_5

    .line 1173
    const-string v0, "GCoreFlp"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1174
    const-string v0, "Removing location because it has received maxUpdates=%s locations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1180
    :cond_5
    iget-wide v4, p0, Lcom/google/android/location/fused/r;->e:J

    sub-long v4, v2, v4

    .line 1181
    iget v6, p0, Lcom/google/android/location/fused/r;->f:I

    if-lez v6, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->e()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    .line 1183
    const-string v1, "GCoreFlp"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1184
    const-string v1, "Not reporting location that came in too fast, last interval=%s, fastest interval=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/location/fused/r;->e:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1192
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->h()F

    move-result v6

    .line 1193
    iget-object v7, p0, Lcom/google/android/location/fused/r;->g:Landroid/location/Location;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/android/location/fused/r;->g:Landroid/location/Location;

    invoke-virtual {v7, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_9

    .line 1196
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1197
    const-string v0, "Not reporting because displacement too small, last displacement=%s, smallest displacement=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/location/fused/r;->g:Landroid/location/Location;

    invoke-virtual {v3, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1205
    :cond_9
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1206
    if-eqz v7, :cond_a

    iget-object v8, p0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v8}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "dbgProtoBuf"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "wifi"

    const-string v9, "locationType"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-wide/16 v8, 0x2

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v10

    mul-long/2addr v8, v10

    cmp-long v0, v4, v8

    if-gez v0, :cond_a

    .line 1217
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1221
    :cond_a
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_b

    .line 1224
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/google/android/location/fused/r;->g:Landroid/location/Location;

    .line 1226
    :cond_b
    iput-wide v2, p0, Lcom/google/android/location/fused/r;->e:J

    .line 1227
    iget v0, p0, Lcom/google/android/location/fused/r;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/fused/r;->f:I

    .line 1229
    iget v0, p0, Lcom/google/android/location/fused/r;->f:I

    if-lt v0, v1, :cond_c

    .line 1231
    invoke-direct {p0}, Lcom/google/android/location/fused/r;->a()V

    .line 1234
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final binderDied()V
    .locals 0

    .prologue
    .line 1321
    invoke-direct {p0}, Lcom/google/android/location/fused/r;->a()V

    .line 1322
    return-void
.end method
