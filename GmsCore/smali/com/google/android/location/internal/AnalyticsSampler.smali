.class public final Lcom/google/android/location/internal/AnalyticsSampler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 39
    const-class v7, Lcom/google/android/location/internal/AnalyticsSampler;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/google/android/location/internal/AnalyticsSampler;->a:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/location/internal/AnalyticsSampler;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/internal/AnalyticsSampler;->a:Landroid/app/PendingIntent;

    .line 44
    sget-object v1, Lcom/google/android/location/internal/AnalyticsSampler;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 45
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    sget-object v6, Lcom/google/android/location/internal/AnalyticsSampler;->a:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 47
    invoke-static {p0}, Lcom/google/android/location/a/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit v7

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const-wide/16 v6, 0x1

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    .line 60
    if-nez p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v1, Lcom/google/android/location/d/a;->l:Lcom/google/android/gms/common/a/b;

    invoke-static {v1}, Lcom/google/android/location/d/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p1}, Lcom/google/android/location/clientlib/c;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    move v1, v0

    .line 70
    :goto_1
    sget-object v0, Lcom/google/android/location/d/a;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 79
    const v2, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    move-wide v2, v4

    .line 85
    :goto_2
    const-string v8, "uc"

    const-string v9, "settings"

    const-string v10, "nlp"

    if-eqz v1, :cond_4

    move-wide v0, v6

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v9, v10, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    invoke-static {p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/ReportingConfig;->isReportingActive()Z

    move-result v0

    .line 94
    const-string v1, "uc"

    const-string v8, "settings"

    const-string v9, "ulr"

    if-eqz v0, :cond_5

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v8, v9, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "uc"

    const-string v1, "settings"

    const-string v4, "nlp_p"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/location/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v0, "uc"

    const-string v1, "settings"

    const-string v4, "ulr_p"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/google/android/location/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 82
    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v0

    div-double/2addr v2, v8

    double-to-long v2, v2

    goto :goto_2

    :cond_4
    move-wide v0, v4

    .line 85
    goto :goto_3

    :cond_5
    move-wide v6, v4

    .line 94
    goto :goto_4
.end method
