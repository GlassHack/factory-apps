.class public Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;
.super Landroid/os/AsyncTask;
.source "ShareWithMapsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final httpRequest:Lcom/google/android/apps/lightcycle/util/HttpRequestTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "progressCallback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Ljava/lang/Void;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 90
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;Landroid/content/Context;ZLcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;->httpRequest:Lcom/google/android/apps/lightcycle/util/HttpRequestTask;

    .line 99
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, [Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;->doInBackground([Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;

    .prologue
    const/4 v5, 0x0

    .line 103
    aget-object v2, p1, v5

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->toUrlString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    iget-object v4, v4, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;->authToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;->httpRequest:Lcom/google/android/apps/lightcycle/util/HttpRequestTask;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    const/4 v2, 0x0

    return-object v2
.end method
