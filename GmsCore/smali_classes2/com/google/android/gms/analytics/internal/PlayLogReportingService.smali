.class public Lcom/google/android/gms/analytics/internal/PlayLogReportingService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "PlayLogReportingService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/u;->c()V

    .line 18
    return-void
.end method
