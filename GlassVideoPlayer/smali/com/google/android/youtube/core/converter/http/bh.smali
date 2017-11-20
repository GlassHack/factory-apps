.class public final Lcom/google/android/youtube/core/converter/http/bh;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;Z)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 19
    const-string v1, ""

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/converter/http/bi;->b(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bh;->c:Lcom/google/android/youtube/core/converter/c;

    .line 21
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bh;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
