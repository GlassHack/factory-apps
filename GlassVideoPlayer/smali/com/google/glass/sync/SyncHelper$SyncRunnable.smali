.class public Lcom/google/glass/sync/SyncHelper$SyncRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final authority:Ljava/lang/String;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final primaryAccount:Landroid/accounts/Account;

.field private final syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 221
    iput-object p1, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    .line 222
    iput-object p2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 224
    return-void
.end method

.method private getExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 252
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "sync_source"

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-virtual {v2}, Lcom/google/glass/sync/SyncHelper$SyncSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/google/glass/sync/SyncHelper$1;->$SwitchMap$com$google$glass$sync$SyncHelper$SyncSource:[I

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-virtual {v2}, Lcom/google/glass/sync/SyncHelper$SyncSource;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :pswitch_0
    const-string v0, "force"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 268
    :goto_1
    if-nez v0, :cond_0

    .line 270
    const-string v0, "ignore_backoff"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 256
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
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 228
    instance-of v1, p1, Lcom/google/glass/sync/SyncHelper$SyncRunnable;

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    check-cast p1, Lcom/google/glass/sync/SyncHelper$SyncRunnable;

    .line 233
    iget-object v1, p1, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 235
    invoke-virtual {v1, v2}, Lcom/google/glass/sync/SyncHelper$SyncSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 240
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
    .line 245
    invoke-direct {p0}, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 246
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

    .line 248
    iget-object v1, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "account"

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->primaryAccount:Landroid/accounts/Account;

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "authority"

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->authority:Ljava/lang/String;

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "syncSource"

    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$SyncRunnable;->syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
