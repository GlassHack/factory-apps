.class public Lcom/google/glass/sync/SyncHelper$SyncRunnable;
.super Ljava/lang/Object;
.source "SyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/SyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncRunnable"
.end annotation


# instance fields
.field private final authority:Ljava/lang/String;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final primaryAccount:Landroid/accounts/Account;

.field private final syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 1
    .param p1, "primaryAccount"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "syncSource"    # Lcom/google/glass/sync/SyncHelper$SyncSource;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 230
    iput-object p1, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    .line 231
    iput-object p2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 233
    return-void
.end method

.method private getExtras()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-eqz v2, :cond_0

    .line 263
    const-string v2, "sync_source"

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-virtual {v3}, Lcom/google/glass/sync/SyncHelper$SyncSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v2, Lcom/google/glass/sync/SyncHelper$1;->$SwitchMap$com$google$glass$sync$SyncHelper$SyncSource:[I

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-virtual {v3}, Lcom/google/glass/sync/SyncHelper$SyncSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    const-string v2, "force"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$100()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$100()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 277
    .local v1, "inBackoffMode":Z
    :goto_1
    if-nez v1, :cond_0

    .line 279
    const-string v2, "ignore_backoff"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 276
    .end local v1    # "inBackoffMode":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 237
    instance-of v2, p1, Lcom/google/glass/sync/SyncHelper$SyncRunnable;

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 241
    check-cast v0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;

    .line 242
    .local v0, "otherSyncRunnable":Lcom/google/glass/sync/SyncHelper$SyncRunnable;
    iget-object v2, v0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 244
    invoke-virtual {v2, v3}, Lcom/google/glass/sync/SyncHelper$SyncSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 255
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Requesting sync [authority=%s, syncSource=%s, extras=%s]."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v1, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "account"

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    .line 293
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "authority"

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "syncSource"

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 295
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    return-object v0
.end method
