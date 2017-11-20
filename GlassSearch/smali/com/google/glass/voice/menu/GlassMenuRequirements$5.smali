.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$5;
.super Lcom/google/glass/voice/menu/Requirement;
.source "GlassMenuRequirements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/GlassMenuRequirements;->isNavigationAllowed(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->voice_navigation_directions_not_available:I

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_get_my_glass_for_location:I

    .line 146
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "IS_NAVIGATION_ALLOWED"

    return-object v0
.end method

.method public isSatisfied(ZZ)Z
    .locals 5
    .param p1, "isConnected"    # Z
    .param p2, "fromVoice"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->access$100()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->isMulticastSupportedOnPairedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->access$100()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    .line 138
    .local v0, "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :goto_0
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$5;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v3

    .line 137
    invoke-static {v3, v0}, Lcom/google/glass/location/LocationHelper;->isNavigationAllowed(Landroid/location/LocationManager;Z)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->ANA:Lcom/google/glass/util/Labs$Feature;

    .line 139
    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .end local v0    # "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :cond_3
    move v0, v1

    .line 136
    goto :goto_0
.end method
