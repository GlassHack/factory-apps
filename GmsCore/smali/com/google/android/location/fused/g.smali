.class public final Lcom/google/android/location/fused/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/aq;


# static fields
.field private static b:Lcom/google/android/location/fused/g;

.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/location/fused/bc;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/pm/PackageManager;

.field private final f:Lcom/google/android/location/fused/c;

.field private final g:Lcom/google/android/location/o/ab;

.field private final h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private final j:Lcom/google/android/location/fused/as;

.field private k:Lcom/google/android/location/b/af;

.field private final l:Lcom/google/android/location/fused/aw;

.field private final m:Lcom/google/android/location/o/g;

.field private final n:Lcom/google/android/location/fused/v;

.field private final o:Lcom/google/android/location/fused/o;

.field private final p:Lcom/google/android/gms/location/internal/ClientIdentity;

.field private final q:Lcom/google/android/location/fused/b/e;

.field private volatile r:Lcom/google/android/gms/location/LocationStatus;

.field private volatile s:Lcom/google/android/location/fused/t;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/fused/g;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 180
    new-instance v2, Lcom/google/android/location/fused/c;

    invoke-direct {v2}, Lcom/google/android/location/fused/c;-><init>()V

    invoke-static {p1}, Lcom/google/android/location/o/g;->a(Landroid/content/Context;)Lcom/google/android/location/o/g;

    move-result-object v3

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    new-instance v5, Lcom/google/android/location/fused/az;

    invoke-direct {v5, p1}, Lcom/google/android/location/fused/az;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/fused/g;-><init>(Landroid/content/Context;Lcom/google/android/location/fused/c;Lcom/google/android/location/o/g;Landroid/app/AlarmManager;Lcom/google/android/location/fused/az;)V

    .line 187
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/fused/c;Lcom/google/android/location/o/g;Landroid/app/AlarmManager;Lcom/google/android/location/fused/az;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->i:Ljava/util/Map;

    .line 135
    new-instance v0, Lcom/google/android/location/fused/as;

    invoke-direct {v0}, Lcom/google/android/location/fused/as;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->j:Lcom/google/android/location/fused/as;

    .line 148
    new-instance v0, Lcom/google/android/location/fused/v;

    invoke-direct {v0}, Lcom/google/android/location/fused/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->n:Lcom/google/android/location/fused/v;

    .line 160
    const-wide/16 v0, 0x0

    invoke-static {v6, v6, v0, v1}, Lcom/google/android/gms/location/LocationStatus;->a(IIJ)Lcom/google/android/gms/location/LocationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/g;->r:Lcom/google/android/gms/location/LocationStatus;

    .line 198
    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v2

    .line 199
    invoke-static {p1}, Lcom/google/android/location/fused/ah;->a(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 200
    invoke-static {p1}, Lcom/google/android/gms/common/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-static {p1}, Lcom/google/android/location/fused/b/a;->a(Landroid/content/Context;)Lcom/google/android/location/fused/b/a;

    move-result-object v1

    .line 204
    new-instance v4, Lcom/google/android/location/fused/b/d;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v1, p1, v0, p0}, Lcom/google/android/location/fused/b/d;-><init>(Lcom/google/android/location/fused/b/a;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V

    .line 206
    new-instance v5, Lcom/google/android/location/fused/b/g;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, p1, v0, p0}, Lcom/google/android/location/fused/b/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V

    .line 208
    new-instance v0, Lcom/google/android/location/fused/b/i;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/location/fused/b/i;-><init>(Lcom/google/android/location/wearable/b;Lcom/google/android/location/fused/ap;Lcom/google/android/location/fused/ap;)V

    .line 217
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Lcom/google/android/location/fused/ay;

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/location/fused/ay;-><init>(Lcom/google/android/location/fused/ap;Landroid/content/Context;Landroid/os/Looper;)V

    move-object v0, v1

    .line 221
    :cond_0
    new-instance v1, Lcom/google/android/location/fused/bc;

    new-instance v4, Lcom/google/android/location/fused/bq;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/location/fused/bq;-><init>(Lcom/google/android/location/fused/ap;Landroid/os/Looper;Landroid/os/PowerManager$WakeLock;)V

    invoke-direct {v1, v4, p0, p5}, Lcom/google/android/location/fused/bc;-><init>(Lcom/google/android/location/fused/ap;Lcom/google/android/location/fused/aq;Lcom/google/android/location/fused/az;)V

    .line 226
    iput-object v1, p0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    .line 227
    iput-object p1, p0, Lcom/google/android/location/fused/g;->d:Landroid/content/Context;

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/g;->e:Landroid/content/pm/PackageManager;

    .line 229
    iput-object p2, p0, Lcom/google/android/location/fused/g;->f:Lcom/google/android/location/fused/c;

    .line 230
    iput-object p3, p0, Lcom/google/android/location/fused/g;->m:Lcom/google/android/location/o/g;

    .line 231
    invoke-static {p1}, Lcom/google/android/location/o/ab;->a(Landroid/content/Context;)Lcom/google/android/location/o/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/g;->g:Lcom/google/android/location/o/ab;

    .line 233
    new-instance v0, Lcom/google/android/location/fused/o;

    invoke-direct {v0, p0, p1, p4, v2}, Lcom/google/android/location/fused/o;-><init>(Lcom/google/android/location/fused/g;Landroid/content/Context;Landroid/app/AlarmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    .line 234
    iget-object v0, p0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bc;->a()V

    .line 236
    new-instance v0, Lcom/google/android/location/b/af;

    const-class v1, Lcom/google/android/location/internal/GoogleLocationManagerService;

    new-instance v3, Lcom/google/android/location/fused/h;

    invoke-direct {v3, p0}, Lcom/google/android/location/fused/h;-><init>(Lcom/google/android/location/fused/g;)V

    invoke-direct {v0, p1, v1, v3, v6}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;I)V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->k:Lcom/google/android/location/b/af;

    .line 249
    new-instance v0, Lcom/google/android/location/fused/aw;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/fused/aw;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->l:Lcom/google/android/location/fused/aw;

    .line 251
    new-instance v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/fused/g;->p:Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 255
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/google/android/location/fused/g;->f()V

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/google/android/location/fused/i;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/google/android/location/fused/i;-><init>(Lcom/google/android/location/fused/g;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    invoke-static {p1}, Lcom/google/android/location/fused/b/a;->a(Landroid/content/Context;)Lcom/google/android/location/fused/b/a;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/google/android/location/fused/b/e;

    new-instance v3, Lcom/google/android/location/o/n;

    invoke-direct {v3, p1}, Lcom/google/android/location/o/n;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v3, p1}, Lcom/google/android/location/fused/b/e;-><init>(Lcom/google/android/location/fused/b/a;Lcom/google/android/location/o/n;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/location/fused/g;->q:Lcom/google/android/location/fused/b/e;

    .line 287
    :goto_1
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/google/android/location/fused/j;

    invoke-direct {v1, p0}, Lcom/google/android/location/fused/j;-><init>(Lcom/google/android/location/fused/g;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1, v0, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 310
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/google/android/location/fused/k;

    invoke-direct {v1, p0}, Lcom/google/android/location/fused/k;-><init>(Lcom/google/android/location/fused/g;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1, v0, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 327
    return-void

    .line 211
    :cond_3
    new-instance v0, Lcom/google/android/location/fused/ak;

    new-instance v1, Lcom/google/android/location/fused/w;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p1, v4, p0}, Lcom/google/android/location/fused/w;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V

    new-instance v4, Lcom/google/android/location/fused/d;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p1, v5, p0}, Lcom/google/android/location/fused/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V

    invoke-direct {v0, p1, v1, v4}, Lcom/google/android/location/fused/ak;-><init>(Landroid/content/Context;Lcom/google/android/location/fused/ap;Lcom/google/android/location/fused/ap;)V

    goto/16 :goto_0

    .line 283
    :cond_4
    iput-object v7, p0, Lcom/google/android/location/fused/g;->q:Lcom/google/android/location/fused/b/e;

    goto :goto_1
.end method

.method static synthetic a(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 87
    const-string v0, "pi"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1024
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1025
    const-string v1, "lr"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1026
    const-string v1, "pi"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1028
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/fused/g;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    sget-object v1, Lcom/google/android/location/fused/g;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    sget-object v0, Lcom/google/android/location/fused/g;->b:Lcom/google/android/location/fused/g;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/google/android/location/fused/g;

    invoke-direct {v0, p0}, Lcom/google/android/location/fused/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/location/fused/g;->b:Lcom/google/android/location/fused/g;

    .line 339
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    sget-object v0, Lcom/google/android/location/fused/g;->b:Lcom/google/android/location/fused/g;

    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1068
    iget-object v2, p0, Lcom/google/android/location/fused/g;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1069
    if-eqz v3, :cond_0

    .line 1070
    array-length v2, v3

    if-ne v2, v0, :cond_1

    .line 1072
    aget-object p2, v3, v1

    .line 1093
    :cond_0
    :goto_0
    return-object p2

    .line 1073
    :cond_1
    if-eqz p2, :cond_0

    .line 1077
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 1078
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1084
    :goto_2
    if-nez v0, :cond_0

    .line 1085
    const-string v0, "GCoreFlp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client passed in package name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which isn\'t in list of know packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const/4 p2, 0x0

    goto :goto_0

    .line 1077
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method private a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZLandroid/app/PendingIntent;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/32 v4, 0x927c0

    .line 537
    iget-object v0, p0, Lcom/google/android/location/fused/g;->n:Lcom/google/android/location/fused/v;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/v;->a(Ljava/util/Collection;)V

    .line 539
    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 540
    if-nez p3, :cond_1

    .line 542
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 543
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 545
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->e()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 546
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    .line 550
    :cond_1
    new-instance v0, Lcom/google/android/location/fused/r;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/fused/r;-><init>(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/internal/LocationRequestInternal;ZLcom/google/android/gms/location/h;Landroid/app/PendingIntent;)V

    .line 555
    invoke-interface {p2}, Lcom/google/android/gms/location/h;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 556
    iget-object v1, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/fused/r;

    .line 557
    if-eqz v1, :cond_2

    .line 560
    invoke-virtual {v1, v10}, Lcom/google/android/location/fused/r;->a(Z)V

    .line 562
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/r;->a(Z)V

    .line 563
    invoke-direct {p0}, Lcom/google/android/location/fused/g;->e()Ljava/util/Collection;

    move-result-object v1

    .line 564
    iget-object v3, p0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/location/fused/bc;->a(Ljava/util/Collection;Z)V

    .line 567
    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 568
    iget-object v4, p0, Lcom/google/android/location/fused/g;->j:Lcom/google/android/location/fused/as;

    iget-object v1, v1, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    new-instance v6, Lcom/google/android/location/fused/au;

    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v8

    invoke-direct {v6, v1, v7, v8, v9}, Lcom/google/android/location/fused/au;-><init>(Ljava/lang/String;IJ)V

    iget-object v1, v4, Lcom/google/android/location/fused/as;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/fused/at;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/location/fused/at;

    invoke-direct {v1, v6, v10}, Lcom/google/android/location/fused/at;-><init>(Lcom/google/android/location/fused/au;B)V

    iget-object v4, v4, Lcom/google/android/location/fused/as;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v4, v1, Lcom/google/android/location/fused/at;->a:I

    if-nez v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/location/fused/at;->b:J

    :cond_4
    iget v4, v1, Lcom/google/android/location/fused/at;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/google/android/location/fused/at;->a:I

    goto :goto_0

    .line 574
    :cond_5
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_1
    return-void

    .line 577
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    invoke-virtual {v0, p2}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/gms/location/h;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/location/fused/g;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 87
    if-nez p1, :cond_0

    const-string v0, "GCoreFlp"

    const-string v1, "Not request location updates because of incomplete request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/g;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/u;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/location/fused/g;->k:Lcom/google/android/location/b/af;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/b/af;->b(Landroid/os/Parcelable;)V

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "GCoreFlp"

    const-string v1, "Unknown pending intent to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/location/fused/g;->b(Lcom/google/android/gms/location/h;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/h;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/g;->b(Lcom/google/android/gms/location/h;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 87
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v0, "GCoreFlp"

    const-string v1, "Not request location updates because of incomplete request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/google/android/location/fused/u;

    iget-object v2, p0, Lcom/google/android/location/fused/g;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/fused/u;-><init>(Lcom/google/android/location/fused/g;Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/Collection;Z)V

    iget-object v1, p0, Lcom/google/android/location/fused/g;->i:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/fused/u;

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/google/android/location/fused/g;->b(Lcom/google/android/gms/location/h;)V

    const-string v1, "GCoreFlp"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Replaced preexisting location request by PendingIntent"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCoreFlp"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Adding PendingIntent request for package %s, hasFinePermissions=%s, %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZLandroid/app/PendingIntent;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/fused/g;->k:Lcom/google/android/location/b/af;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/af;->a(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;Z)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZLandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(ILjava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 1049
    if-eqz p3, :cond_0

    const-string v0, "android:fine_location"

    .line 1051
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/fused/g;->m:Lcom/google/android/location/o/g;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/location/o/g;->c(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    const/4 v0, 0x0

    .line 1054
    :goto_1
    return v0

    .line 1049
    :cond_0
    const-string v0, "android:coarse_location"

    goto :goto_0

    .line 1054
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/location/fused/g;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/location/fused/g;->t:Z

    return v0
.end method

.method static synthetic b(Landroid/os/Bundle;)Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .prologue
    .line 87
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/location/h;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 739
    invoke-interface {p1}, Lcom/google/android/gms/location/h;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 740
    iget-object v0, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    .line 741
    if-eqz v0, :cond_5

    .line 742
    iget-object v2, p0, Lcom/google/android/location/fused/g;->n:Lcom/google/android/location/fused/v;

    iget-object v3, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v3}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/fused/v;->b(Ljava/util/Collection;)V

    .line 744
    invoke-virtual {v0, v10}, Lcom/google/android/location/fused/r;->a(Z)V

    .line 745
    invoke-direct {p0}, Lcom/google/android/location/fused/g;->e()Ljava/util/Collection;

    move-result-object v2

    .line 746
    iget-object v3, p0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v3, v2, v10}, Lcom/google/android/location/fused/bc;->a(Ljava/util/Collection;Z)V

    .line 750
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_0
    iget-object v1, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 758
    iget-object v3, p0, Lcom/google/android/location/fused/g;->j:Lcom/google/android/location/fused/as;

    iget-object v1, v1, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    new-instance v5, Lcom/google/android/location/fused/au;

    invoke-virtual {v4}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v8

    invoke-direct {v5, v1, v6, v8, v9}, Lcom/google/android/location/fused/au;-><init>(Ljava/lang/String;IJ)V

    iget-object v1, v3, Lcom/google/android/location/fused/as;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/fused/at;

    if-eqz v1, :cond_2

    iget v3, v1, Lcom/google/android/location/fused/at;->a:I

    if-gtz v3, :cond_1

    const-string v1, "GCoreFlp"

    const-string v3, "Reference counting corrupted in usage statistics."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 753
    :catch_0
    move-exception v1

    const-string v1, "GCoreFlp"

    const-string v2, "Tried to remove a death link to a binder that didn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :cond_1
    iget v3, v1, Lcom/google/android/location/fused/at;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/google/android/location/fused/at;->a:I

    iget v3, v1, Lcom/google/android/location/fused/at;->a:I

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/google/android/location/fused/at;->b:J

    sub-long/2addr v4, v6

    iget-wide v6, v1, Lcom/google/android/location/fused/at;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/location/fused/at;->c:J

    goto :goto_1

    :cond_2
    const-string v1, "GCoreFlp"

    const-string v3, "Couldn\'t find package statistics when removing location request."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 762
    :cond_3
    const-string v1, "GCoreFlp"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 763
    const-string v1, "Removed a location request %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    :cond_4
    :goto_2
    return-void

    .line 765
    :cond_5
    const-string v0, "GCoreFlp"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 766
    const-string v0, "Attempted to remove location listener that wasn\'t found"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/google/android/location/fused/g;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/location/fused/g;->f()V

    return-void
.end method

.method private static b(Landroid/location/Location;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 987
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 988
    const-string v1, "GCoreFlp"

    const-string v2, "Location is incomplete because provider not set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_0
    return v0

    .line 992
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 993
    const-string v1, "GCoreFlp"

    const-string v2, "Location is incomplete because accuracy not set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 997
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 998
    const-string v1, "GCoreFlp"

    const-string v2, "Location is incomplete because time not set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1002
    :cond_2
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 1003
    const-string v1, "GCoreFlp"

    const-string v2, "Location is incomplete because elapsed realtime nanos not set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1007
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/location/fused/g;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/fused/g;)Lcom/google/android/location/b/af;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->k:Lcom/google/android/location/b/af;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/fused/g;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->e:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private e()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 1011
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1013
    iget-object v0, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    .line 1014
    iget-object v0, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1017
    :cond_0
    return-object v1
.end method

.method static synthetic f(Lcom/google/android/location/fused/g;)Lcom/google/android/location/fused/as;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->j:Lcom/google/android/location/fused/as;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/android/location/fused/g;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/fused/g;->t:Z

    .line 1042
    return-void
.end method

.method static synthetic g(Lcom/google/android/location/fused/g;)Lcom/google/android/location/fused/v;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->n:Lcom/google/android/location/fused/v;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/location/fused/g;)Lcom/google/android/location/fused/c;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->f:Lcom/google/android/location/fused/c;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/fused/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/location/fused/g;)Lcom/google/android/location/o/g;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/g;->m:Lcom/google/android/location/o/g;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;ZZ)Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    iget-object v0, p0, Lcom/google/android/location/fused/g;->g:Lcom/google/android/location/o/ab;

    invoke-virtual {v0}, Lcom/google/android/location/o/ab;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    const/4 v0, 0x0

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 457
    :cond_1
    iget-object v3, p0, Lcom/google/android/location/fused/g;->l:Lcom/google/android/location/fused/aw;

    iget-object v4, p0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    if-nez p3, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/google/android/location/fused/bc;->a(Z)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v3, v0, p4, p3}, Lcom/google/android/location/fused/aw;->a(Landroid/location/Location;ZZ)Landroid/location/Location;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_2

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-direct {p0, p1, v3, p3}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;Z)Z

    .line 467
    :cond_2
    const-string v3, "GCoreFlp"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const-string v3, "getLastLocation returned: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 457
    goto :goto_1
.end method

.method public final a(Landroid/app/PendingIntent;)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/google/android/location/fused/g;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/u;

    .line 522
    if-eqz v0, :cond_1

    .line 523
    iget-object v2, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/gms/location/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/location/LocationRequest;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    move-object v0, v1

    .line 526
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 523
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 526
    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 352
    iget-object v1, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    new-instance v2, Lcom/google/android/location/fused/l;

    invoke-direct {v2, p0, v0}, Lcom/google/android/location/fused/l;-><init>(Lcom/google/android/location/fused/g;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/location/fused/o;->a(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 831
    invoke-static {p1}, Lcom/google/android/location/fused/g;->b(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    iget-object v0, v0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 3

    .prologue
    .line 846
    invoke-static {p1}, Lcom/google/android/location/fused/g;->b(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    const-string v0, "GCoreFlp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injected location object missing required fields: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/fused/bc;->a(Landroid/location/Location;I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 650
    new-instance v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    .line 653
    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;IZ)V

    .line 661
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;ZLjava/util/Collection;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 614
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/g;->p:Lcom/google/android/gms/location/internal/ClientIdentity;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 617
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    .line 622
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v2, p0, Lcom/google/android/location/fused/g;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZILjava/lang/String;)V

    .line 624
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationStatus;)V
    .locals 1

    .prologue
    .line 928
    iput-object p1, p0, Lcom/google/android/location/fused/g;->r:Lcom/google/android/gms/location/LocationStatus;

    .line 930
    iget-object v0, p0, Lcom/google/android/location/fused/g;->s:Lcom/google/android/location/fused/t;

    .line 931
    if-eqz v0, :cond_0

    .line 932
    invoke-interface {v0, p1}, Lcom/google/android/location/fused/t;->a(Lcom/google/android/gms/location/LocationStatus;)V

    .line 934
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/h;)V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/gms/location/h;)V

    .line 735
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;Z)V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;IZ)V

    .line 681
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 486
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 487
    invoke-direct {p0, v0, p4}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    new-instance v1, Lcom/google/android/gms/location/internal/ClientIdentity;

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZILjava/lang/String;)V

    .line 500
    return-void
.end method

.method public final a(Lcom/google/android/location/fused/t;)V
    .locals 1

    .prologue
    .line 669
    iput-object p1, p0, Lcom/google/android/location/fused/g;->s:Lcom/google/android/location/fused/t;

    .line 670
    if-eqz p1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/google/android/location/fused/g;->r:Lcom/google/android/gms/location/LocationStatus;

    invoke-interface {p1, v0}, Lcom/google/android/location/fused/t;->a(Lcom/google/android/gms/location/LocationStatus;)V

    .line 673
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/fused/bc;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 938
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 939
    new-instance v1, Lcom/google/android/location/fused/n;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/location/fused/n;-><init>(Lcom/google/android/location/fused/g;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 971
    iget-object v2, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    invoke-virtual {v2, v1}, Lcom/google/android/location/fused/o;->a(Ljava/lang/Runnable;)V

    .line 973
    const-wide/16 v2, 0x1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    const-string v0, "\nThread interrupted while dumping location requests"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 822
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    iget-object v2, v0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 823
    return-void

    :cond_0
    move v0, v1

    .line 822
    goto :goto_0
.end method

.method public final a([Landroid/location/Location;)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 857
    iget-object v0, p0, Lcom/google/android/location/fused/g;->g:Lcom/google/android/location/o/ab;

    invoke-virtual {v0}, Lcom/google/android/location/o/ab;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    const-string v0, "GCoreFlp"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    const-string v0, "Dropping location generated by background user."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 865
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_0

    .line 866
    aget-object v5, p1, v2

    .line 869
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    invoke-virtual {v5}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 871
    const-string v1, "noGPSLocation"

    invoke-static {v5, v1}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 875
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    const-string v1, "dbgProtoBuf"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "wifi"

    const-string v6, "locationType"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received FLP wifi location without debug info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    const-string v1, "GCoreFlp"

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/g;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    .line 890
    iget-object v1, p0, Lcom/google/android/location/fused/g;->l:Lcom/google/android/location/fused/aw;

    iget-object v7, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v7}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b()Z

    move-result v7

    invoke-static {v0}, Lcom/google/android/location/fused/r;->a(Lcom/google/android/location/fused/r;)Z

    move-result v8

    invoke-virtual {v1, v5, v7, v8}, Lcom/google/android/location/fused/aw;->a(Landroid/location/Location;ZZ)Landroid/location/Location;

    move-result-object v7

    .line 894
    const-string v1, "GCoreFlp"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 895
    const-string v1, "Sanitized location for clients %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v9}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v7, v8, v4

    invoke-static {v1, v8}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    :cond_4
    if-eqz v7, :cond_3

    .line 900
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_5

    move v1, v4

    :goto_2
    invoke-virtual {v0, v7, v1}, Lcom/google/android/location/fused/r;->a(Landroid/location/Location;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 906
    :try_start_0
    iget-object v1, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v1

    .line 908
    iget-object v8, p0, Lcom/google/android/location/fused/g;->n:Lcom/google/android/location/fused/v;

    invoke-virtual {v8, v1}, Lcom/google/android/location/fused/v;->c(Ljava/util/Collection;)V

    .line 909
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 910
    iget v9, v1, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    iget-object v1, v1, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/location/fused/r;->a(Lcom/google/android/location/fused/r;)Z

    move-result v10

    invoke-direct {p0, v9, v1, v10}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 916
    :catch_0
    move-exception v1

    .line 917
    iget-object v0, v0, Lcom/google/android/location/fused/r;->a:Lcom/google/android/gms/location/h;

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/h;)V

    .line 918
    const-string v0, "GCoreFlp"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "client died while calling listener "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 900
    goto :goto_2

    .line 915
    :cond_6
    :try_start_1
    iget-object v1, v0, Lcom/google/android/location/fused/r;->a:Lcom/google/android/gms/location/h;

    invoke-interface {v1, v7}, Lcom/google/android/gms/location/h;->a(Landroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 865
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    new-instance v1, Lcom/google/android/location/fused/m;

    invoke-direct {v1, p0}, Lcom/google/android/location/fused/m;-><init>(Lcom/google/android/location/fused/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/o;->a(Ljava/lang/Runnable;)V

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/g;->a(Z)V

    .line 415
    return-void
.end method

.method public final b(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/google/android/location/fused/g;->o:Lcom/google/android/location/fused/o;

    iget-object v0, v0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 774
    return-void
.end method

.method public final c()Landroid/location/Location;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 425
    iget-object v0, p0, Lcom/google/android/location/fused/g;->p:Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v0, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    iget-object v1, p0, Lcom/google/android/location/fused/g;->p:Lcom/google/android/gms/location/internal/ClientIdentity;

    iget-object v1, v1, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/google/android/location/fused/g;->a(ILjava/lang/String;ZZ)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/location/LocationStatus;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/location/fused/g;->r:Lcom/google/android/gms/location/LocationStatus;

    return-object v0
.end method
