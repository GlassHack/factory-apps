.class public Lcom/google/android/gsf/login/PlusCheckTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "PlusCheckTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusCheckTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusCheckTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusCheckTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusCheckTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusCheckTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusCheckTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PlusCheckTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 24
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 25
    .local v0, "resultMessage":Landroid/os/Message;
    new-instance v1, Lcom/google/android/gsf/login/PlusCheckTask$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gsf/login/PlusCheckTask$1;-><init>(Lcom/google/android/gsf/login/PlusCheckTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 40
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 41
    return-void
.end method
