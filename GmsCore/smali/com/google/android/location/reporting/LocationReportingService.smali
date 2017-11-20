.class public Lcom/google/android/location/reporting/LocationReportingService;
.super Lcom/google/android/location/reporting/b/k;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/ConnectivityManager;

.field private b:Lcom/google/android/location/reporting/config/ConfigGetter;

.field private c:Lcom/google/android/location/reporting/w;

.field private d:Lcom/google/android/location/reporting/r;

.field private e:Lcom/google/android/location/reporting/LocationRecordStore;

.field private f:Lcom/google/android/location/reporting/DetectedActivityStore;

.field private g:Lcom/google/android/location/reporting/ApiMetadataStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "GCoreUlr-LocationReportingService"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/b/k;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private static a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 265
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/e;->retrieveEntities(Landroid/accounts/Account;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/google/android/location/reporting/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v1, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DB error retrieving entities for account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :cond_0
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->g(Ljava/lang/Exception;)V

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method private static a(Landroid/accounts/Account;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 150
    invoke-static {p1}, Lcom/google/android/location/reporting/b/j;->e(Ljava/lang/Exception;)V

    .line 151
    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Batch Location Update failed for account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;J)V
    .locals 4

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/location/reporting/e;->a(Landroid/accounts/Account;J)V
    :try_end_0
    .catch Lcom/google/android/location/reporting/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string v1, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DB error deleting entities for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :cond_0
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->f(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 23

    .prologue
    .line 85
    const-string v2, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "GCoreUlr"

    const-string v3, "LocationReportingService has started."

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->b:Lcom/google/android/location/reporting/config/ConfigGetter;

    invoke-interface {v2}, Lcom/google/android/location/reporting/config/ConfigGetter;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v2

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/LocationReportingService;->e:Lcom/google/android/location/reporting/LocationRecordStore;

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/b/l;->a(Lcom/google/android/location/reporting/e;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/LocationReportingService;->f:Lcom/google/android/location/reporting/DetectedActivityStore;

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/b/l;->a(Lcom/google/android/location/reporting/e;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/LocationReportingService;->g:Lcom/google/android/location/reporting/ApiMetadataStore;

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/b/l;->a(Lcom/google/android/location/reporting/e;Ljava/util/List;)V

    .line 92
    const-string v3, "attempt"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/LocationReportingService;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    .line 95
    if-nez v3, :cond_3

    .line 96
    const-string v3, "GCoreUlr"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string v3, "GCoreUlr"

    const-string v4, "Batch Location Update aborted because backgroundDataEnabled false"

    invoke-static {v3, v4}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    const-string v3, "bg_data_disabled"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/util/s;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 104
    const-string v3, "GCoreUlr"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    const-string v3, "GCoreUlr"

    const-string v4, "Batch Location Update aborted because not connected"

    invoke-static {v3, v4}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4
    const-string v3, "no_connection"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 112
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->d:Lcom/google/android/location/reporting/r;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v14

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-virtual {v4}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccountConfigs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v10, v2

    move v11, v3

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 119
    invoke-virtual {v3}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v16

    .line 121
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/android/location/reporting/config/AccountConfig;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "GCoreUlr"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Settings dirty, skipping upload for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "LocationReportingService"

    invoke-static {v4, v2}, Lcom/google/android/location/reporting/service/ReportingSyncService;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    const-string v2, "dirty"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    :goto_2
    or-int/2addr v2, v11

    move v11, v2

    .line 133
    goto :goto_1

    .line 121
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->e:Lcom/google/android/location/reporting/LocationRecordStore;

    invoke-static {v2, v4}, Lcom/google/android/location/reporting/LocationReportingService;->a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->f:Lcom/google/android/location/reporting/DetectedActivityStore;

    invoke-static {v2, v4}, Lcom/google/android/location/reporting/LocationReportingService;->a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->g:Lcom/google/android/location/reporting/ApiMetadataStore;

    invoke-static {v2, v4}, Lcom/google/android/location/reporting/LocationReportingService;->a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping account with no locations: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v2, "empty"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/reporting/a/e;

    iget-wide v0, v2, Lcom/google/android/location/reporting/a/e;->f:J

    move-wide/from16 v18, v0

    const-string v2, "GCoreUlr"

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "GCoreUlr"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "LocationReportingService sending %d locations, %d activities, and %d metadatas for account %s; requests: %s"

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object v17, v20, v21

    const/16 v21, 0x4

    aput-object v14, v20, v21

    move-object/from16 v0, v20

    invoke-static {v8, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v2, "GCoreUlr"

    const/4 v8, 0x2

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "GCoreUlr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Locations: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/location/reporting/b/h;->wrap(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GCoreUlr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Activities: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GCoreUlr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Metadatas: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v3}, Lcom/google/android/location/reporting/config/AccountConfig;->j()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/LocationReportingService;->c:Lcom/google/android/location/reporting/w;

    invoke-interface/range {v3 .. v9}, Lcom/google/android/location/reporting/w;->a(Landroid/accounts/Account;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;J)Lcom/google/android/location/reporting/a;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "GCoreUlr"

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "GCoreUlr"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Server reports setting change occurred after "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requesting sync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v3, "LocationReportingService"

    invoke-static {v4, v3}, Lcom/google/android/location/reporting/service/ReportingSyncService;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-static {v2, v5, v6, v7}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/a;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_d
    const-string v2, "GCoreUlr"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Batch Location Update succeeded for account "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {v5, v6, v7}, Lcom/google/android/location/reporting/b/j;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->e:Lcom/google/android/location/reporting/LocationRecordStore;

    move-wide/from16 v0, v18

    invoke-static {v2, v4, v0, v1}, Lcom/google/android/location/reporting/LocationReportingService;->a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->f:Lcom/google/android/location/reporting/DetectedActivityStore;

    move-wide/from16 v0, v18

    invoke-static {v2, v4, v0, v1}, Lcom/google/android/location/reporting/LocationReportingService;->a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->g:Lcom/google/android/location/reporting/ApiMetadataStore;

    move-wide/from16 v0, v18

    invoke-static {v2, v4, v0, v1}, Lcom/google/android/location/reporting/LocationReportingService;->a(Lcom/google/android/location/reporting/e;Landroid/accounts/Account;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    goto/16 :goto_2

    .line 122
    :catch_0
    move-exception v2

    move-object v3, v2

    .line 123
    const/4 v2, 0x1

    .line 124
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/google/android/location/reporting/LocationReportingService;->a(Landroid/accounts/Account;Ljava/lang/Exception;)V

    move v10, v2

    .line 133
    goto/16 :goto_1

    .line 125
    :catch_1
    move-exception v2

    move-object v3, v2

    .line 126
    const/4 v2, 0x1

    .line 127
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/google/android/location/reporting/LocationReportingService;->a(Landroid/accounts/Account;Ljava/lang/Exception;)V

    move v10, v2

    .line 133
    goto/16 :goto_1

    .line 128
    :catch_2
    move-exception v2

    move-object v3, v2

    .line 129
    const/4 v2, 0x1

    .line 130
    invoke-static {v3}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/RuntimeException;)V

    .line 131
    const-string v4, "GCoreUlr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Batch Location Update failed for account "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v10, v2

    .line 134
    goto/16 :goto_1

    .line 140
    :cond_f
    if-nez v11, :cond_10

    if-eqz v10, :cond_2

    .line 141
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/LocationReportingService;->d:Lcom/google/android/location/reporting/r;

    invoke-virtual {v2, v12, v13}, Lcom/google/android/location/reporting/r;->c(J)Z

    goto/16 :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/android/location/reporting/b/k;->onCreate()V

    .line 70
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 72
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/LocationReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/location/reporting/LocationReportingService;->a:Landroid/net/ConnectivityManager;

    .line 73
    invoke-static {p0}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/LocationReportingService;->b:Lcom/google/android/location/reporting/config/ConfigGetter;

    .line 74
    new-instance v0, Lcom/google/android/location/reporting/u;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/LocationReportingService;->c:Lcom/google/android/location/reporting/w;

    .line 75
    invoke-static {p0}, Lcom/google/android/location/reporting/r;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/LocationReportingService;->d:Lcom/google/android/location/reporting/r;

    .line 77
    new-instance v0, Lcom/google/android/location/reporting/h;

    iget-object v1, p0, Lcom/google/android/location/reporting/LocationReportingService;->d:Lcom/google/android/location/reporting/r;

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/h;-><init>(Lcom/google/android/location/reporting/r;)V

    .line 78
    new-instance v1, Lcom/google/android/location/reporting/LocationRecordStore;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/reporting/LocationRecordStore;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V

    iput-object v1, p0, Lcom/google/android/location/reporting/LocationReportingService;->e:Lcom/google/android/location/reporting/LocationRecordStore;

    .line 79
    new-instance v1, Lcom/google/android/location/reporting/DetectedActivityStore;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/reporting/DetectedActivityStore;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V

    iput-object v1, p0, Lcom/google/android/location/reporting/LocationReportingService;->f:Lcom/google/android/location/reporting/DetectedActivityStore;

    .line 80
    new-instance v1, Lcom/google/android/location/reporting/ApiMetadataStore;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/reporting/ApiMetadataStore;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V

    iput-object v1, p0, Lcom/google/android/location/reporting/LocationReportingService;->g:Lcom/google/android/location/reporting/ApiMetadataStore;

    .line 81
    return-void
.end method
