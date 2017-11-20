.class Lcom/google/android/gms/tagmanager/PreviewManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/PreviewManager$a;
    }
.end annotation


# static fields
.field private static Ta:Lcom/google/android/gms/tagmanager/PreviewManager;


# instance fields
.field private volatile QW:Ljava/lang/String;

.field private volatile Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;

.field private volatile Tc:Ljava/lang/String;

.field private volatile Td:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/PreviewManager;->clear()V

    return-void
.end method

.method private bn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private f(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/google/android/gms/tagmanager/PreviewManager;
    .locals 2

    const-class v1, Lcom/google/android/gms/tagmanager/PreviewManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/PreviewManager;->Ta:Lcom/google/android/gms/tagmanager/PreviewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/PreviewManager;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/PreviewManager;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/PreviewManager;->Ta:Lcom/google/android/gms/tagmanager/PreviewManager;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/PreviewManager;->Ta:Lcom/google/android/gms/tagmanager/PreviewManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/PreviewManager$a;->Te:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tc:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->QW:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Td:Ljava/lang/String;

    return-void
.end method

.method declared-synchronized e(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container preview url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bf;->v(Ljava/lang/String;)V

    const-string v1, ".*?&gtm_debug=x$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/tagmanager/PreviewManager$a;->Tg:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/PreviewManager;->f(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Td:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    sget-object v2, Lcom/google/android/gms/tagmanager/PreviewManager$a;->Tf:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    sget-object v2, Lcom/google/android/gms/tagmanager/PreviewManager$a;->Tg:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/r?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Td:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tc:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Td:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/PreviewManager;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->QW:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v1, Lcom/google/android/gms/tagmanager/PreviewManager$a;->Tf:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/PreviewManager;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->QW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit preview mode for container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->QW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bf;->v(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/PreviewManager$a;->Te:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tc:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preview uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->QW:Ljava/lang/String;

    return-object v0
.end method

.method hs()Lcom/google/android/gms/tagmanager/PreviewManager$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tb:Lcom/google/android/gms/tagmanager/PreviewManager$a;

    return-object v0
.end method

.method ht()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/PreviewManager;->Tc:Ljava/lang/String;

    return-object v0
.end method
