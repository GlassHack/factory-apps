.class Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;
.super Ljava/lang/Object;
.source "ApplicationEndpointPacketManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationEndpointListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;
    .param p2, "x1"    # Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 14
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 289
    const/4 v7, 0x0

    .line 290
    .local v7, "payload":Ljava/lang/String;
    const/4 v3, 0x0

    .line 291
    .local v3, "from":Ljava/lang/String;
    const-class v10, Lorg/jivesoftware/smack/packet/Packet;

    const-class v11, Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v5, p1

    .line 292
    check-cast v5, Lorg/jivesoftware/smack/packet/IQ;

    .line 293
    .local v5, "iq":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v7

    .line 304
    .end local v5    # "iq":Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    :goto_0
    if-nez v7, :cond_3

    .line 305
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received unknown packet "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for endpoint "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Ljava/lang/String;)V

    .line 326
    :goto_1
    return-void

    .line 295
    :cond_1
    const-class v10, Lorg/jivesoftware/smack/packet/Packet;

    const-class v11, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v6, p1

    .line 296
    check-cast v6, Lorg/jivesoftware/smack/packet/Message;

    .line 297
    .local v6, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Message;->toXML()Ljava/lang/String;

    move-result-object v7

    .line 299
    goto :goto_0

    .end local v6    # "message":Lorg/jivesoftware/smack/packet/Message;
    :cond_2
    const-class v10, Lorg/jivesoftware/smack/packet/Packet;

    const-class v11, Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v9, p1

    .line 300
    check-cast v9, Lorg/jivesoftware/smack/packet/Presence;

    .line 301
    .local v9, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Presence;->toXML()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 309
    .end local v9    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_3
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v0

    .line 310
    .local v0, "accountId":J
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-eqz v10, :cond_4

    .line 311
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "account id mismatch. should not happen. received: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " endpoint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_4
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "category":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v10, "message"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v10, "attr:from"

    invoke-virtual {v4, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v10, "username"

    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-static {v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".permission.XMPP_ENDPOINT_RECEIVE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "permission":Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v10

    invoke-virtual {v10, v4, v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
