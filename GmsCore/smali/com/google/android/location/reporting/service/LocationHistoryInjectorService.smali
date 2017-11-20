.class public Lcom/google/android/location/reporting/service/LocationHistoryInjectorService;
.super Landroid/location/SettingInjectorService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "LocationHistoryInjectorService"

    invoke-direct {p0, v0}, Landroid/location/SettingInjectorService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onGetEnabled()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
