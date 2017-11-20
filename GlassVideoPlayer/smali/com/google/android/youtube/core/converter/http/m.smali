.class public final Lcom/google/android/youtube/core/converter/http/m;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 20
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 21
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/n;->b(Lcom/google/android/youtube/core/converter/d;)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/m;->c:Lcom/google/android/youtube/core/converter/c;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/m;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
