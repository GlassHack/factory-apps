.class public Lcom/google/android/location/internal/server/GoogleLocationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/location/os/ag;


# instance fields
.field private b:Lcom/google/android/location/os/e;

.field private final c:Landroid/os/HandlerThread;

.field private d:Lcom/google/android/location/b/af;

.field private e:Lcom/google/android/location/internal/server/m;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/location/internal/server/e;

    invoke-direct {v0}, Lcom/google/android/location/internal/server/e;-><init>()V

    sput-object v0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/os/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GoogleLocationService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->c:Landroid/os/HandlerThread;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->f:Z

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;I)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 322
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    int-to-long v0, p2

    .line 334
    :goto_0
    return-wide v0

    .line 325
    :cond_0
    invoke-virtual {p0, p1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 327
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 328
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 330
    :cond_1
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 331
    int-to-long v0, p2

    .line 333
    :cond_2
    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 18

    .prologue
    .line 189
    const-string v2, "com.google.android.location.internal.EXTRA_PENDING_INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const-string v2, "com.google.android.location.internal.EXTRA_PENDING_INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 192
    const-string v2, "com.google.android.location.internal.EXTRA_LOCATION_LOW_POWER"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 193
    const-string v2, "com.google.android.location.internal.EXTRA_LOCATION_REMOVE"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 194
    const-string v4, "com.google.android.location.internal.EXTRA_DEBUG_INFO"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 195
    const-string v4, "com.google.android.location.internal.EXTRA_PERIOD_MILLIS"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/location/internal/server/GoogleLocationService;->a(Landroid/content/Intent;Ljava/lang/String;I)J

    move-result-wide v4

    .line 196
    const-string v7, "com.google.android.location.internal.EXTRA_BATCH_DURATION_MILLIS"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v9}, Lcom/google/android/location/internal/server/GoogleLocationService;->a(Landroid/content/Intent;Ljava/lang/String;I)J

    move-result-wide v12

    .line 197
    const-string v7, "com.google.android.location.internal.EXTRA_LOCATION_FORCE_NOW"

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 199
    const-string v9, "com.google.android.location.internal.EXTRA_LOCATION_TAG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 200
    if-eqz v3, :cond_1

    .line 201
    if-eqz v2, :cond_6

    .line 202
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_0

    const-string v2, "GoogleLocationService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Client canceled location update "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v2, v3}, Lcom/google/android/location/internal/server/m;->a(Landroid/app/PendingIntent;)V

    .line 239
    :cond_1
    :goto_0
    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 240
    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 242
    if-eqz v3, :cond_5

    .line 243
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 244
    sget-boolean v4, Lcom/google/android/location/j/a;->c:Z

    if-eqz v4, :cond_2

    const-string v4, "GoogleLocationService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "received activity pending intent from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2
    sget-boolean v4, Lcom/google/android/location/j/a;->f:Z

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/google/android/location/internal/server/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 248
    :cond_3
    const-string v4, "com.google.android.location.internal.EXTRA_ACTIVITY_REMOVE"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 249
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_4

    const-string v2, "GoogleLocationService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Client canceled activity detection "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v2, v3}, Lcom/google/android/location/internal/server/m;->b(Landroid/app/PendingIntent;)V

    .line 251
    if-eqz p2, :cond_5

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/GoogleLocationService;->d:Lcom/google/android/location/b/af;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/location/b/af;->b(Landroid/os/Parcelable;)V

    .line 290
    :cond_5
    :goto_1
    return-void

    .line 205
    :cond_6
    const-wide/16 v14, 0x0

    cmp-long v2, v4, v14

    if-ltz v2, :cond_1

    .line 206
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/internal/server/GoogleLocationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 216
    if-eqz v6, :cond_8

    .line 217
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v14, v2, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 219
    :goto_2
    sget-boolean v9, Lcom/google/android/location/j/a;->c:Z

    if-eqz v9, :cond_7

    const-string v9, "GoogleLocationService"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "package "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasWifi? "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v15}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_7
    if-eqz v6, :cond_d

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    move v6, v2

    .line 223
    :cond_8
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_9

    const-string v2, "GoogleLocationService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "received pending intent from "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_9
    const-wide/16 v16, 0x3e8

    div-long v4, v4, v16

    long-to-int v4, v4

    .line 225
    const-wide/16 v16, 0x3e8

    div-long v12, v12, v16

    long-to-int v5, v12

    .line 226
    const-string v2, "com.google.android.location.internal.EXTRA_LOCATION_WORK_SOURCE"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/location/p/j;->a(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/location/p/j;

    move-result-object v9

    .line 228
    if-eqz v9, :cond_b

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v14, v2, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 230
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_a

    const-string v2, "GoogleLocationService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "package "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " doesn\'t have permission for WorkSource"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_a
    const/4 v9, 0x0

    .line 233
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/location/internal/server/m;->a(Landroid/app/PendingIntent;IIZZZLcom/google/android/location/p/j;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 220
    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    .line 256
    :cond_e
    const-string v4, "com.google.android.location.internal.EXTRA_ACTIVITY_PERIOD_MILLIS"

    const v5, 0x2bf20

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/location/internal/server/GoogleLocationService;->a(Landroid/content/Intent;Ljava/lang/String;I)J

    move-result-wide v10

    .line 259
    const-string v4, "com.google.android.location.internal.EXTRA_ACTIVITY_FORCE_DETECTION_NOW"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 261
    sget-boolean v4, Lcom/google/android/location/j/a;->c:Z

    if-eqz v4, :cond_f

    const-string v4, "GoogleLocationService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding/updating activity detection client: periodMillis: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " force: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_f
    const-string v4, "com.google.android.location.internal.EXTRA_IS_FROM_FIRST_PARTY"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 265
    const-string v4, "com.google.android.location.internal.EXTRA_LOCATION_WORK_SOURCE"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/location/p/j;->a(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/location/p/j;

    move-result-object v7

    .line 267
    if-eqz v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/internal/server/GoogleLocationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v8, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_11

    .line 271
    sget-boolean v4, Lcom/google/android/location/j/a;->c:Z

    if-eqz v4, :cond_10

    const-string v4, "GoogleLocationService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " doesn\'t have permission for WorkSource"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_10
    const/4 v7, 0x0

    .line 274
    :cond_11
    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_TAG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    if-nez v8, :cond_12

    .line 276
    const-string v8, ""

    .line 278
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v4, v10

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/location/internal/server/m;->a(Landroid/app/PendingIntent;IZZLcom/google/android/location/p/j;Ljava/lang/String;)V

    .line 280
    if-eqz p2, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/GoogleLocationService;->d:Lcom/google/android/location/b/af;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/location/b/af;->a(Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 285
    :cond_13
    sget-boolean v3, Lcom/google/android/location/j/a;->c:Z

    if-eqz v3, :cond_5

    const-string v3, "GoogleLocationService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Rejecting request for activity detection. Application not in whitelist. Please contact lbs-team. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->d:Lcom/google/android/location/b/af;

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/google/android/location/internal/server/GoogleLocationService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 306
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v6, "elapsedRealtime "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 309
    const-string v6, " is time "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v0, p2}, Lcom/google/android/location/internal/server/m;->b(Ljava/io/PrintWriter;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v0, p2}, Lcom/google/android/location/internal/server/m;->a(Ljava/io/PrintWriter;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/location/internal/server/m;->a(Ljava/text/Format;Ljava/io/PrintWriter;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v0, p2}, Lcom/google/android/location/internal/server/m;->c(Ljava/io/PrintWriter;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Lcom/google/android/location/os/e;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Lcom/google/android/location/os/e;

    sub-long/2addr v2, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/os/e;->a(Ljava/text/Format;JJLjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Lcom/google/android/location/os/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/os/real/be;->c()V

    .line 94
    invoke-static {p0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 95
    iget-object v1, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v1, Lcom/google/android/location/b/af;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lcom/google/android/location/internal/server/f;

    invoke-direct {v4, p0}, Lcom/google/android/location/internal/server/f;-><init>(Lcom/google/android/location/internal/server/GoogleLocationService;)V

    invoke-direct {v1, p0, v3, v4}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->d:Lcom/google/android/location/b/af;

    .line 128
    new-instance v1, Lcom/google/android/location/internal/server/m;

    iget-object v3, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->d:Lcom/google/android/location/b/af;

    invoke-direct {v1, p0, v3, v4}, Lcom/google/android/location/internal/server/m;-><init>(Lcom/google/android/location/internal/server/GoogleLocationService;Landroid/os/Looper;Lcom/google/android/location/b/af;)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    const-string v1, "nlp_debug_log"

    invoke-virtual {p0, v1}, Lcom/google/android/location/internal/server/GoogleLocationService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 135
    const/4 v1, 0x1

    .line 136
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_1
    if-eqz v1, :cond_2

    .line 145
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    const-string v1, "nlp_debug_log"

    const v3, 0x8000

    invoke-virtual {p0, v1, v3}, Lcom/google/android/location/internal/server/GoogleLocationService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 146
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :goto_2
    :try_start_4
    new-instance v2, Lcom/google/android/location/os/e;

    sget-object v3, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/os/ag;

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/location/os/real/be;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/location/os/e;-><init>(Lcom/google/android/location/os/ag;Lcom/google/android/location/p/a/b;Ljava/io/PrintWriter;)V

    iput-object v2, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Lcom/google/android/location/os/e;

    .line 155
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    iget-object v1, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/server/m;->a(Lcom/google/android/location/os/e;)V

    .line 156
    new-instance v0, Lcom/google/android/location/os/real/a;

    iget-object v1, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Lcom/google/android/location/os/e;

    invoke-direct {v0, v1}, Lcom/google/android/location/os/real/a;-><init>(Lcom/google/android/location/os/e;)V

    invoke-static {v0}, Lcom/google/android/location/p/a/a;->a(Lcom/google/android/location/p/a/b;)V

    .line 157
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "GoogleLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/m;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :catch_0
    move-exception v1

    move v1, v2

    .line 141
    goto :goto_1

    .line 140
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_1

    .line 148
    :catch_2
    move-exception v1

    :try_start_5
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "GoogleLocationService"

    const-string v2, "debug log file missing for output!?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v1, v0

    goto :goto_2

    .line 151
    :cond_3
    new-instance v0, Lcom/google/android/location/os/real/a;

    invoke-direct {v0}, Lcom/google/android/location/os/real/a;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLocationService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->e:Lcom/google/android/location/internal/server/m;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/m;->c()V

    .line 297
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "GoogleLocationService"

    const-string v1, "unregistering logger"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/location/p/a/a;->a(Lcom/google/android/location/p/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStart(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 168
    monitor-enter p0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/location/b/af;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "GoogleLocationService"

    const-string v1, "Received SystemMemoryCache init intent."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->d:Lcom/google/android/location/b/af;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/af;->c(Landroid/content/Intent;)V

    .line 174
    invoke-direct {p0}, Lcom/google/android/location/internal/server/GoogleLocationService;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/google/android/location/internal/server/GoogleLocationService;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->d:Lcom/google/android/location/b/af;

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 179
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_4

    const-string v2, "GoogleLocationService"

    const-string v3, "Re-adding cached client."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/location/internal/server/GoogleLocationService;->a(Landroid/content/Intent;Z)V

    goto :goto_1

    .line 182
    :cond_5
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLocationService"

    const-string v1, "Finished initializing clients from pending intent cache."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/internal/server/GoogleLocationService;->a(Landroid/content/Intent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
