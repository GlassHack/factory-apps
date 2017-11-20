.class public final Lcom/google/android/youtube/core/async/s;
.super Lcom/google/android/youtube/core/async/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/p;-><init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)V

    .line 89
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/g;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/youtube/core/async/t;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/t;-><init>(Lcom/google/android/youtube/core/async/s;Lcom/google/android/youtube/core/async/GDataRequest;)V

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/g;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/s;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/g;

    move-result-object v0

    return-object v0
.end method
