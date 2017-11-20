.class public Lcom/google/glass/logging/PiiHasher;
.super Ljava/lang/Object;
.source "PiiHasher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/PiiHasher$Provider;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private secret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/logging/PiiHasher;->secret:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/google/glass/logging/PiiHasher;->context:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/google/glass/logging/PiiHasher;->getLoggingSecret()Ljava/lang/String;

    .line 21
    return-void
.end method

.method private declared-synchronized getLoggingSecret()Ljava/lang/String;
    .locals 7

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/logging/PiiHasher;->secret:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/glass/logging/PiiHasher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/LoggingSecretProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 41
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 43
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/PiiHasher;->secret:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/google/glass/logging/PiiHasher;->secret:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/glass/logging/LoggingSecretProviderConstants;->URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot find valid LoggingSecretProvider cursor at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 47
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 55
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/logging/PiiHasher;->secret:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method public hashIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/logging/PiiHasher;->getLoggingSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/HashFunctions;->toMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
