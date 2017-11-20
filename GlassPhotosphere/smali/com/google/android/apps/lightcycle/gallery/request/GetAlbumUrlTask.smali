.class public Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;
.super Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
.source "GetAlbumUrlTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final albumName:Ljava/lang/String;

.field private final callback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;Landroid/content/Context;)V
    .locals 1
    .param p1, "albumName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;-><init>(Landroid/content/Context;Z)V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->albumName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->callback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 31
    return-void
.end method


# virtual methods
.method public processUploadResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "responseContentString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 40
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->albumName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "albumNameOffset":I
    if-ne v0, v7, :cond_0

    .line 42
    sget-object v5, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->TAG:Ljava/lang/String;

    const-string v6, "Lightcycle album not found."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v5, v8}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v4, "<id>"

    .line 48
    .local v4, "idTag":Ljava/lang/String;
    const-string v5, "<id>"

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "<id>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v3, v5, v6

    .line 50
    .local v3, "idOffset":I
    if-ne v3, v7, :cond_1

    .line 51
    sget-object v5, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->TAG:Ljava/lang/String;

    const-string v6, "Lightcycle album found but no <id> element for it."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v5, v8}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    const-string v5, "</id>"

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .local v2, "idEndOffset":I
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "albumUrl":Ljava/lang/String;
    const-string v5, "data/entry"

    const-string v6, "data/feed"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-object v5, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found Lightcycle album URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v5, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
