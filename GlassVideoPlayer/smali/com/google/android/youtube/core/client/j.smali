.class final Lcom/google/android/youtube/core/client/j;
.super Lcom/google/android/youtube/core/async/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/g;Lcom/google/android/youtube/core/utils/g;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/client/j;->a:Lcom/google/android/youtube/core/client/g;

    .line 959
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/youtube/core/async/p;-><init>(Lcom/google/android/youtube/core/utils/g;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)Lcom/google/android/youtube/core/utils/g;
    .locals 2

    .prologue
    .line 964
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 965
    new-instance v1, Lcom/google/android/youtube/core/client/k;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/client/k;-><init>(Lcom/google/android/youtube/core/client/j;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/g;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Ljava/lang/Void;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/client/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;)Lcom/google/android/youtube/core/utils/g;

    move-result-object v0

    return-object v0
.end method
