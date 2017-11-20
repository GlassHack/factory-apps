.class final Lcom/google/android/gms/auth/trustagent/trustlet/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/p;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/t;->a:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;B)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/t;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "Coffee - NearbyAlertTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receive action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "com.google.android.gms.auth.trustagent.trustlet.ACTION_PERSONAL_NEARBY_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "INTENT_CODE_ID"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/t;->a:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    iget v1, v1, Lcom/google/android/gms/auth/trustagent/trustlet/p;->f:I

    if-eq v0, v1, :cond_1

    .line 174
    const-string v0, "Coffee - NearbyAlertTracker"

    const-string v1, "Wrong INTENT_CODE_ID from received intent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {p2, p1}, Lcom/google/android/gms/location/places/k;->a(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/gms/location/places/k;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/k;->c()I

    move-result v1

    if-lez v1, :cond_2

    .line 182
    invoke-virtual {v0, v4}, Lcom/google/android/gms/location/places/k;->c(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/k;->f()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 196
    :goto_1
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/k;->a()V

    goto :goto_0

    .line 185
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/t;->a:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    iget-object v2, v2, Lcom/google/android/gms/auth/trustagent/trustlet/p;->b:Lcom/google/android/gms/auth/trustagent/trustlet/s;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/s;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/t;->a:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    iget-object v2, v2, Lcom/google/android/gms/auth/trustagent/trustlet/p;->b:Lcom/google/android/gms/auth/trustagent/trustlet/s;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/s;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_2
    const-string v1, "Coffee - NearbyAlertTracker"

    const-string v2, "Place likelihood is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
