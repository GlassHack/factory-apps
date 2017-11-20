.class final Lcom/google/android/location/reporting/service/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/service/DispatchingService;

.field private final b:Lcom/google/android/location/reporting/ApiMetadataStore;

.field private final c:Lcom/google/android/location/fused/g;

.field private d:Lcom/google/android/location/reporting/LocationReportingController;

.field private e:Lcom/google/android/location/reporting/l;

.field private f:Lcom/google/android/location/reporting/j;

.field private g:Lcom/google/android/location/reporting/b;

.field private h:Lcom/google/android/location/reporting/service/s;

.field private i:Lcom/google/android/location/reporting/service/g;

.field private j:Lcom/google/android/location/reporting/service/z;

.field private final k:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/android/location/reporting/service/DispatchingService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 17

    .prologue
    .line 322
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 325
    new-instance v4, Lcom/google/android/gms/common/util/j;

    invoke-direct {v4}, Lcom/google/android/gms/common/util/j;-><init>()V

    .line 326
    new-instance v7, Lcom/google/android/location/reporting/h;

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/r;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/google/android/location/reporting/h;-><init>(Lcom/google/android/location/reporting/r;)V

    .line 327
    new-instance v5, Lcom/google/android/location/reporting/LocationRecordStore;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v7}, Lcom/google/android/location/reporting/LocationRecordStore;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V

    .line 328
    new-instance v6, Lcom/google/android/location/reporting/DetectedActivityStore;

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v7}, Lcom/google/android/location/reporting/DetectedActivityStore;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V

    .line 330
    const/4 v3, 0x0

    .line 331
    sget-object v2, Lcom/google/android/location/reporting/service/y;->o:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    :try_start_0
    new-instance v12, Lcom/google/android/location/reporting/ble/b;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/google/android/location/reporting/ble/b;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    new-instance v2, Lcom/google/android/location/reporting/ApiMetadataStore;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v7}, Lcom/google/android/location/reporting/ApiMetadataStore;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/reporting/service/f;->b:Lcom/google/android/location/reporting/ApiMetadataStore;

    .line 343
    invoke-static/range {p2 .. p2}, Lcom/google/android/location/fused/g;->a(Landroid/content/Context;)Lcom/google/android/location/fused/g;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/reporting/service/f;->c:Lcom/google/android/location/fused/g;

    .line 344
    new-instance v2, Lcom/google/android/location/reporting/LocationReportingController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/reporting/service/f;->b:Lcom/google/android/location/reporting/ApiMetadataStore;

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/r;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/reporting/service/f;->c:Lcom/google/android/location/fused/g;

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v12}, Lcom/google/android/location/reporting/LocationReportingController;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/fused/g;Lcom/google/android/location/reporting/ble/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/reporting/service/f;->d:Lcom/google/android/location/reporting/LocationReportingController;

    .line 348
    new-instance v2, Lcom/google/android/location/reporting/l;

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/r;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/reporting/service/f;->b:Lcom/google/android/location/reporting/ApiMetadataStore;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3, v4, v7}, Lcom/google/android/location/reporting/l;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/e;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/reporting/service/f;->e:Lcom/google/android/location/reporting/l;

    .line 350
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/reporting/service/f;->d:Lcom/google/android/location/reporting/LocationReportingController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/reporting/service/f;->e:Lcom/google/android/location/reporting/l;

    invoke-static/range {p2 .. p2}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    new-instance v10, Lcom/google/android/location/reporting/b/c;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/google/android/location/reporting/b/c;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/location/d/g;->e:Lcom/google/android/location/d/g;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v2

    iget v13, v2, Lcom/google/android/location/d/f;->d:I

    const-string v2, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    new-instance v7, Lcom/google/android/location/reporting/j;

    new-instance v14, Lcom/google/android/gms/common/util/j;

    invoke-direct {v14}, Lcom/google/android/gms/common/util/j;-><init>()V

    move-object v9, v5

    invoke-direct/range {v7 .. v15}, Lcom/google/android/location/reporting/j;-><init>(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/b/c;Lcom/google/android/location/reporting/l;Lcom/google/android/location/reporting/LocationReportingController;ILcom/google/android/gms/common/util/i;Landroid/net/wifi/WifiManager;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/location/reporting/service/f;->f:Lcom/google/android/location/reporting/j;

    .line 352
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/service/f;->d:Lcom/google/android/location/reporting/LocationReportingController;

    invoke-static/range {p2 .. p2}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/location/reporting/b;

    new-instance v7, Lcom/google/android/gms/common/util/j;

    invoke-direct {v7}, Lcom/google/android/gms/common/util/j;-><init>()V

    invoke-direct {v4, v2, v6, v3, v7}, Lcom/google/android/location/reporting/b;-><init>(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/LocationReportingController;Lcom/google/android/gms/common/util/i;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/reporting/service/f;->g:Lcom/google/android/location/reporting/b;

    .line 355
    new-instance v2, Lcom/google/android/location/reporting/service/s;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/google/android/location/reporting/service/s;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/reporting/service/f;->h:Lcom/google/android/location/reporting/service/s;

    .line 356
    new-instance v2, Lcom/google/android/location/reporting/service/g;

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Lcom/google/android/location/reporting/service/g;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/reporting/service/f;->i:Lcom/google/android/location/reporting/service/g;

    .line 358
    new-instance v7, Lcom/google/android/location/reporting/service/z;

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/r;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/reporting/service/f;->d:Lcom/google/android/location/reporting/LocationReportingController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/location/reporting/service/f;->b:Lcom/google/android/location/reporting/ApiMetadataStore;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/reporting/service/f;->i:Lcom/google/android/location/reporting/service/g;

    move-object/from16 v16, v0

    move-object/from16 v8, p2

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v16}, Lcom/google/android/location/reporting/service/z;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/LocationReportingController;Lcom/google/android/location/reporting/LocationRecordStore;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/service/g;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/location/reporting/service/f;->j:Lcom/google/android/location/reporting/service/z;

    .line 362
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/location/reporting/service/DispatchingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 363
    const/4 v3, 0x1

    const-string v4, "UlrDispatchingService"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/reporting/service/f;->k:Landroid/os/PowerManager$WakeLock;

    .line 364
    return-void

    .line 334
    :catch_0
    move-exception v2

    .line 335
    const-string v8, "GCoreUlr"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 336
    const-string v8, "GCoreUlr"

    const-string v9, "Error creating BleScanReporter"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v12, v3

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/ulr/ApiMetadata;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    .line 469
    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for accounts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/reporting/a/c;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccountConfigs()Ljava/util/List;

    move-result-object v0

    .line 474
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->a(I)V

    .line 475
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 476
    iget-object v2, p0, Lcom/google/android/location/reporting/service/f;->b:Lcom/google/android/location/reporting/ApiMetadataStore;

    invoke-virtual {v2, v0, p1, p3}, Lcom/google/android/location/reporting/ApiMetadataStore;->a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 478
    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 370
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/DispatchingService;->d(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/o/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/o/ab;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DispatchingService ignoring intent for non-foreground user: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 373
    return-void

    .line 370
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DispatchingService dispatching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "com.google.android.location.reporting.ACTION_LOCATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/reporting/service/f;->f:Lcom/google/android/location/reporting/j;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/reporting/j;->a(Landroid/content/Intent;Lcom/google/android/location/reporting/config/ReportingConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 370
    :cond_3
    :try_start_2
    const-string v1, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Legacy intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", updating active state to cancel it"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/DispatchingService;->e(Lcom/google/android/location/reporting/service/DispatchingService;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->c:Lcom/google/android/location/fused/g;

    invoke-virtual {v1, v0}, Lcom/google/android/location/fused/g;->b(Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    :cond_5
    const-string v2, "com.google.android.location.reporting.ACTION_ACTIVITY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/reporting/service/f;->g:Lcom/google/android/location/reporting/b;

    const-string v3, "GCoreUlr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ActivityReceiver received "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; lowPowerMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/location/reporting/b;->a:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/ReportingConfig;->isReportingActive()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v0, v2, Lcom/google/android/location/reporting/b;->b:Lcom/google/android/location/reporting/LocationReportingController;

    iget-object v2, v2, Lcom/google/android/location/reporting/b;->c:Lcom/google/android/gms/common/util/i;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/LocationReportingController;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Lcom/google/android/location/reporting/j;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Administrative event in ActivityReceiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has no activity"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, v2, Lcom/google/android/location/reporting/b;->a:Lcom/google/android/location/reporting/service/m;

    iput-object v3, v0, Lcom/google/android/location/reporting/service/m;->b:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_a

    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No realtime in activity result: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_a
    iget-object v0, v2, Lcom/google/android/location/reporting/b;->a:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/m;->e()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v7

    if-ne v6, v7, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object v0, Lcom/google/android/location/reporting/service/y;->j:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_c

    const-string v0, "GCoreUlr"

    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "GCoreUlr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Throttling activity because it\'s only been "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " millis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/google/android/location/reporting/b;->a:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0, v3}, Lcom/google/android/location/reporting/service/m;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/android/location/reporting/b;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/location/reporting/config/ReportingConfig;)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    :cond_d
    const-string v2, "com.google.android.location.reporting.ACTION_LOCATION_STATUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/LocationStatus;

    if-nez v1, :cond_e

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locationStatus not set in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/location/reporting/service/m;->a(Lcom/google/android/gms/location/LocationStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/location/reporting/c;->a(Lcom/google/android/gms/location/LocationStatus;J)Lcom/google/android/ulr/ApiMetadata;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location status"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/location/reporting/service/f;->a(Lcom/google/android/ulr/ApiMetadata;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "com.google.android.location.reporting.ACTION_BLE_SCAN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_11

    :try_start_3
    const-string v1, "ble_scan"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bleData not set in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Ljava/lang/RuntimeException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_10
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/location/reporting/c;->a(Ljava/util/List;J)Lcom/google/android/ulr/ApiMetadata;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble data"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/location/reporting/service/f;->a(Lcom/google/android/ulr/ApiMetadata;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_11
    :try_start_6
    const-string v2, "com.google.android.location.reporting.ACTION_UPDATE_WORLD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->j:Lcom/google/android/location/reporting/service/z;

    invoke-virtual {v1, v0}, Lcom/google/android/location/reporting/service/z;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v2, "com.google.android.location.reporting.ACTION_UPDATE_ACTIVE_STATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->d:Lcom/google/android/location/reporting/LocationReportingController;

    invoke-virtual {v1, v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Lcom/google/android/location/reporting/config/ReportingConfig;)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "com.google.android.location.reporting.ACTION_APPLY_UPLOAD_REQUESTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->e:Lcom/google/android/location/reporting/l;

    iget-object v2, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v2}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v3}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/location/reporting/service/m;->d()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/location/reporting/l;->a(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/config/ReportingConfig;Landroid/location/Location;)Z

    goto/16 :goto_0

    :cond_14
    const-string v2, "com.google.android.location.reporting.ACTION_INSISTENT_SYNC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/google/android/location/reporting/service/f;->h:Lcom/google/android/location/reporting/service/s;

    invoke-virtual {v1, v0}, Lcom/google/android/location/reporting/service/s;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "com.google.android.location.reporting.ACTION_RESET_WIFI_ATTACHMENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/google/android/location/reporting/service/f;->a:Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/DispatchingService;->c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/reporting/service/m;->a(J)V

    goto/16 :goto_0

    :cond_16
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported action in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
