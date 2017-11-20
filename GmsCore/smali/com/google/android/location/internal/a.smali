.class final Lcom/google/android/location/internal/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/GoogleLocationManagerService;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/GoogleLocationManagerService;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/location/internal/a;->a:Lcom/google/android/location/internal/GoogleLocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/android/location/internal/a;->a:Lcom/google/android/location/internal/GoogleLocationManagerService;

    invoke-static {v0}, Lcom/google/android/location/internal/GoogleLocationManagerService;->a(Lcom/google/android/location/internal/GoogleLocationManagerService;)Lcom/google/android/location/internal/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v1, v0, Lcom/google/android/location/places/ai;->b:Lcom/google/android/location/places/p;

    invoke-virtual {v1}, Lcom/google/android/location/places/p;->a()V

    iget-object v0, v0, Lcom/google/android/location/places/ai;->c:Lcom/google/android/location/places/ax;

    invoke-virtual {v0}, Lcom/google/android/location/places/ax;->a()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v1, "GLMS"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "GLMS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received unexpected broadcast: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
