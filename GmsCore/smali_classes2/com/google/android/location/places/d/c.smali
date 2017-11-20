.class final Lcom/google/android/location/places/d/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/places/d/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/d/b;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/location/places/d/c;->a:Lcom/google/android/location/places/d/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 368
    const-string v0, "com.google.android.location.internal.action.PLACES_REFRESH_USER_DATA_SUBSCRIPTION"

    invoke-static {v0}, Lcom/google/android/location/internal/PendingIntentCallbackService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/google/android/location/places/d/c;->a:Lcom/google/android/location/places/d/b;

    invoke-virtual {v0, p2}, Lcom/google/android/location/places/d/b;->a(Landroid/content/Intent;)Lcom/google/android/location/places/Subscription;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/location/places/d/c;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v1}, Lcom/google/android/location/places/d/b;->e(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/places/d/d;->a(Lcom/google/android/location/places/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-string v1, "Places"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const-string v1, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Alarm received, refreshing subscription "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/c;->a:Lcom/google/android/location/places/d/b;

    invoke-static {v1, v0}, Lcom/google/android/location/places/d/b;->a(Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/Subscription;)V

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    const-string v0, "Places"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "Places"

    const-string v1, "Unable to extract subscription from refreshSubscriptionIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
