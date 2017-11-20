.class public Lcom/google/android/gsf/login/GetCountryListTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "GetCountryListTask.java"


# static fields
.field private static final EXTRA_ACCOUNT_NAME:Ljava/lang/String;

.field private static final LOG_PREFIX:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gsf/login/GetCountryListTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/GetCountryListTask;->LOG_PREFIX:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/GetCountryListTask;->EXTRA_ACCOUNT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/GetCountryListTask;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/GetCountryListTask;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Landroid/content/Intent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/login/GetCountryListTask;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callingAppDescription cannot be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/login/GetCountryListTask;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " accountName cannot be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/GetCountryListTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/google/android/gsf/login/GetCountryListTask;->EXTRA_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "callingAppDescription"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f0700dd

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/GetCountryListTask;->setTitle(I)V

    .line 73
    iget-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mCancelButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/GetCountryListTask;->setMessage(Ljava/lang/String;)V

    .line 78
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/GetCountryListTask;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/google/android/gsf/login/GetCountryListTask;->EXTRA_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mAccountName:Ljava/lang/String;

    .line 83
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/login/GetCountryListTask;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreate - mAccountName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "callingAppDescription"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 85
    return-void

    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    move-object v0, p1

    .line 78
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    sget-object v0, Lcom/google/android/gsf/login/GetCountryListTask;->EXTRA_ACCOUNT_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "callingAppDescription"

    iget-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 100
    iget-boolean v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GLSActivity"

    const-string v2, "Looking up country list..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "resultMessage":Landroid/os/Message;
    new-instance v1, Lcom/google/android/gsf/login/GetCountryListTask$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gsf/login/GetCountryListTask$1;-><init>(Lcom/google/android/gsf/login/GetCountryListTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 136
    iget-object v1, p0, Lcom/google/android/gsf/login/GetCountryListTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 137
    return-void
.end method
