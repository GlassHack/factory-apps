.class public final Lcom/google/android/youtube/core/converter/http/d;
.super Lcom/google/android/youtube/core/converter/http/be;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/l;

.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/be;-><init>()V

    .line 37
    const-string v0, "the parser can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/d;->b:Lcom/google/android/youtube/core/converter/l;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 39
    const-string v1, "/app:categories"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/e;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/e;-><init>(Lcom/google/android/youtube/core/converter/http/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 49
    const-string v1, "/app:categories/atom:category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/f;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/f;-><init>(Lcom/google/android/youtube/core/converter/http/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 63
    const-string v1, "/app:categories/atom:category/yt:browsable"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/g;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/g;-><init>(Lcom/google/android/youtube/core/converter/http/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 69
    const-string v1, "/app:categories/atom:category/yt:deprecated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/h;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/h;-><init>(Lcom/google/android/youtube/core/converter/http/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/d;->c:Lcom/google/android/youtube/core/converter/c;

    .line 76
    return-void
.end method

.method private b(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/d;->b:Lcom/google/android/youtube/core/converter/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/d;->c:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/converter/l;->a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    new-instance v1, Lcom/google/android/youtube/core/converter/http/i;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/converter/http/i;-><init>(Lcom/google/android/youtube/core/converter/http/d;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/d;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
