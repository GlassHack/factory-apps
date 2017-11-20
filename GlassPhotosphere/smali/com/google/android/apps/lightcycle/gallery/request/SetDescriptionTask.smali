.class public Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;
.super Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
.source "SetDescriptionTask.java"


# static fields
.field private static final PHOTO_TITLE:Ljava/lang/String; = "panorama.jpg"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final picasaRequestContext:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V
    .locals 2
    .param p1, "picasaRequestContext"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    .prologue
    .line 66
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;-><init>(Landroid/content/Context;Z)V

    .line 67
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->picasaRequestContext:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .param p2, "x1"    # Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;-><init>(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static setDescriptionAsync(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 1
    .param p0, "context"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .param p1, "photoUrls"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->getShortDogfoodUrl(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 63
    return-void
.end method


# virtual methods
.method public processUploadResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "responseContentString"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_0

    .line 77
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->TAG:Ljava/lang/String;

    const-string v2, "Retrying to set the description due to conflict"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p2}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->parseFromXml(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    move-result-object v0

    .line 79
    .local v0, "photoUrls":Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->picasaRequestContext:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    invoke-static {v1, v0}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->setDescriptionAsync(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    .line 81
    .end local v0    # "photoUrls":Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;
    :cond_0
    return-void
.end method
