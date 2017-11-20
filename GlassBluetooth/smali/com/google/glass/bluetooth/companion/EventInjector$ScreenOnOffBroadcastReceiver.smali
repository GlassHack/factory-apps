.class Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "EventInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/EventInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/EventInjector;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/EventInjector;)V
    .locals 3

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/EventInjector;Lcom/google/glass/bluetooth/companion/EventInjector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/EventInjector;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/companion/EventInjector$1;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/EventInjector;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$402(Lcom/google/glass/bluetooth/companion/EventInjector;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_1
    :try_start_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$402(Lcom/google/glass/bluetooth/companion/EventInjector;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
