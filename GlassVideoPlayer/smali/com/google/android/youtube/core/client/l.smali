.class final Lcom/google/android/youtube/core/client/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/client/l;->a:Lcom/google/android/youtube/core/client/g;

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {p1}, Lcom/google/android/youtube/core/client/l;->a(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    return v0
.end method
