.class public final Lcom/google/android/youtube/core/async/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ae;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Lcom/google/android/youtube/core/utils/a;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ae;Ljava/util/concurrent/atomic/AtomicLong;Lcom/google/android/youtube/core/utils/a;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/ae;

    .line 26
    const-string v0, "lastEventTime may not be null"

    .line 25
    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ac;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    const-string v0, "clock may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ac;->c:Lcom/google/android/youtube/core/utils/a;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/ac;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ac;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/ac;)Lcom/google/android/youtube/core/utils/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ac;->c:Lcom/google/android/youtube/core/utils/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/ae;

    new-instance v1, Lcom/google/android/youtube/core/async/ad;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/ad;-><init>(Lcom/google/android/youtube/core/async/ac;Lcom/google/android/youtube/core/async/h;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 33
    return-void
.end method
