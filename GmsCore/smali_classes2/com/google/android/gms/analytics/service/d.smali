.class final Lcom/google/android/gms/analytics/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/service/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/d;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/analytics/service/AnalyticsService;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/d;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a()V

    .line 281
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/d;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->e(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/d;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->f(Lcom/google/android/gms/analytics/service/AnalyticsService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/d;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->f(Lcom/google/android/gms/analytics/service/AnalyticsService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/service/AnalyticsService;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 286
    :cond_0
    return v3
.end method
