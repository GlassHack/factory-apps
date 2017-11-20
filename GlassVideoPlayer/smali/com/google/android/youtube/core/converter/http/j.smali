.class public final Lcom/google/android/youtube/core/converter/http/j;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 21
    invoke-static {}, Lcom/google/android/youtube/core/converter/e;->a()Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 22
    const-string v1, "/feed"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/converter/http/x;->a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/j;->c:Lcom/google/android/youtube/core/converter/c;

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/j;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
