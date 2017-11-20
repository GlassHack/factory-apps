.class public Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
.super Ljava/lang/Object;
.source "KeyguardTouchDelegate.java"


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;


# instance fields
.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private volatile mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keyguard"

    const-string v2, "com.android.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .prologue
    .line 39
    sput-object p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 81
    .local v0, "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .end local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 84
    .restart local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 175
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException dismissing keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dismiss(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 103
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->dispatch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v2, 0x1

    .line 114
    :goto_0
    return v2

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException sending event to keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dispatch(event): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isInputRestricted()Z
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 119
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isInputRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    :goto_0
    return v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 126
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isInputRestricted(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isSecure()Z
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 89
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 98
    :goto_0
    return v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException calling keyguard.isSecure()!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isSecure(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowingAndNotHidden()Z
    .locals 4

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 133
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isShowingAndNotHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 142
    :goto_0
    return v2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 140
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isShowingAndNotHidden(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 161
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->launchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException launching camera!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "launchCamera(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showAssistant()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 147
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->showAssistant()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException launching assistant!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "showAssistant(event): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
