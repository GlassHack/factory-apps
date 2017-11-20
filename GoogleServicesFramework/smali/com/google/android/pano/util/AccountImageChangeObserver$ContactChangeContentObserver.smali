.class Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;
.super Landroid/database/ContentObserver;
.source "AccountImageChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/AccountImageChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactChangeContentObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentImageUri:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mUrisToNotify:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchedAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/pano/util/AccountImageChangeObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/util/AccountImageChangeObserver;Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "watchedAccount"    # Landroid/accounts/Account;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->this$0:Lcom/google/android/pano/util/AccountImageChangeObserver;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mLock:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mWatchedAccount:Landroid/accounts/Account;

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mUrisToNotify:Ljava/util/LinkedHashSet;

    .line 45
    iput-object p2, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mWatchedAccount:Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/pano/util/AccountImageHelper;->getAccountPictureUri(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mCurrentImageUri:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public addUriToNotifyList(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mUrisToNotify:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 62
    iget-object v3, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mWatchedAccount:Landroid/accounts/Account;

    invoke-static {v3, v4}, Lcom/google/android/pano/util/AccountImageHelper;->getAccountPictureUri(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "newUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mCurrentImageUri:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mUrisToNotify:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 71
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 75
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 74
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iput-object v1, p0, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->mCurrentImageUri:Ljava/lang/String;

    .line 75
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
