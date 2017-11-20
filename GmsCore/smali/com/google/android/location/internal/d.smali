.class public final Lcom/google/android/location/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/location/fused/g;

.field final c:Lcom/google/android/location/geofencer/service/g;

.field final d:Lcom/google/android/location/places/ai;

.field final e:Lcom/google/android/location/e/a/a;

.field final f:Lcom/google/android/gms/b/b/a;

.field final g:Ljava/util/ArrayList;

.field private final h:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    .line 84
    iput-object p1, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/d;->h:Landroid/content/pm/PackageManager;

    .line 86
    new-instance v0, Lcom/google/android/location/geofencer/service/g;

    invoke-direct {v0, p1}, Lcom/google/android/location/geofencer/service/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    .line 87
    invoke-static {p1}, Lcom/google/android/location/fused/g;->a(Landroid/content/Context;)Lcom/google/android/location/fused/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    .line 88
    new-instance v0, Lcom/google/android/location/places/ai;

    iget-object v1, p0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    iget-object v2, p0, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/location/places/ai;-><init>(Landroid/content/Context;Lcom/google/android/location/fused/g;Lcom/google/android/location/geofencer/service/g;)V

    iput-object v0, p0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    .line 89
    new-instance v0, Lcom/google/android/location/e/a/a;

    invoke-direct {v0}, Lcom/google/android/location/e/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/d;->e:Lcom/google/android/location/e/a/a;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/gms/b/b/a;

    .line 91
    return-void
.end method

.method static a(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 500
    if-nez p0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid pending intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "PendingIntent\'s target package can\'t be different to the request package."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 606
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 607
    invoke-static {p0, v0, v1}, Lcom/google/android/location/internal/d;->a(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Activity detection usage requires the com.google.android.gms.permission.ACTIVITY_RECOGNITION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/location/internal/LocationRequestInternal;)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 230
    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/d;->a(I)V

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "GLMSImpl"

    const-string v3, "Uid %s must be signed by Google to use internal features: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->g()V

    .line 243
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 230
    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/location/places/internal/PlacesParams;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "This feature requires an account to be set when connecting to the Places API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;II)Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 543
    const-string v0, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 575
    :cond_0
    :goto_0
    return v1

    .line 547
    :cond_1
    const-string v3, "activity_recognition_permission_whitelist"

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 551
    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 557
    array-length v6, v5

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 558
    invoke-interface {v3, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 559
    invoke-static {v7, v4}, Lcom/google/android/location/internal/d;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 560
    const-string v0, "GLMSImpl"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    const-string v0, "GLMSImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found package in activity recognition white-list: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 564
    goto :goto_0

    :cond_3
    move v0, v1

    .line 547
    goto :goto_1

    .line 568
    :cond_4
    const-string v8, "GLMSImpl"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 569
    const-string v8, "GLMSImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found whitelisted package that doesn\'t define the permission in its manifest: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 581
    const/16 v1, 0x1000

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 585
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 586
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 587
    const-string v5, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 589
    const/4 v0, 0x1

    .line 601
    :cond_0
    :goto_1
    return v0

    .line 586
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :catch_0
    move-exception v1

    .line 594
    const-string v2, "GLMSImpl"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    const-string v2, "GLMSImpl"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    :cond_2
    const-string v1, "GLMSImpl"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const-string v1, "GLMSImpl"

    const-string v2, "Did not find the activity recognition permission in the app\'s manifest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/d;->a(I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/location/internal/d;->b()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;ZZ)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Client must have ACCESS_MOCK_LOCATION permission to perform mock operations."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 488
    if-nez v0, :cond_1

    .line 489
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The Settings.Secure.ALLOW_MOCK_LOCATION system setting is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    return-void
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/o/ad;->a(Landroid/content/Context;)I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 461
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Client must have ACCESS_FINE_LOCATION permission to request PRIORITY_HIGH_ACCURACY locations."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Client must have ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to perform any location operations."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    return-void
.end method

.method final a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/a/b;->a(Landroid/content/Context;)V

    .line 685
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/places/a/a;->a(Landroid/content/Context;)V

    .line 687
    iget-object v1, p0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-static {}, Lcom/google/android/location/fused/g;->a()V

    .line 696
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/location/internal/d;->b(Landroid/content/Intent;)I

    move-result v0

    if-gez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {p0}, Lcom/google/android/location/internal/d;->b()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;Z)V

    .line 226
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {p0}, Lcom/google/android/location/internal/d;->b()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZLjava/lang/String;)V

    .line 213
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 6

    .prologue
    .line 295
    iget-object v0, p3, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    new-instance v0, Lcom/google/android/location/places/am;

    invoke-direct {v0, p4}, Lcom/google/android/location/places/am;-><init>(Lcom/google/android/gms/location/places/internal/a;)V

    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/google/android/location/places/b;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    sget-object v0, Lcom/google/android/location/x;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p3, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    iget v3, p3, Lcom/google/android/gms/location/places/internal/PlacesParams;->a:I

    invoke-static {v0, v2, v3}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;I)Lcom/google/c/f/b/n;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/location/places/PlaceFilter;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p3, Lcom/google/android/gms/location/places/internal/PlacesParams;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/c/f/b/p;

    move-result-object v3

    iput-object v3, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v3, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    invoke-static {p2, v2}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/location/places/PlaceFilter;Ljava/lang/String;)Lcom/google/c/f/b/k;

    move-result-object v2

    iput-object v2, v3, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    iget-object v2, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    new-instance v3, Lcom/google/c/f/b/o;

    invoke-direct {v3}, Lcom/google/c/f/b/o;-><init>()V

    iput-object v3, v2, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    iget-object v2, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v2, v2, Lcom/google/c/f/b/p;->f:Lcom/google/c/f/b/o;

    invoke-static {p1}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/c/f/b/g;

    move-result-object v3

    iput-object v3, v2, Lcom/google/c/f/b/o;->a:Lcom/google/c/f/b/g;

    iget-object v1, v1, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/location/places/PlaylogService;->a(Landroid/content/Context;Lcom/google/c/f/b/n;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const/16 v1, 0x8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/places/am;->a(ILjava/util/List;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 313
    iget-object v0, p5, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/d;->d(Ljava/lang/String;)V

    .line 314
    iget-object v7, p0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    new-instance v6, Lcom/google/android/location/places/am;

    invoke-direct {v6, p6}, Lcom/google/android/location/places/am;-><init>(Lcom/google/android/gms/location/places/internal/a;)V

    iget-object v0, v7, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/places/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    sget-object v0, Lcom/google/android/location/x;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    iget v1, p5, Lcom/google/android/gms/location/places/internal/PlacesParams;->a:I

    invoke-static {v8, v0, v1}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;I)Lcom/google/c/f/b/n;

    move-result-object v0

    iget-object v1, p5, Lcom/google/android/gms/location/places/internal/PlacesParams;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/c/f/b/p;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v1, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    invoke-static {p4, p3}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/location/places/PlaceFilter;Ljava/lang/String;)Lcom/google/c/f/b/k;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/p;->d:Lcom/google/c/f/b/k;

    iget-object v1, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    new-instance v2, Lcom/google/c/f/b/q;

    invoke-direct {v2}, Lcom/google/c/f/b/q;-><init>()V

    iput-object v2, v1, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    iget-object v1, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v1, v1, Lcom/google/c/f/b/p;->e:Lcom/google/c/f/b/q;

    invoke-static {p1}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/c/f/b/h;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    iget-object v1, v7, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/location/places/PlaylogService;->a(Landroid/content/Context;Lcom/google/c/f/b/n;)V

    .line 315
    :cond_0
    return-void
.end method

.method final b(Landroid/content/Intent;)I
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 722
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 723
    iget-object v0, p0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 724
    invoke-virtual {v0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 729
    :goto_1
    return v0

    .line 722
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/o/ad;->a(Landroid/content/Context;)I

    move-result v0

    .line 433
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requested place updates requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/o/ad;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/o/ad;->a(Landroid/content/Context;)I

    move-result v0

    .line 446
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 447
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 615
    iget-object v1, p0, Lcom/google/android/location/internal/d;->h:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/internal/d;->h:Landroid/content/pm/PackageManager;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/google/android/location/internal/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ai;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    return-void

    .line 639
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Client not authorized to use Places API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
