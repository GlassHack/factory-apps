.class final Lcom/google/android/gms/analytics/service/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/service/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/a;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/a;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/a;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v1, v1, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/a;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/a;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v1, v1, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectivity is now "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/a;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v2, p0, Lcom/google/android/gms/analytics/service/a;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-boolean v2, v2, Lcom/google/android/gms/analytics/service/AnalyticsService;->b:Z

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(ZZ)V

    .line 86
    :cond_3
    return-void
.end method
