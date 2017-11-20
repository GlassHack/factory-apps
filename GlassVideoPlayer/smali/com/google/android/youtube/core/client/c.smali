.class public final Lcom/google/android/youtube/core/client/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ae;

.field private final b:Lcom/google/android/youtube/core/async/a;

.field private final c:Lcom/google/android/youtube/core/async/ao;

.field private final d:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/g;Lcom/google/android/youtube/core/async/ao;Lcom/google/android/youtube/core/async/a;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "retryStrategy cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/c;->d:Lcom/google/android/youtube/core/async/g;

    .line 36
    const-string v0, "userAuthorizer cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ao;

    .line 35
    iput-object v0, p0, Lcom/google/android/youtube/core/client/c;->c:Lcom/google/android/youtube/core/async/ao;

    .line 38
    const-string v0, "accountManagerWrapper cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/a;

    .line 37
    iput-object v0, p0, Lcom/google/android/youtube/core/client/c;->b:Lcom/google/android/youtube/core/async/a;

    .line 41
    const-string v0, "targetRequester cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ae;

    .line 40
    invoke-static {v0, p4, p2}, Lcom/google/android/youtube/core/async/e;->a(Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/e;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/google/android/youtube/core/client/c;->a:Lcom/google/android/youtube/core/async/ae;

    .line 44
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/z;Lcom/google/android/youtube/core/async/h;)V
    .locals 3

    .prologue
    .line 49
    .line 51
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/client/c;->c:Lcom/google/android/youtube/core/async/ao;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/ao;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/core/client/c;->b:Lcom/google/android/youtube/core/async/a;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/google/android/youtube/core/client/c;->d:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/z;

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/core/client/c;->a:Lcom/google/android/youtube/core/async/ae;

    .line 62
    new-instance v2, Lcom/google/android/youtube/core/client/d;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/youtube/core/client/d;-><init>(Lcom/google/android/youtube/core/client/c;Lcom/google/android/youtube/core/async/h;Lcom/google/android/youtube/core/async/z;)V

    .line 61
    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 73
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    check-cast p2, Lcom/google/android/youtube/core/async/h;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/client/c;->a(Lcom/google/android/youtube/core/async/z;Lcom/google/android/youtube/core/async/h;)V

    return-void
.end method
