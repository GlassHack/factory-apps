.class public final Lcom/google/android/youtube/core/converter/http/ak;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;Z)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 38
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 39
    const-string v1, "/feed/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/al;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/al;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 52
    const-string v1, "/feed/entry/author/name"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/am;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/am;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 58
    const-string v1, "/feed/entry/author/uri"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/an;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/an;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 64
    const-string v1, "/feed/entry/category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ao;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ao;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 99
    const-string v1, "/feed/entry/updated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ap;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ap;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 105
    const-string v1, "/feed/entry/yt:groupId"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/aq;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/aq;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 111
    const-string v1, "/feed/entry/yt:videoid"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ar;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ar;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 117
    const-string v1, "/feed/entry/yt:username"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/as;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/as;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 129
    const-string v1, "/feed/entry/link"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/google/android/youtube/core/converter/http/ed;->d(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;Z)V

    .line 131
    new-instance v2, Lcom/google/android/youtube/core/converter/http/at;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/at;-><init>(Lcom/google/android/youtube/core/converter/http/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/ak;->c:Lcom/google/android/youtube/core/converter/c;

    .line 149
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/ak;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
