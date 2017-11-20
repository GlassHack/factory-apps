.class Lcom/google/glass/settings/ui/WifiSelectorActivity$4;
.super Ljava/lang/Object;
.source "WifiSelectorActivity.java"

# interfaces
.implements Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

.field final synthetic val$alternativeSsid:Ljava/lang/String;

.field final synthetic val$encryption:Lcom/google/glass/util/WifiHelper$Encryption;

.field final synthetic val$fallbackAttempt:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$networkId:I


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;Ljava/lang/String;ILcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iput-object p2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$alternativeSsid:Ljava/lang/String;

    iput p3, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$networkId:I

    iput-object p4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iput-object p5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$key:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$fallbackAttempt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 437
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$402(Lcom/google/glass/settings/ui/WifiSelectorActivity;I)I

    .line 439
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$800(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    .line 441
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "l"

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .line 442
    invoke-static {v5}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$700(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "e"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "f"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$fallbackAttempt:Z

    .line 444
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 440
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 447
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    sget v1, Lcom/google/glass/settings/ui/R$string;->wifi_menu_connected:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    invoke-static {v0, v1, v2}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$900(Lcom/google/glass/settings/ui/WifiSelectorActivity;II)V

    .line 448
    return-void
.end method

.method public onConnectionFailed()V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 404
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$alternativeSsid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v7, v6

    .line 409
    .local v7, "attemptFallbackConnection":Z
    :goto_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v2}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$400(Lcom/google/glass/settings/ui/WifiSelectorActivity;)I

    move-result v4

    iget v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$networkId:I

    if-ne v2, v1, :cond_1

    move v2, v6

    :goto_1
    invoke-static {v3, v4, v2, v7}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$500(Lcom/google/glass/settings/ui/WifiSelectorActivity;IZZ)V

    .line 413
    if-eqz v7, :cond_2

    .line 414
    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v2}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Attempting a wifi connection to fallback SSID \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$alternativeSsid:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iget-object v2, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$alternativeSsid:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v5, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$key:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$600(Lcom/google/glass/settings/ui/WifiSelectorActivity;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V

    .line 433
    :goto_2
    return-void

    .end local v7    # "attemptFallbackConnection":Z
    :cond_0
    move v7, v0

    .line 404
    goto :goto_0

    .restart local v7    # "attemptFallbackConnection":Z
    :cond_1
    move v2, v0

    .line 409
    goto :goto_1

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$800(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "s"

    .line 426
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "l"

    aput-object v8, v5, v0

    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .line 427
    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$700(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string v6, "e"

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const-string v6, "f"

    aput-object v6, v5, v0

    const/4 v0, 0x5

    iget-boolean v6, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->val$fallbackAttempt:Z

    .line 429
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    .line 425
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 432
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$4;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    sget v1, Lcom/google/glass/settings/ui/R$string;->wifi_menu_failed:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_no_50:I

    invoke-static {v0, v1, v2}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$900(Lcom/google/glass/settings/ui/WifiSelectorActivity;II)V

    goto :goto_2
.end method
