.class public final Lcom/google/android/gms/subscribedfeeds/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/subscribedfeeds/b;

.field private b:Landroid/content/ContentProviderClient;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lcom/google/n/b/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Lcom/google/android/gms/subscribedfeeds/b;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/subscribedfeeds/g;->d:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Lcom/google/android/gms/subscribedfeeds/g;->a:Lcom/google/android/gms/subscribedfeeds/b;

    .line 43
    iput-object p2, p0, Lcom/google/android/gms/subscribedfeeds/g;->b:Landroid/content/ContentProviderClient;

    .line 44
    iput-object p3, p0, Lcom/google/android/gms/subscribedfeeds/g;->c:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/g;->a:Lcom/google/android/gms/subscribedfeeds/b;

    iget-object v0, v0, Lcom/google/n/b/a/c;->a:Lcom/google/n/b/a/a;

    invoke-interface {v0}, Lcom/google/n/b/a/a;->a()Lcom/google/n/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/subscribedfeeds/g;->e:Lcom/google/n/b/a/e;

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/g;->e:Lcom/google/n/b/a/e;

    const-string v1, "300"

    const-string v2, "max-results"

    invoke-virtual {v0, v2, v1}, Lcom/google/n/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/g;->e:Lcom/google/n/b/a/e;

    const-string v1, "routinginfo"

    iget-object v2, p0, Lcom/google/android/gms/subscribedfeeds/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/n/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 100
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/g;->b:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/google/android/gsf/n;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_sync_account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 105
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Lcom/google/n/b/e/a/b;

    invoke-direct {v0}, Lcom/google/n/b/e/a/b;-><init>()V

    const-string v2, "service"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feed"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/google/n/b/e/a/a;

    const-string v8, "fake_auth_token"

    invoke-direct {v6, v4, v2, v8}, Lcom/google/n/b/e/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "https://android.clients.google.com/gsync/sub/"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/n/b/b/a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/n/b/b/a;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/n/b/b/a;->c:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/subscribedfeeds/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/n/b/e/a/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/google/n/b/e/a/b;->a(Lcom/google/n/b/e/a/a;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/n/b/e/a/b;->a(Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 109
    :cond_2
    if-eqz v1, :cond_3

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_3
    return-object v7

    .line 109
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Lcom/google/n/b/e/a/b;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/n/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    .line 96
    :cond_1
    return v1

    .line 88
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 89
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/b/e/a/b;

    .line 91
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/n/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/n/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 93
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 95
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 59
    new-instance v1, Lcom/google/android/gms/subscribedfeeds/a;

    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/g;->d:Landroid/content/Context;

    const-string v2, "mail"

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/subscribedfeeds/a;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 61
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/subscribedfeeds/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/g;->a:Lcom/google/android/gms/subscribedfeeds/b;

    iget-object v3, p0, Lcom/google/android/gms/subscribedfeeds/g;->e:Lcom/google/n/b/a/e;

    const-string v4, "https://android.clients.google.com/gsync/sub"

    invoke-virtual {v3, v4}, Lcom/google/n/b/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SubscribedFeeds"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SubscribedFeeds"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GData QUERY for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SubscribedFeeds"

    const-string v5, "============== Results ================="

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/n/b/c/a;

    new-instance v5, Lcom/google/android/gms/subscribedfeeds/e;

    invoke-direct {v5, v0, v4, v3}, Lcom/google/android/gms/subscribedfeeds/e;-><init>(Lcom/google/android/gms/subscribedfeeds/b;[Lcom/google/n/b/c/a;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/google/android/gms/subscribedfeeds/e;->a(Lcom/google/android/gms/subscribedfeeds/a;)V

    aget-object v0, v4, v7

    invoke-interface {v0}, Lcom/google/n/b/c/a;->a()Lcom/google/n/b/b/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    aget-object v0, v4, v7

    invoke-interface {v0}, Lcom/google/n/b/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v4, v7

    invoke-interface {v0}, Lcom/google/n/b/c/a;->d()Lcom/google/n/b/b/a;

    move-result-object v0

    check-cast v0, Lcom/google/n/b/e/a/b;

    const-string v5, "SubscribedFeeds"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SubscribedFeeds"

    invoke-static {v0}, Lcom/google/android/gms/subscribedfeeds/b;->a(Lcom/google/n/b/e/a/b;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "SubscribedFeeds"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SubscribedFeeds"

    const-string v5, "========================================"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    aget-object v0, v4, v7

    invoke-interface {v0}, Lcom/google/n/b/c/a;->e()V

    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/b/e/a/b;

    .line 69
    invoke-static {v2, v0}, Lcom/google/android/gms/subscribedfeeds/g;->a(Ljava/util/List;Lcom/google/n/b/e/a/b;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 72
    iget-object v4, p0, Lcom/google/android/gms/subscribedfeeds/g;->a:Lcom/google/android/gms/subscribedfeeds/b;

    const-string v5, "SubscribedFeeds"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "SubscribedFeeds"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GData DELETE for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/subscribedfeeds/b;->a(Lcom/google/n/b/e/a/b;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v5, Lcom/google/android/gms/subscribedfeeds/d;

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/subscribedfeeds/d;-><init>(Lcom/google/android/gms/subscribedfeeds/b;Lcom/google/n/b/e/a/b;)V

    invoke-virtual {v5, v1}, Lcom/google/android/gms/subscribedfeeds/d;->a(Lcom/google/android/gms/subscribedfeeds/a;)V

    goto :goto_1

    .line 77
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/b/e/a/b;

    .line 78
    iget-object v3, p0, Lcom/google/android/gms/subscribedfeeds/g;->a:Lcom/google/android/gms/subscribedfeeds/b;

    const-string v4, "SubscribedFeeds"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "SubscribedFeeds"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GData INSERT for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/subscribedfeeds/b;->a(Lcom/google/n/b/e/a/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v4, Lcom/google/android/gms/subscribedfeeds/c;

    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/subscribedfeeds/c;-><init>(Lcom/google/android/gms/subscribedfeeds/b;Lcom/google/n/b/e/a/b;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/subscribedfeeds/c;->a(Lcom/google/android/gms/subscribedfeeds/a;)V

    goto :goto_2

    .line 80
    :cond_8
    return-void
.end method
