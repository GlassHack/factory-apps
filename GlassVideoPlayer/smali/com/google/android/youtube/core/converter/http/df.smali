.class public final Lcom/google/android/youtube/core/converter/http/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# static fields
.field public static final a:Lcom/google/android/youtube/core/converter/http/df;


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/http/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/youtube/core/converter/http/df;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/df;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/df;->a:Lcom/google/android/youtube/core/converter/http/df;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/df;->b:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 23
    return-void
.end method

.method private a(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 27
    const-string v0, "the uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/df;->b:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/df;->a(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method
