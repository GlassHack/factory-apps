.class public final Lcom/google/android/location/reporting/service/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Collection;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/location/reporting/service/m;

.field private final d:Lcom/google/android/location/reporting/config/h;

.field private final e:Lcom/google/android/location/reporting/r;

.field private final f:Lcom/google/android/location/reporting/LocationReportingController;

.field private final g:Lcom/google/android/location/reporting/LocationRecordStore;

.field private final h:Lcom/google/android/location/reporting/e;

.field private final i:Lcom/google/android/location/reporting/e;

.field private final j:Lcom/google/android/location/reporting/service/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/z;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/LocationReportingController;Lcom/google/android/location/reporting/LocationRecordStore;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/service/g;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 155
    iput-object p1, p0, Lcom/google/android/location/reporting/service/z;->b:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/google/android/location/reporting/service/z;->c:Lcom/google/android/location/reporting/service/m;

    .line 157
    iput-object p3, p0, Lcom/google/android/location/reporting/service/z;->d:Lcom/google/android/location/reporting/config/h;

    .line 158
    iput-object p4, p0, Lcom/google/android/location/reporting/service/z;->e:Lcom/google/android/location/reporting/r;

    .line 159
    iput-object p5, p0, Lcom/google/android/location/reporting/service/z;->f:Lcom/google/android/location/reporting/LocationReportingController;

    .line 160
    iput-object p6, p0, Lcom/google/android/location/reporting/service/z;->g:Lcom/google/android/location/reporting/LocationRecordStore;

    .line 161
    iput-object p7, p0, Lcom/google/android/location/reporting/service/z;->h:Lcom/google/android/location/reporting/e;

    .line 162
    iput-object p8, p0, Lcom/google/android/location/reporting/service/z;->i:Lcom/google/android/location/reporting/e;

    .line 163
    iput-object p9, p0, Lcom/google/android/location/reporting/service/z;->j:Lcom/google/android/location/reporting/service/g;

    .line 164
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const-wide/32 v4, 0x36ee80

    const/4 v1, 0x0

    .line 132
    const-string v0, "com.google.android.location.reporting.ACTION_UPDATE_WORLD"

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 135
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 136
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 138
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 140
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "GCoreUlr"

    const-string v1, "WorldUpdater scheduled for every 3600000 millis"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 88
    const-string v0, "com.google.android.location.reporting.ACTION_UPDATE_WORLD"

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const-string v1, "receiverAction"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 95
    return-void

    .line 92
    :cond_0
    const-string v1, "GCoreUlr"

    const-string v2, ""

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing receiver intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/location/reporting/e;)V
    .locals 3

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/reporting/e;->a()I
    :try_end_0
    .catch Lcom/google/android/location/reporting/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "GCoreUlr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 107
    if-nez v0, :cond_2

    const-string v0, ""

    .line 108
    :goto_0
    sget-object v1, Lcom/google/android/location/reporting/service/z;->a:Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const-string v1, "GCoreUlr"

    const-string v2, ""

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Called for unexpected action"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-static {p0, p1}, Lcom/google/android/location/reporting/service/z;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 118
    :cond_1
    :goto_1
    return-void

    .line 107
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_3
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring non-Maps package in package broadcast: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 12

    .prologue
    .line 167
    const-string v0, "receiverAction"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "GCoreUlr"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorldUpdater received intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with receiverAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->g:Lcom/google/android/location/reporting/LocationRecordStore;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/z;->a(Lcom/google/android/location/reporting/e;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->h:Lcom/google/android/location/reporting/e;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/z;->a(Lcom/google/android/location/reporting/e;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->i:Lcom/google/android/location/reporting/e;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/z;->a(Lcom/google/android/location/reporting/e;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->d:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/h;->b()Z

    .line 177
    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 179
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->e:Lcom/google/android/location/reporting/r;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/reporting/r;->a(J)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->d:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v2

    .line 190
    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/service/InitializerService;->a(Landroid/content/Context;Lcom/google/android/location/reporting/config/ReportingConfig;)I

    .line 192
    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->j:Lcom/google/android/location/reporting/service/g;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/service/g;->a()V

    .line 194
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 196
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/ReportingConfig;->g()Z

    move-result v4

    .line 201
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/ReportingConfig;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v6

    .line 203
    if-nez v6, :cond_3

    .line 205
    const-string v1, "GCoreUlr"

    const-string v6, ""

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "null account in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v6, v7}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    :cond_3
    if-eqz v4, :cond_5

    .line 207
    sget-object v1, Lcom/google/android/location/reporting/service/y;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 209
    invoke-static {v6, v8, v9}, Lcom/google/android/location/reporting/service/ReportingSyncService;->a(Landroid/accounts/Account;J)V

    .line 210
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    invoke-static {v6}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "GCoreUlr"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Triggering manual sync to test re-auth for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_4
    const-string v0, "WorldUpdater"

    invoke-static {v6, v0}, Lcom/google/android/location/reporting/service/ReportingSyncService;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_5
    invoke-static {v6}, Lcom/google/android/location/reporting/service/ReportingSyncService;->a(Landroid/accounts/Account;)V

    goto :goto_0

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/reporting/service/z;->f:Lcom/google/android/location/reporting/LocationReportingController;

    invoke-virtual {v0, v2}, Lcom/google/android/location/reporting/LocationReportingController;->a(Lcom/google/android/location/reporting/config/ReportingConfig;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/location/reporting/service/z;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/c;->a(Landroid/content/Context;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/location/reporting/service/z;->c:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/m;->k()Lcom/google/android/ulr/ApiRate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/z;->c:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/service/m;->j()Lcom/google/android/gms/location/LocationStatus;

    move-result-object v1

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationStatus;->d()Z

    move-result v2

    if-nez v2, :cond_8

    .line 233
    :cond_7
    :goto_1
    return-void

    .line 232
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/ulr/ApiRate;->b()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationStatus;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/location/reporting/service/z;->c:Lcom/google/android/location/reporting/service/m;

    iget-wide v6, v0, Lcom/google/android/location/reporting/service/m;->a:J

    iget-object v0, p0, Lcom/google/android/location/reporting/service/z;->c:Lcom/google/android/location/reporting/service/m;

    iget-wide v8, v0, Lcom/google/android/location/reporting/service/m;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sget-object v0, Lcom/google/android/location/reporting/service/y;->N:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v10, v2

    sub-long v0, v2, v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_7

    cmp-long v2, v6, v0

    if-gez v2, :cond_7

    cmp-long v0, v8, v0

    if-gez v0, :cond_7

    const-string v0, "flp_missing_location"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing location or location status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "GCoreUlr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
