.class Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/tutorials/WifiTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/tutorials/WifiTutorial;


# direct methods
.method private constructor <init>(Lcom/google/glass/tutorial/tutorials/WifiTutorial;)V
    .locals 3

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;->this$0:Lcom/google/glass/tutorial/tutorials/WifiTutorial;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/tutorial/tutorials/WifiTutorial;Lcom/google/glass/tutorial/tutorials/WifiTutorial$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/tutorial/tutorials/WifiTutorial;
    .param p2, "x1"    # Lcom/google/glass/tutorial/tutorials/WifiTutorial$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;-><init>(Lcom/google/glass/tutorial/tutorials/WifiTutorial;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;->this$0:Lcom/google/glass/tutorial/tutorials/WifiTutorial;

    invoke-static {v0}, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->access$100(Lcom/google/glass/tutorial/tutorials/WifiTutorial;)V

    .line 72
    return-void
.end method
