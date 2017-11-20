.class public abstract Lcom/google/android/youtube/core/async/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/async/z;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/ab;->a(Lcom/google/android/youtube/core/async/z;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x191

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/a;->a(Ljava/lang/Throwable;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/ab;->a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
