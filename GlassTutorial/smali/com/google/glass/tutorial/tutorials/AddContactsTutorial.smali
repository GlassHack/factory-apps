.class public Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;
.super Lcom/google/glass/tutorial/Tutorial;
.source "AddContactsTutorial.java"


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final contentResolverUtils:Lcom/google/glass/tutorial/ContentResolverUtils;

.field private final observer:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    new-instance v1, Lcom/google/glass/tutorial/ContentResolverUtils;

    invoke-direct {v1}, Lcom/google/glass/tutorial/ContentResolverUtils;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/tutorial/ContentResolverUtils;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/tutorial/ContentResolverUtils;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p4, "contentResolverUtils"    # Lcom/google/glass/tutorial/ContentResolverUtils;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    sget-object v3, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->AddContacts:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    sget v4, Lcom/google/glass/tutorial/R$drawable;->ic_people_50:I

    sget v5, Lcom/google/glass/tutorial/R$string;->tutorial_contacts_summary:I

    sget v6, Lcom/google/glass/tutorial/R$drawable;->ic_people_50:I

    sget v7, Lcom/google/glass/tutorial/R$string;->tutorial_contacts_summary:I

    sget v8, Lcom/google/glass/tutorial/R$string;->tutorial_contacts_message:I

    sget v9, Lcom/google/glass/tutorial/R$string;->tutorial_contacts_action:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/tutorial/Tutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;IIIIII)V

    .line 24
    new-instance v0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial$1;-><init>(Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->observer:Landroid/database/ContentObserver;

    .line 49
    iput-object p3, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 50
    iput-object p4, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->contentResolverUtils:Lcom/google/glass/tutorial/ContentResolverUtils;

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->setVisible(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->refreshVisible()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->notifyChange()V

    return-void
.end method


# virtual methods
.method protected getEventActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "c"

    return-object v0
.end method

.method protected loadCompletedState()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, "hasContacts":Z
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "is_communication_target=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 89
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_0
    invoke-virtual {p0, v7}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->setCompleted(Z)V

    .line 95
    return-void

    .line 91
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected onClick()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method refreshVisible()V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v4, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v4}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 63
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_2

    .line 65
    invoke-virtual {p0, v3}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->setVisible(Z)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->contentResolverUtils:Lcom/google/glass/tutorial/ContentResolverUtils;

    const-string v5, "com.google.glass.entity"

    .line 68
    invoke-virtual {v4, v0, v5}, Lcom/google/glass/tutorial/ContentResolverUtils;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->contentResolverUtils:Lcom/google/glass/tutorial/ContentResolverUtils;

    const-string v5, "com.google.glass.entity"

    .line 69
    invoke-virtual {v4, v0, v5}, Lcom/google/glass/tutorial/ContentResolverUtils;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    .line 71
    .local v1, "syncing":Z
    :goto_1
    if-nez v1, :cond_5

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->setVisible(Z)V

    goto :goto_0

    .end local v1    # "syncing":Z
    :cond_4
    move v1, v3

    .line 69
    goto :goto_1

    .restart local v1    # "syncing":Z
    :cond_5
    move v2, v3

    .line 71
    goto :goto_2
.end method

.method public registerForChangeNotifications()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    return-void
.end method

.method public unregisterForChangeNotifications()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    return-void
.end method
