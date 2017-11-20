.class public Lcom/google/android/gsf/login/CheckAvailTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "CheckAvailTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CheckAvailTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CheckAvailTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CheckAvailTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CheckAvailTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/CheckAvailTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CheckAvailTask;->setTitle(I)V

    .line 44
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CheckAvailTask;->setMessage(I)V

    .line 45
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 53
    iget-boolean v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    const-string v3, "Checking username availability..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CheckAvailTask;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 57
    .local v1, "resultMessage":Landroid/os/Message;
    new-instance v2, Lcom/google/android/gsf/login/CheckAvailTask$1;

    invoke-direct {v2, p0, v1, v1}, Lcom/google/android/gsf/login/CheckAvailTask$1;-><init>(Lcom/google/android/gsf/login/CheckAvailTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 77
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 78
    return-void
.end method
