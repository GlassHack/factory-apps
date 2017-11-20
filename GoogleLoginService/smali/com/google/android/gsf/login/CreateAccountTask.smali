.class public Lcom/google/android/gsf/login/CreateAccountTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "CreateAccountTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CreateAccountTask;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CreateAccountTask;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CreateAccountTask;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CreateAccountTask;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountTask;->setTitle(I)V

    .line 37
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountTask;->setMessage(I)V

    .line 38
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 49
    iget-boolean v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "GLSActivity"

    const-string v2, "Creating account..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 54
    .local v0, "resultMessage":Landroid/os/Message;
    new-instance v1, Lcom/google/android/gsf/login/CreateAccountTask$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gsf/login/CreateAccountTask$1;-><init>(Lcom/google/android/gsf/login/CreateAccountTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 81
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 82
    return-void
.end method
