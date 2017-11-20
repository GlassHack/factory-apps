.class public final Lcom/google/android/youtube/core/cache/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/a;


# instance fields
.field private final a:Lcom/google/android/youtube/core/cache/a;

.field private final b:Lcom/google/android/youtube/core/cache/a;

.field private final c:Lcom/google/android/youtube/core/cache/k;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/cache/k;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "compoundCache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/j;->a:Lcom/google/android/youtube/core/cache/a;

    .line 57
    const-string v0, "singleElementsCache may not be null"

    .line 56
    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/j;->b:Lcom/google/android/youtube/core/cache/a;

    .line 58
    const-string v0, "splitter may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/j;->c:Lcom/google/android/youtube/core/cache/k;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/j;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/utils/g;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/j;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/a;->a(Lcom/google/android/youtube/core/utils/g;)V

    .line 90
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/j;->c:Lcom/google/android/youtube/core/cache/k;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/j;->b:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/youtube/core/cache/k;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/a;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/j;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
