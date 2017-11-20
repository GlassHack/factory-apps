.class final Lcom/google/android/gms/wearable/node/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/an;


# instance fields
.field private final a:Lcom/google/android/gms/wearable/c/m;

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    if-eqz p3, :cond_1

    invoke-static {p2, p3}, Lcom/google/android/gms/wearable/node/ao;->a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    iput-object v1, p0, Lcom/google/android/gms/wearable/node/ao;->a:Lcom/google/android/gms/wearable/c/m;

    .line 37
    iput-object v1, p0, Lcom/google/android/gms/wearable/node/ao;->b:Ljava/util/List;

    .line 46
    :cond_0
    return-void

    .line 41
    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/ao;->a:Lcom/google/android/gms/wearable/c/m;

    .line 42
    invoke-static {p2, p4}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/c/m;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ao;->b:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ao;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    .line 44
    iput p1, v0, Lcom/google/android/gms/wearable/c/n;->e:I

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v1, :cond_1

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/v;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    invoke-static {v1}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iput-object v1, v2, Lcom/google/android/gms/wearable/c/q;->c:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 88
    :cond_1
    :goto_0
    return v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-string v2, "wearable"

    const-string v3, "Dropped outgoing message: failed to read attachment file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/c/m;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ao;->a:Lcom/google/android/gms/wearable/c/m;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ao;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ao;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/wearable/c/n;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called getNextMessagePieces on a done QueuedMessage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ao;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
