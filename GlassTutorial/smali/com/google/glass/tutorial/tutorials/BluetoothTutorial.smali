.class public Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;
.super Lcom/google/glass/tutorial/Tutorial;
.source "BluetoothTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

.field private final receiver:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;

.field private final screenOnWakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 34
    new-instance v0, Lcom/google/glass/util/BluetoothHelper;

    invoke-direct {v0}, Lcom/google/glass/util/BluetoothHelper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/BluetoothHelper;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/BluetoothHelper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "bluetoothHelper"    # Lcom/google/glass/util/BluetoothHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    sget-object v3, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->PersonalHotspot:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    sget v4, Lcom/google/glass/tutorial/R$drawable;->ic_bluetooth_medium:I

    sget v5, Lcom/google/glass/tutorial/R$string;->tutorial_bluetooth_title:I

    sget v6, Lcom/google/glass/tutorial/R$drawable;->ic_bluetooth_medium:I

    sget v7, Lcom/google/glass/tutorial/R$string;->tutorial_bluetooth_title:I

    sget v8, Lcom/google/glass/tutorial/R$string;->tutorial_bluetooth_message:I

    sget v9, Lcom/google/glass/tutorial/R$string;->tutorial_bluetooth_action:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/tutorial/Tutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;IIIIII)V

    .line 27
    new-instance v0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;-><init>(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$1;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->receiver:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;

    .line 44
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->screenOnWakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 46
    iput-object p3, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)Lcom/google/glass/util/BluetoothHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->notifyChange()V

    return-void
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method protected getEventActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "b"

    return-object v0
.end method

.method protected loadCompletedState()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 58
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 59
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->setCompleted(Z)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onClick()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected onFocused()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->screenOnWakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->screenOnWakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 83
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$1;

    invoke-direct {v1, p0}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$1;-><init>(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method protected onUnfocus()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->screenOnWakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 94
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 95
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$2;

    invoke-direct {v1, p0}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$2;-><init>(Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public registerForChangeNotifications()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->receiver:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public unregisterForChangeNotifications()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->receiver:Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial$BroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 70
    return-void
.end method
