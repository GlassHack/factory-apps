.class public Lcom/google/glass/settings/BackupRestoreService;
.super Landroid/app/Service;
.source "BackupRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/BackupRestoreService$AndroidIdProviderImpl;,
        Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;
    }
.end annotation


# static fields
.field private static final ANDROID_ID_PROJECTION:[Ljava/lang/String;

.field private static final ANDROID_ID_SELECTION:Ljava/lang/String; = "name=?"

.field private static final ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

.field private static final GSERVICES_CONTENT_URI:Landroid/net/Uri;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private account:Landroid/accounts/Account;

.field private androidIdProvider:Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;

.field private contentObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private restored:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    const-string v0, "content://com.google.android.gsf.gservices"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/BackupRestoreService;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/settings/BackupRestoreService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/settings/BackupRestoreService;->ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/BackupRestoreService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/google/glass/settings/BackupRestoreService$AndroidIdProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/BackupRestoreService$AndroidIdProviderImpl;-><init>(Lcom/google/glass/settings/BackupRestoreService;Lcom/google/glass/settings/BackupRestoreService$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/BackupRestoreService;->androidIdProvider:Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/BackupRestoreService;->handler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/BackupRestoreService;)Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService;->androidIdProvider:Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/settings/BackupRestoreService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/BackupRestoreService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/settings/BackupRestoreService;->restore()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/settings/BackupRestoreService;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/settings/BackupRestoreService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/settings/BackupRestoreService;->ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method private restore()V
    .locals 3

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/glass/settings/BackupRestoreService;->restored:Z

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/BackupRestoreService;->restored:Z

    .line 105
    sget-object v0, Lcom/google/glass/settings/BackupRestoreService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start to restore."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v0, Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/BackupRestoreHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/glass/settings/BackupRestoreService$3;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/BackupRestoreService$3;-><init>(Lcom/google/glass/settings/BackupRestoreService;)V

    iget-object v2, p0, Lcom/google/glass/settings/BackupRestoreService;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/settings/BackupRestoreHelper;->restoreSettingsAsync(Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;Landroid/accounts/Account;)V

    goto :goto_0
.end method


# virtual methods
.method getContentObserverForTest()Landroid/database/ContentObserver;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 134
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService;->contentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/google/glass/settings/BackupRestoreService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    sget-object v1, Lcom/google/glass/settings/BackupRestoreService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "service started"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    if-nez p1, :cond_0

    .line 46
    sget-object v1, Lcom/google/glass/settings/BackupRestoreService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No intent found!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 89
    :goto_0
    return v1

    .line 50
    :cond_0
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->account:Landroid/accounts/Account;

    .line 52
    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->account:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 53
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->account:Landroid/accounts/Account;

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->account:Landroid/accounts/Account;

    if-nez v1, :cond_2

    .line 56
    sget-object v1, Lcom/google/glass/settings/BackupRestoreService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No account found!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    iput-boolean v5, p0, Lcom/google/glass/settings/BackupRestoreService;->restored:Z

    .line 61
    new-instance v1, Lcom/google/glass/settings/BackupRestoreService$1;

    iget-object v2, p0, Lcom/google/glass/settings/BackupRestoreService;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/BackupRestoreService$1;-><init>(Lcom/google/glass/settings/BackupRestoreService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->contentObserver:Landroid/database/ContentObserver;

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/settings/BackupRestoreService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/glass/settings/BackupRestoreService;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/glass/settings/BackupRestoreService;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->androidIdProvider:Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;

    invoke-interface {v1}, Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "androidId":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/settings/BackupRestoreService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "id is %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/glass/settings/BackupRestoreService$2;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/BackupRestoreService$2;-><init>(Lcom/google/glass/settings/BackupRestoreService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method setAndroidIdProviderForTest(Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;)V
    .locals 0
    .param p1, "androidIdProvider"    # Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 128
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreService;->androidIdProvider:Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;

    .line 129
    return-void
.end method

.method setHandlerForTest(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 140
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreService;->handler:Landroid/os/Handler;

    .line 141
    return-void
.end method
