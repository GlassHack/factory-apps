.class public final Lcom/google/android/youtube/core/async/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ae;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/ae;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "target requester cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/async/ag;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/async/ag;-><init>(Lcom/google/android/youtube/core/async/ae;I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/af;->a:Lcom/google/android/youtube/core/async/ae;

    .line 39
    return-void
.end method

.method static synthetic a(Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/google/android/youtube/core/async/af;->b(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/youtube/core/async/ae;)Lcom/google/android/youtube/core/async/af;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/youtube/core/async/af;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/async/af;-><init>(Lcom/google/android/youtube/core/async/ae;I)V

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/h;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/async/af;->a:Lcom/google/android/youtube/core/async/ae;

    new-instance v1, Lcom/google/android/youtube/core/async/ai;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/core/async/ai;-><init>(Lcom/google/android/youtube/core/async/h;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 44
    return-void
.end method

.method private static b(Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v1, "start-index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "max-results"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/async/h;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/af;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/h;)V

    return-void
.end method
