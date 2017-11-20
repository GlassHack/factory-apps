.class final Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;
.super Landroid/os/Handler;
.source "CompanionLocationProviderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Landroid/os/Looper;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$1;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;-><init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 140
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$100(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "handleMessage() [msg=%s]"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 142
    .local v1, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v2

    .line 145
    .local v2, "locationMessage":Lcom/google/glass/companion/Proto$LocationMessage;
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$100(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "handleMessage() [locationMessage=%s]"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleLocationMessage(Lcom/google/glass/companion/Proto$LocationMessage;)V

    .line 175
    .end local v2    # "locationMessage":Lcom/google/glass/companion/Proto$LocationMessage;
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    iget v5, p1, Landroid/os/Message;->what:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x21

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unknown message type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :pswitch_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleSetMinTime(J)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 157
    .local v0, "enable":Z
    if-eqz v0, :cond_2

    .line 158
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleEnableLocationTracking()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleDisableLocationTracking()V

    goto :goto_0

    .line 164
    .end local v0    # "enable":Z
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/glass/companion/IRemoteCompanionService;

    .line 165
    .local v3, "service":Lcom/google/glass/companion/IRemoteCompanionService;
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleServiceConnected(Lcom/google/glass/companion/IRemoteCompanionService;)V

    goto :goto_0

    .line 168
    .end local v3    # "service":Lcom/google/glass/companion/IRemoteCompanionService;
    :pswitch_3
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleServiceDisconnected()V

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleCompanionAppConnected()V

    goto :goto_0

    .line 174
    :pswitch_5
    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-static {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->handleCompanionAppDisconnected()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
