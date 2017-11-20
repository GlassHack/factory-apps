.class public Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
.super Landroid/app/Service;
.source "ConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$1;,
        Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;,
        Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final receiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private lastChecked:Ljava/util/Date;

.field private lastSuccess:Z

.field private pinger:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final receiver:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    sget-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "receiver"

    .line 31
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.glass.action.INET_CONDITION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->receiver:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->pinger:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->lastChecked:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->lastSuccess:Z

    return p1
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->ping()V

    return-void
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private ping()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->pinger:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling pending ping request, starting new one."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->pinger:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 110
    :cond_0
    new-instance v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;-><init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->pinger:Landroid/os/AsyncTask;

    .line 111
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->pinger:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "currently checking"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->lastChecked:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->lastChecked:Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->lastSuccess:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "last checked at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the result was: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 58
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->receiver:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->receiver:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting Connectivity Checker service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
