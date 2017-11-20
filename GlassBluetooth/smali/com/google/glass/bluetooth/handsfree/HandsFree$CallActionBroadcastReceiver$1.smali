.class Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "HandsFree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->logNationalOrInternationalPhoneNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

.field final synthetic val$formattedNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;->this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;->val$formattedNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 571
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;->val$formattedNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;->this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    iget-object v3, v3, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 572
    invoke-static {v3}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;->this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    iget-object v4, v4, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v4}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-static {v2, v3, v4}, Lcom/google/glass/util/PhoneNumberUtils;->getDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/PhoneNumberUtils$Destination;

    move-result-object v1

    .line 573
    .local v1, "destination":Lcom/google/glass/util/PhoneNumberUtils$Destination;
    const/4 v0, 0x0

    .line 574
    .local v0, "data":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/HandsFree$6;->$SwitchMap$com$google$glass$util$PhoneNumberUtils$Destination:[I

    invoke-virtual {v1}, Lcom/google/glass/util/PhoneNumberUtils$Destination;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 583
    const-string v0, "u"

    .line 586
    :goto_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver$1;->this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    iget-object v2, v2, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$2000(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "a"

    const-string v5, "13"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "r"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 589
    return-void

    .line 576
    :pswitch_0
    const-string v0, "n"

    .line 577
    goto :goto_0

    .line 579
    :pswitch_1
    const-string v0, "i"

    .line 580
    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
