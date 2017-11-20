.class final Lcom/google/android/gms/analytics/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/service/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/c;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/c;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/c;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportStoreIsEmpty("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/c;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iput-boolean p1, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->b:Z

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/c;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->c(Lcom/google/android/gms/analytics/service/AnalyticsService;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/c;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/c;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->d(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(ZZ)V

    .line 145
    return-void
.end method
