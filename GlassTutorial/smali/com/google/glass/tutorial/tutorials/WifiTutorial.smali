.class public Lcom/google/glass/tutorial/tutorials/WifiTutorial;
.super Lcom/google/glass/tutorial/Tutorial;
.source "WifiTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/tutorial/tutorials/WifiTutorial$1;,
        Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final statusReceiver:Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 26
    sget-object v3, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->WifiNetwork:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    sget v4, Lcom/google/glass/tutorial/R$drawable;->ic_wifi_50:I

    sget v5, Lcom/google/glass/tutorial/R$string;->tutorial_wifi_title:I

    sget v6, Lcom/google/glass/tutorial/R$drawable;->ic_wifi_50:I

    sget v7, Lcom/google/glass/tutorial/R$string;->tutorial_wifi_title:I

    sget v8, Lcom/google/glass/tutorial/R$string;->tutorial_wifi_message:I

    sget v9, Lcom/google/glass/tutorial/R$string;->tutorial_tap_to_setup:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/tutorial/Tutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;IIIIII)V

    .line 23
    new-instance v0, Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;-><init>(Lcom/google/glass/tutorial/tutorials/WifiTutorial;Lcom/google/glass/tutorial/tutorials/WifiTutorial$1;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->statusReceiver:Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/tutorial/tutorials/WifiTutorial;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/tutorials/WifiTutorial;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->notifyChange()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method protected getEventActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "w"

    return-object v0
.end method

.method protected loadCompletedState()V
    .locals 4

    .prologue
    .line 33
    iget-object v2, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 34
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->setCompleted(Z)V

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onClick()Z
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.SETUP_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/4 v1, 0x1

    return v1
.end method

.method public registerForChangeNotifications()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->statusReceiver:Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method public unregisterForChangeNotifications()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->statusReceiver:Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/WifiTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/tutorials/WifiTutorial$StatusBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 54
    return-void
.end method
