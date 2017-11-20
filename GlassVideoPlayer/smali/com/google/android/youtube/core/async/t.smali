.class final Lcom/google/android/youtube/core/async/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/s;

.field private final synthetic b:Lcom/google/android/youtube/core/async/GDataRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/s;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/async/t;->a:Lcom/google/android/youtube/core/async/s;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/t;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/async/t;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Lcom/google/android/youtube/core/async/z;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/t;->a(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    return v0
.end method
