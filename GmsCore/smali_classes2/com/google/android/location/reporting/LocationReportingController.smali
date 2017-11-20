.class public Lcom/google/android/location/reporting/LocationReportingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/common/util/i;

.field private final c:Lcom/google/android/location/reporting/e;

.field private final d:Lcom/google/android/location/reporting/e;

.field private final e:Lcom/google/android/location/reporting/e;

.field private final f:Lcom/google/android/location/reporting/r;

.field private final g:Lcom/google/android/location/reporting/config/h;

.field private final h:Lcom/google/android/location/reporting/service/m;

.field private final i:Lcom/google/android/location/fused/g;

.field private final j:Lcom/google/android/location/reporting/ble/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/fused/g;Lcom/google/android/location/reporting/ble/a;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/location/reporting/LocationReportingController;->a:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/google/android/location/reporting/LocationReportingController;->b:Lcom/google/android/gms/common/util/i;

    .line 107
    iput-object p3, p0, Lcom/google/android/location/reporting/LocationReportingController;->c:Lcom/google/android/location/reporting/e;

    .line 108
    iput-object p4, p0, Lcom/google/android/location/reporting/LocationReportingController;->d:Lcom/google/android/location/reporting/e;

    .line 109
    iput-object p5, p0, Lcom/google/android/location/reporting/LocationReportingController;->e:Lcom/google/android/location/reporting/e;

    .line 110
    iput-object p6, p0, Lcom/google/android/location/reporting/LocationReportingController;->f:Lcom/google/android/location/reporting/r;

    .line 111
    iput-object p7, p0, Lcom/google/android/location/reporting/LocationReportingController;->g:Lcom/google/android/location/reporting/config/h;

    .line 112
    iput-object p8, p0, Lcom/google/android/location/reporting/LocationReportingController;->h:Lcom/google/android/location/reporting/service/m;

    .line 113
    iput-object p9, p0, Lcom/google/android/location/reporting/LocationReportingController;->i:Lcom/google/android/location/fused/g;

    .line 114
    iput-object p10, p0, Lcom/google/android/location/reporting/LocationReportingController;->j:Lcom/google/android/location/reporting/ble/a;

    .line 115
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/google/android/location/reporting/LocationReportingController;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/reporting/LocationReportingController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/ulr/ApiRate;)V
    .locals 5

    .prologue
    .line 308
    invoke-static {p2}, Lcom/google/android/location/reporting/c;->a(Lcom/google/android/ulr/ApiRate;)Lcom/google/android/ulr/ApiMetadata;

    move-result-object v1

    .line 309
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccountConfigs()Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/location/reporting/b/j;->a(I)V

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 313
    iget-object v3, p0, Lcom/google/android/location/reporting/LocationReportingController;->e:Lcom/google/android/location/reporting/e;

    const-string v4, "ApiRate"

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/location/reporting/e;->a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/RuntimeException;)V
    .locals 2

    .prologue
    .line 351
    const-string v0, "GCoreUlr"

    const-string v1, "Unexpected exception thrown by BleScanReporter"

    invoke-static {v0, v1, p0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/reporting/config/ReportingConfig;)V
    .locals 14

    .prologue
    .line 127
    invoke-static {}, Lcom/google/android/location/reporting/b/a;->a()V

    .line 129
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->b:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v10

    .line 132
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->g:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/h;->c()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    .line 133
    invoke-static {v0, p1}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/config/ReportingConfig;)V

    .line 135
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/google/android/location/reporting/LocationReportingController;->c:Lcom/google/android/location/reporting/e;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/l;->a(Lcom/google/android/location/reporting/e;Ljava/util/List;)V

    .line 137
    iget-object v1, p0, Lcom/google/android/location/reporting/LocationReportingController;->d:Lcom/google/android/location/reporting/e;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/l;->a(Lcom/google/android/location/reporting/e;Ljava/util/List;)V

    .line 138
    iget-object v1, p0, Lcom/google/android/location/reporting/LocationReportingController;->e:Lcom/google/android/location/reporting/e;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/l;->a(Lcom/google/android/location/reporting/e;Ljava/util/List;)V

    .line 140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 141
    const-string v1, "GCoreUlr"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ensuring that reporting is active for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/a/c;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v4, "internal"

    new-instance v0, Lcom/google/android/ulr/ApiRate;

    const-string v1, "stationary"

    sget-object v2, Lcom/google/android/location/reporting/service/y;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "stationary"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/ulr/ApiRate;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v9, v0

    :goto_0
    sget-object v0, Lcom/google/android/location/reporting/service/y;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Lcom/google/android/location/reporting/service/y;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget-object v0, Lcom/google/android/location/reporting/service/y;->i:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    new-instance v1, Lcom/google/android/location/reporting/x;

    invoke-virtual {v9}, Lcom/google/android/ulr/ApiRate;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/location/reporting/x;-><init>(JJZJ)V

    const-string v0, "com.google.android.location.reporting.ACTION_LOCATION"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->h:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/m;->l()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v2

    sget-object v0, Lcom/google/android/location/reporting/service/y;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/android/location/reporting/k;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/k;-><init>(Lcom/google/android/location/reporting/LocationReportingController;)V

    :goto_1
    iget-object v4, p0, Lcom/google/android/location/reporting/LocationReportingController;->i:Lcom/google/android/location/fused/g;

    invoke-virtual {v4, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/t;)V

    if-nez v2, :cond_9

    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Skipping FLP amnesia test: no oldConfig in "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/reporting/LocationReportingController;->h:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->i:Lcom/google/android/location/fused/g;

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    iget-wide v4, v1, Lcom/google/android/location/reporting/x;->a:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    iget-wide v4, v1, Lcom/google/android/location/reporting/x;->b:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    iget-boolean v4, v1, Lcom/google/android/location/reporting/x;->d:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Z)V

    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GMS FLP location updates requested: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/location/reporting/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; triggerImmediate=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "com.google.android.location.reporting.ACTION_ACTIVITY"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->a:Landroid/content/Context;

    new-instance v3, Lcom/google/android/location/internal/h;

    invoke-direct {v3}, Lcom/google/android/location/internal/h;-><init>()V

    iget-wide v4, v1, Lcom/google/android/location/reporting/x;->c:J

    const/4 v6, 0x0

    const-string v8, "UlrSampleSpec"

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/location/internal/h;->a(JZLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/google/android/location/internal/h;->c(Z)Lcom/google/android/location/internal/h;

    invoke-virtual {v3, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GCoreUlr"

    const-string v2, "Unable to bind to GMS NLP"

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->b:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->h:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/google/android/location/reporting/service/m;->a(Lcom/google/android/ulr/ApiRate;Lcom/google/android/location/reporting/x;J)V

    invoke-direct {p0, p1, v9}, Lcom/google/android/location/reporting/LocationReportingController;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/ulr/ApiRate;)V

    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GMS FLP location and AR updates requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/z;->a(Landroid/content/Context;)V

    .line 146
    :cond_5
    :goto_4
    sget-object v0, Lcom/google/android/location/reporting/service/y;->o:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->j:Lcom/google/android/location/reporting/ble/a;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->j:Lcom/google/android/location/reporting/ble/a;

    invoke-interface {v0}, Lcom/google/android/location/reporting/ble/a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GCoreUlr"

    const-string v1, "GMS BLE scans requested."

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->h:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/service/m;->a(Lcom/google/android/location/reporting/config/ReportingConfig;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->g:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v0, p1, v10, v11}, Lcom/google/android/location/reporting/config/h;->a(Lcom/google/android/location/reporting/config/ReportingConfig;J)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/c;

    .line 159
    invoke-static {v0}, Lcom/google/android/location/reporting/c;->a(Lcom/google/android/location/reporting/config/c;)Lcom/google/android/ulr/ApiMetadata;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/google/android/location/reporting/LocationReportingController;->e:Lcom/google/android/location/reporting/e;

    iget-object v0, v0, Lcom/google/android/location/reporting/config/c;->a:Lcom/google/android/location/reporting/config/AccountConfig;

    const-string v4, "ApiActivationChange"

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/location/reporting/e;->a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_7

    .line 145
    :cond_7
    const-string v4, "internal"

    new-instance v0, Lcom/google/android/ulr/ApiRate;

    const-string v1, "default"

    sget-object v2, Lcom/google/android/location/reporting/service/y;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "default"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/ulr/ApiRate;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v9, v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/ReportingConfig;->isReportingActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->i:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, v3}, Lcom/google/android/location/fused/g;->a(Landroid/app/PendingIntent;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v0, "flp_request_dropped"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "FLP dropped ULR location request: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GCoreUlr"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_a
    iget-object v2, p0, Lcom/google/android/location/reporting/LocationReportingController;->h:Lcom/google/android/location/reporting/service/m;

    iget-object v0, v2, Lcom/google/android/location/reporting/service/m;->c:Lcom/google/android/location/reporting/x;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/service/m;->l()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/ReportingConfig;->isReportingActive()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_8
    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    iget-wide v6, v0, Lcom/google/android/location/reporting/x;->a:J

    invoke-virtual {v4}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v12

    cmp-long v2, v6, v12

    if-nez v2, :cond_c

    :goto_9
    invoke-virtual {v1, v0}, Lcom/google/android/location/reporting/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " matches "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", no need to request a new one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x0

    goto :goto_8

    :cond_c
    const-string v2, "GCoreUlr"

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FLP request "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " incompatible with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "flp_request_inconsistent"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    goto :goto_9

    :cond_e
    const-string v2, "GCoreUlr"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FLP request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GMS NLP is bound with activity detection polling interval "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/google/android/location/reporting/x;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 146
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Ljava/lang/RuntimeException;)V

    goto/16 :goto_5

    .line 148
    :cond_10
    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 149
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ensuring that reporting is stopped because of reasons: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->getInactiveReasonsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_11
    const-string v0, "GCoreUlr"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "GCoreUlr"

    const-string v1, "Stopping Location Reporting."

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v0, "com.google.android.location.reporting.ACTION_LOCATION"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/LocationReportingController;->i:Lcom/google/android/location/fused/g;

    invoke-virtual {v1, v0}, Lcom/google/android/location/fused/g;->b(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/LocationReportingController;->i:Lcom/google/android/location/fused/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/t;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const-string v0, "com.google.android.location.reporting.ACTION_ACTIVITY"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "GCoreUlr"

    const-string v1, "Unbound from all location providers"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->j:Lcom/google/android/location/reporting/ble/a;

    if-eqz v0, :cond_14

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->j:Lcom/google/android/location/reporting/ble/a;

    invoke-interface {v0}, Lcom/google/android/location/reporting/ble/a;->b()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "GCoreUlr"

    const-string v1, "GMS BLE scans disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->f:Lcom/google/android/location/reporting/r;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/r;->a()V

    iget-object v0, p0, Lcom/google/android/location/reporting/LocationReportingController;->h:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/m;->a()V

    goto/16 :goto_6

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Ljava/lang/RuntimeException;)V

    goto :goto_a

    .line 162
    :cond_15
    return-void
.end method
