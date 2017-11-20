.class public Lcom/google/glass/boutique/NewPermissionsMenuActivity;
.super Landroid/app/Activity;
.source "NewPermissionsMenuActivity.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 24
    invoke-virtual {p0}, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->openOptionsMenu()V

    .line 25
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 30
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lcom/google/glass/boutique/R$menu;->permissions_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 31
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 43
    .local v6, "id":I
    invoke-virtual {p0}, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/glass/boutique/PackageManagerService;->INTENT_EXTRA_GLASSWARE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 45
    .local v4, "glasswareId":J
    invoke-virtual {p0}, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 46
    .local v3, "applicationContext":Landroid/content/Context;
    new-instance v2, Lcom/google/glass/boutique/PackageManagerServiceConnection;

    invoke-direct {v2}, Lcom/google/glass/boutique/PackageManagerServiceConnection;-><init>()V

    .line 49
    .local v2, "packageManagerServiceConnection":Lcom/google/glass/boutique/PackageManagerServiceConnection;
    sget v0, Lcom/google/glass/boutique/R$id;->menu_permissions_accept:I

    if-ne v6, v0, :cond_0

    .line 50
    sget-object v0, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User accepted new glassware app permissions [glasswareId=%s]."

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v0, v1, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 52
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v8

    new-instance v0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/boutique/NewPermissionsMenuActivity$1;-><init>(Lcom/google/glass/boutique/NewPermissionsMenuActivity;Lcom/google/glass/boutique/PackageManagerServiceConnection;Landroid/content/Context;J)V

    invoke-interface {v8, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->finish()V

    move v0, v7

    .line 85
    :goto_0
    return v0

    .line 66
    :cond_0
    sget v0, Lcom/google/glass/boutique/R$id;->menu_permissions_decline:I

    if-ne v6, v0, :cond_1

    .line 67
    sget-object v0, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User declined new glassware app permissions [glasswareId=%s]."

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v0, v1, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 69
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v8

    new-instance v0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;-><init>(Lcom/google/glass/boutique/NewPermissionsMenuActivity;Lcom/google/glass/boutique/PackageManagerServiceConnection;Landroid/content/Context;J)V

    invoke-interface {v8, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->finish()V

    move v0, v7

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown menu selection for NewPermissionsMenuActivity [menu id=%s]."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v0, v1, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/glass/boutique/NewPermissionsMenuActivity;->finish()V

    .line 38
    return-void
.end method
