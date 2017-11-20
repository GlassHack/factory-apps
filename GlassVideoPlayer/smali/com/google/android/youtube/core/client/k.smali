.class final Lcom/google/android/youtube/core/client/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/j;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/client/k;->a:Lcom/google/android/youtube/core/client/j;

    iput-object p2, p0, Lcom/google/android/youtube/core/client/k;->b:Ljava/lang/String;

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/android/youtube/core/client/k;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/client/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    return v0
.end method
