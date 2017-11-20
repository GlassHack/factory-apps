.class Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HeadsetPlugService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/HeadsetPlugService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadsetBroadcastReceiver"
.end annotation


# static fields
.field static final NAME_UNKNOWN:Ljava/lang/String; = "unknown"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/HeadsetPlugService;


# direct methods
.method private constructor <init>(Lcom/google/glass/logging/HeadsetPlugService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/logging/HeadsetPlugService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;->this$0:Lcom/google/glass/logging/HeadsetPlugService;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/logging/HeadsetPlugService;Lcom/google/glass/logging/HeadsetPlugService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/logging/HeadsetPlugService;
    .param p2, "x1"    # Lcom/google/glass/logging/HeadsetPlugService$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;-><init>(Lcom/google/glass/logging/HeadsetPlugService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/logging/HeadsetPlugService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Unknown action received: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const-string v2, "unknown"

    .line 75
    :cond_1
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 77
    .local v3, "state":I
    if-nez v3, :cond_2

    .line 79
    const/4 v1, 0x1

    .line 86
    .local v1, "monoOrStereo":I
    :goto_1
    const-string v4, "n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "s"

    aput-object v6, v5, v7

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "ms"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 86
    invoke-static {v4, v2, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v4, v5, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "monoOrStereo":I
    :cond_2
    const-string v4, "microphone"

    .line 83
    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "monoOrStereo":I
    goto :goto_1
.end method
