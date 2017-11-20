.class final Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;
.super Landroid/os/AsyncTask;
.source "ConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Pinger"
.end annotation

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


# instance fields
.field private initialNetworkType:I

.field final synthetic this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;-><init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v0}, Lcom/google/glass/net/NetworkUtil;->pingGoogle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Ping failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$302(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 92
    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$402(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Ljava/util/Date;)Ljava/util/Date;

    .line 93
    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$502(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Z)Z

    .line 97
    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$100(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iget v2, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->initialNetworkType:I

    if-ne v1, v2, :cond_1

    .line 99
    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$100(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->initialNetworkType:I

    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 99
    invoke-static {v1, v2, v3}, Lcom/google/android/glass/hidden/HiddenConnectivityManager;->reportInetCondition(Landroid/net/ConnectivityManager;IZ)V

    .line 102
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$100(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 79
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$Pinger;->initialNetworkType:I

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
