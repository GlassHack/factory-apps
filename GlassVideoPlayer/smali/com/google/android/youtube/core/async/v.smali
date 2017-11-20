.class final Lcom/google/android/youtube/core/async/v;
.super Lcom/google/android/youtube/core/async/ab;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/ab;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 6

    .prologue
    .line 69
    const-string v0, "newUserAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->e:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Lcom/google/android/youtube/core/async/z;)[B

    move-result-object v4

    .line 70
    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[BLcom/google/android/youtube/core/async/GDataRequest;)V

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 57
    instance-of v0, p2, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 58
    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "operation needs a full YouTube account"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/async/ab;->a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {p1, p2}, Lcom/google/android/youtube/core/async/v;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/v;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
