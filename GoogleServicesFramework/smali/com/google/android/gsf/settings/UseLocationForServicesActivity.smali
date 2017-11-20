.class public Lcom/google/android/gsf/settings/UseLocationForServicesActivity;
.super Landroid/app/Activity;
.source "UseLocationForServicesActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setUseLocationForServices(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->setUseLocationForServices(Landroid/content/Context;Z)Z

    .line 48
    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 41
    .local v0, "enable":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->setUseLocationForServices(Z)V

    .line 42
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->finish()V

    .line 44
    return-void
.end method
