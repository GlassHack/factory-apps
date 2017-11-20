.class public Lcom/google/android/youtube/core/async/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/g;

.field private final b:Lcom/google/android/youtube/core/cache/a;

.field private final c:Lcom/google/android/youtube/core/async/ae;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "cache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/p;->b:Lcom/google/android/youtube/core/cache/a;

    .line 37
    const-string v0, "target may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/p;->c:Lcom/google/android/youtube/core/async/ae;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/utils/g;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/utils/g;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "filter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/g;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/utils/g;

    .line 31
    const-string v0, "cache may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/p;->b:Lcom/google/android/youtube/core/cache/a;

    .line 32
    const-string v0, "target may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/p;->c:Lcom/google/android/youtube/core/async/ae;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/p;)Lcom/google/android/youtube/core/cache/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->b:Lcom/google/android/youtube/core/cache/a;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/utils/g;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->c:Lcom/google/android/youtube/core/async/ae;

    new-instance v1, Lcom/google/android/youtube/core/async/u;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/u;-><init>(Lcom/google/android/youtube/core/async/p;Lcom/google/android/youtube/core/async/h;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 44
    return-void
.end method
