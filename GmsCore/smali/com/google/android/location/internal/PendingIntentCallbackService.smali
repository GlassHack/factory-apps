.class public Lcom/google/android/location/internal/PendingIntentCallbackService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/List;


# instance fields
.field a:Landroid/support/v4/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    sput-object v0, Lcom/google/android/location/internal/PendingIntentCallbackService;->b:Ljava/util/List;

    const-string v1, "com.google.android.location.internal.action.GEOFENCER_AR_RESULT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/google/android/location/internal/PendingIntentCallbackService;->b:Ljava/util/List;

    const-string v1, "com.google.android.location.internal.action.GEOFENCER_AR_RESULT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/google/android/location/internal/PendingIntentCallbackService;->b:Ljava/util/List;

    const-string v1, "com.google.android.location.internal.action.PLACES_REFRESH_USER_DATA_SUBSCRIPTION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/location/internal/PendingIntentCallbackService;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FORWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    invoke-static {p0}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/PendingIntentCallbackService;->a:Landroid/support/v4/a/i;

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/internal/PendingIntentCallbackService;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/location/internal/PendingIntentCallbackService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/location/internal/PendingIntentCallbackService;->a:Landroid/support/v4/a/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->b(Landroid/content/Intent;)V

    .line 56
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_1
    const-string v1, "PendingIntentCallbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
