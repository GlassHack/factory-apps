.class public Lcom/google/android/gsf/login/ProfileTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "ProfileTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ProfileTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gsf/login/ProfileTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/ProfileTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gsf/login/ProfileTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ProfileTask;->setMessage(I)V

    .line 36
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 42
    iget-object v1, p0, Lcom/google/android/gsf/login/ProfileTask;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 43
    .local v0, "resultMessage":Landroid/os/Message;
    new-instance v1, Lcom/google/android/gsf/login/ProfileTask$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gsf/login/ProfileTask$1;-><init>(Lcom/google/android/gsf/login/ProfileTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/ProfileTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 56
    iget-object v1, p0, Lcom/google/android/gsf/login/ProfileTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 57
    return-void
.end method
