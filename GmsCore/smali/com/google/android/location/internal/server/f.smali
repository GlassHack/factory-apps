.class final Lcom/google/android/location/internal/server/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/b/aj;


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/GoogleLocationService;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/GoogleLocationService;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/location/internal/server/f;->a:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    check-cast p1, Landroid/content/Intent;

    check-cast p2, Landroid/content/Intent;

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_0

    :cond_4
    if-eqz v2, :cond_5

    if-nez v3, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
