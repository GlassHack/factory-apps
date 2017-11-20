.class final Lcom/google/android/youtube/core/async/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ae;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ae;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "target requester cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ag;->a:Lcom/google/android/youtube/core/async/ae;

    .line 61
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "pageSize must be greater than zero"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 62
    iput p2, p0, Lcom/google/android/youtube/core/async/ag;->b:I

    .line 63
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/ag;)Lcom/google/android/youtube/core/async/ae;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->a:Lcom/google/android/youtube/core/async/ae;

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/h;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/youtube/core/async/ag;->b:I

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/async/af;->a(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ag;->a:Lcom/google/android/youtube/core/async/ae;

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 71
    new-instance v2, Lcom/google/android/youtube/core/async/ah;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/youtube/core/async/ah;-><init>(Lcom/google/android/youtube/core/async/ag;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/h;)V

    .line 69
    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 72
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/async/h;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ag;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/h;)V

    return-void
.end method
