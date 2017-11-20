.class public Lcom/google/android/pano/util/AccountImageChangeObserver;
.super Ljava/lang/Object;
.source "AccountImageChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;
    }
.end annotation


# static fields
.field private static sObserver:Lcom/google/android/pano/util/AccountImageChangeObserver;

.field private static final sObserverInstanceLock:Ljava/lang/Object;


# instance fields
.field private mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/pano/util/AccountImageChangeObserver;->sObserverInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/AccountImageChangeObserver;->mObserverMap:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method private getContactIdForAccount(Landroid/content/Context;Landroid/accounts/Account;)J
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 152
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "contact_id"

    aput-object v0, v2, v1

    const-string v0, "lookup"

    aput-object v0, v2, v12

    .line 157
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "data1 LIKE ?"

    .line 159
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 160
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 161
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 162
    .local v7, "contactId":J
    const/4 v9, 0x0

    .line 164
    .local v9, "lookupKey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 168
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 171
    :cond_0
    if-eqz v6, :cond_1

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    cmp-long v0, v7, v10

    if-eqz v0, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    .end local v7    # "contactId":J
    :goto_0
    return-wide v7

    .line 171
    .restart local v7    # "contactId":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-wide v7, v10

    .line 180
    goto :goto_0
.end method

.method public static final getInstance()Lcom/google/android/pano/util/AccountImageChangeObserver;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/pano/util/AccountImageChangeObserver;->sObserver:Lcom/google/android/pano/util/AccountImageChangeObserver;

    if-nez v0, :cond_1

    .line 87
    sget-object v1, Lcom/google/android/pano/util/AccountImageChangeObserver;->sObserverInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/google/android/pano/util/AccountImageChangeObserver;->sObserver:Lcom/google/android/pano/util/AccountImageChangeObserver;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/google/android/pano/util/AccountImageChangeObserver;

    invoke-direct {v0}, Lcom/google/android/pano/util/AccountImageChangeObserver;-><init>()V

    sput-object v0, Lcom/google/android/pano/util/AccountImageChangeObserver;->sObserver:Lcom/google/android/pano/util/AccountImageChangeObserver;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/google/android/pano/util/AccountImageChangeObserver;->sObserver:Lcom/google/android/pano/util/AccountImageChangeObserver;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized registerChangeUriIfPresent(Lcom/google/android/pano/widget/BitmapWorkerOptions;)V
    .locals 15
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v9

    .line 104
    .local v9, "imageUri":Landroid/net/Uri;
    if-eqz v9, :cond_0

    invoke-static {v9}, Lcom/google/android/pano/data/util/UriUtils;->isAccountImageUri(Landroid/net/Uri;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 105
    invoke-static {v9}, Lcom/google/android/pano/data/util/UriUtils;->getAccountImageChangeNotifyUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, "changeNotifUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 108
    if-nez v3, :cond_1

    .line 148
    .end local v3    # "changeNotifUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    .restart local v3    # "changeNotifUri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-static {v9}, Lcom/google/android/pano/data/util/UriUtils;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "accountName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 116
    .local v7, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 117
    const/4 v12, 0x0

    .line 118
    .local v12, "thisAccount":Landroid/accounts/Account;
    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    const-string v14, "com.google"

    invoke-virtual {v13, v14}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_2

    aget-object v0, v2, v8

    .line 120
    .local v0, "account":Landroid/accounts/Account;
    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 121
    move-object v12, v0

    .line 125
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    if-eqz v12, :cond_0

    .line 128
    iget-object v13, p0, Lcom/google/android/pano/util/AccountImageChangeObserver;->mObserverMap:Ljava/util/HashMap;

    iget-object v14, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 129
    iget-object v13, p0, Lcom/google/android/pano/util/AccountImageChangeObserver;->mObserverMap:Ljava/util/HashMap;

    iget-object v14, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;

    .line 130
    .local v11, "observer":Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;
    if-eqz v11, :cond_0

    .line 131
    invoke-virtual {v11, v3}, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->addUriToNotifyList(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v3    # "changeNotifUri":Landroid/net/Uri;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "i$":I
    .end local v9    # "imageUri":Landroid/net/Uri;
    .end local v10    # "len$":I
    .end local v11    # "observer":Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;
    .end local v12    # "thisAccount":Landroid/accounts/Account;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 118
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accountName":Ljava/lang/String;
    .restart local v2    # "arr$":[Landroid/accounts/Account;
    .restart local v3    # "changeNotifUri":Landroid/net/Uri;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "i$":I
    .restart local v9    # "imageUri":Landroid/net/Uri;
    .restart local v10    # "len$":I
    .restart local v12    # "thisAccount":Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_4
    :try_start_2
    invoke-direct {p0, v7, v12}, Lcom/google/android/pano/util/AccountImageChangeObserver;->getContactIdForAccount(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 135
    .local v4, "contactId":J
    const-wide/16 v13, -0x1

    cmp-long v13, v4, v13

    if-eqz v13, :cond_0

    .line 136
    sget-object v13, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 138
    .local v6, "contactUri":Landroid/net/Uri;
    new-instance v11, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;

    invoke-direct {v11, p0, v7, v12}, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;-><init>(Lcom/google/android/pano/util/AccountImageChangeObserver;Landroid/content/Context;Landroid/accounts/Account;)V

    .line 139
    .restart local v11    # "observer":Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;
    iget-object v13, p0, Lcom/google/android/pano/util/AccountImageChangeObserver;->mObserverMap:Ljava/util/HashMap;

    iget-object v14, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v11, v3}, Lcom/google/android/pano/util/AccountImageChangeObserver$ContactChangeContentObserver;->addUriToNotifyList(Landroid/net/Uri;)V

    .line 141
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
