.class public Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;
.super Lcom/google/android/gms/auth/trustagent/aq;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private o:Lcom/google/android/gms/common/api/j;

.field private p:Z

.field private q:Lcom/google/android/gms/common/api/l;

.field private r:Lcom/google/android/gms/common/api/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/aq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->p:Z

    return p1
.end method


# virtual methods
.method protected final e()Landroid/preference/PreferenceFragment;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/gms/auth/trustagent/bb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/trustagent/bb;-><init>()V

    return-object v0
.end method

.method public final f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 80
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->p:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/places/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/a/b;-><init>()V

    .line 85
    const-string v1, "unknown mode"

    invoke-static {v4, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/location/places/a/b;->a:Landroid/content/Intent;

    const-string v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v1, v0, Lcom/google/android/gms/location/places/a/b;->a:Landroid/content/Intent;

    const-string v2, "hide_nearby_places"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    iget-object v1, v0, Lcom/google/android/gms/location/places/a/b;->a:Landroid/content/Intent;

    const-string v2, "hide_add_a_place"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/k;->b(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/google/android/gms/location/places/a/b;->a:Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lcom/google/android/gms/common/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/j;->a()I

    move-result v0

    invoke-static {v0, p0}, Lcom/google/android/gms/common/k;->a(ILandroid/app/Activity;)Z

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    const-string v0, "Coffee - GoogleTrustAgentTrustedPlacesSettings"

    const-string v1, "GooglePlayServicesNotAvailableException in TrustedPlacesSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 63
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/bb;

    .line 67
    const-string v1, "context must not be null"

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "selected_place"

    sget-object v2, Lcom/google/android/gms/location/places/internal/PlaceImpl;->CREATOR:Lcom/google/android/gms/location/places/internal/g;

    invoke-static {p3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-static {p0}, Lcom/google/android/gms/location/places/internal/i;->a(Landroid/content/Context;)Lcom/google/android/gms/location/places/internal/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Lcom/google/android/gms/location/places/internal/i;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/bb;->a(Lcom/google/android/gms/location/places/h;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    if-nez p2, :cond_2

    .line 69
    const-string v0, "Coffee - GoogleTrustAgentTrustedPlacesSettings"

    const-string v1, "Place picker activity canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "Coffee - GoogleTrustAgentTrustedPlacesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Place picker failed. Result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/trustagent/aq;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->p:Z

    .line 107
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/places/s;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->o:Lcom/google/android/gms/common/api/j;

    .line 108
    new-instance v0, Lcom/google/android/gms/auth/trustagent/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/o;-><init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->q:Lcom/google/android/gms/common/api/l;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->o:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->q:Lcom/google/android/gms/common/api/l;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/l;)V

    new-instance v0, Lcom/google/android/gms/auth/trustagent/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/p;-><init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->r:Lcom/google/android/gms/common/api/m;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->o:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->r:Lcom/google/android/gms/common/api/m;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/m;)V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/aq;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->o:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->q:Lcom/google/android/gms/common/api/l;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/l;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->o:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->r:Lcom/google/android/gms/common/api/m;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/m;)V

    .line 128
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->o:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 120
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/aq;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/aq;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->o:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 115
    return-void
.end method
