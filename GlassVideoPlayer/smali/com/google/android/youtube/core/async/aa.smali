.class final Lcom/google/android/youtube/core/async/aa;
.super Lcom/google/android/youtube/core/async/ab;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/ab;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/async/z;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/z;
    .locals 4

    .prologue
    .line 40
    const-string v0, "newUserAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/google/android/youtube/core/async/z;

    .line 42
    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->e:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/z;->a(Lcom/google/android/youtube/core/async/z;)[B

    move-result-object v3

    .line 41
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/async/z;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    invoke-static {p1, p2}, Lcom/google/android/youtube/core/async/aa;->a(Lcom/google/android/youtube/core/async/z;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/z;

    move-result-object v0

    return-object v0
.end method
