.class public final Lcom/google/android/youtube/core/converter/http/eb;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;Z)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 25
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 26
    const-string v1, "/feed"

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/converter/http/ed;->a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/eb;->c:Lcom/google/android/youtube/core/converter/c;

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/eb;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
