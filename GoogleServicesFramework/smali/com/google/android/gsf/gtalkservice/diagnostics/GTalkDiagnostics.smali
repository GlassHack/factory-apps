.class public Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;
.super Landroid/app/Activity;
.source "GTalkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;
    }
.end annotation


# instance fields
.field private mBoundToService:Z

.field private mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

.field private mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mListener:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDump:Landroid/widget/TextView;

.field private mVerboseLoggingMenuItem:Landroid/view/MenuItem;

.field private mWantRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mWantRefresh:Z

    .line 59
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mBoundToService:Z

    .line 61
    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 62
    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 63
    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 84
    new-instance v0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;-><init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 108
    new-instance v0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$2;-><init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refresh(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;
    .param p1, "x1"    # Lcom/google/android/gtalkservice/IGTalkService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->initSession()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mServiceDump:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gtalkservice/IGTalkConnection;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;
    .param p1, "x1"    # Lcom/google/android/gtalkservice/IGTalkConnection;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gtalkservice/IImSession;)Lcom/google/android/gtalkservice/IImSession;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;
    .param p1, "x1"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mWantRefresh:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->bindToService()V

    return-void
.end method

.method private bindToService()V
    .locals 3

    .prologue
    .line 230
    const-string v0, "GTalkDiag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GTalkDiag"

    const-string v1, "bind to GTalkService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mBoundToService:Z

    .line 234
    return-void
.end method

.method private initSession()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkService;->getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 267
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkConnection;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 269
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    const-string v2, "GTalkDiag"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    const-string v2, "GTalkDiag"

    const-string v3, "initSession: add conn listener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mListener:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;

    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    const/4 v1, 0x1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "GTalkDiag"

    const-string v3, "initSession: caught "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->bindToService()V

    goto :goto_0
.end method

.method private reconnect()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "GTalkDiag"

    const-string v1, "Forcing a reconnect attempt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.GTALK_RECONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method private refresh(Z)V
    .locals 5
    .param p1, "dumpToLog"    # Z

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "dump":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v2, :cond_1

    .line 247
    const v2, 0x7f0900da

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mServiceDump:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    const-string v2, "GTalkDiag"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    return-void

    .line 250
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkService;->printDiagnostics()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "GTalkDiag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->bindToService()V

    goto :goto_0
.end method

.method private refreshLoggingMenuItem()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mVerboseLoggingMenuItem:Landroid/view/MenuItem;

    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->getShowDebugLogs()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 201
    return-void
.end method

.method private unbindFromService()V
    .locals 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mBoundToService:Z

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "GTalkDiag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GTalkDiag"

    const-string v1, "unbind from GTalkService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->unbindService(Landroid/content/ServiceConnection;)V

    .line 241
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 295
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 296
    const-string v1, "GTalkDiag"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GTalkDiag"

    const-string v2, "manual refresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refresh(Z)V

    .line 298
    const/4 v1, 0x1

    .line 302
    .end local v0    # "keyCode":I
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->setContentView(I)V

    .line 137
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mServiceDump:Landroid/widget/TextView;

    .line 140
    new-instance v0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;-><init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mListener:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;

    .line 142
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->bindToService()V

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 190
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    const v1, 0x7f0d0072

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mVerboseLoggingMenuItem:Landroid/view/MenuItem;

    .line 193
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mVerboseLoggingMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 194
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refreshLoggingMenuItem()V

    .line 196
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 207
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refresh(Z)V

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->getShowDebugLogs()Z

    move-result v0

    .line 212
    .local v0, "verbose":Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->enableDebugLogs(Z)V

    .line 213
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refreshLoggingMenuItem()V

    goto :goto_0

    .line 212
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 217
    .end local v0    # "verbose":Z
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->reconnect()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0071
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mWantRefresh:Z

    .line 161
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 148
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->bindToService()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mWantRefresh:Z

    .line 155
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 167
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_1

    .line 169
    :try_start_0
    const-string v1, "GTalkDiag"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "GTalkDiag"

    const-string v2, "onStop: remove connection listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mListener:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->unbindFromService()V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->finish()V

    .line 183
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GTalkDiag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendHeartbeat(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    if-nez v2, :cond_0

    .line 307
    const-string v2, "GTalkDiag"

    const-string v3, "[GTalkDiag] sendHeartbeat: mGTalkConnection = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return-void

    .line 312
    :cond_0
    :try_start_0
    const-string v2, "GTalkDiag"

    const-string v3, "[GTalkDiag] sendHeartbeat"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkConnection;->sendHeartbeat()V

    .line 314
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refresh(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "GTalkDiag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GTalkDiag] sendHeartbeat caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 318
    .local v1, "ex2":Ljava/lang/IllegalStateException;
    const-string v2, "GTalkDiag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GTalkDiag] sendHeartbeat caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
