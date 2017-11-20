.class final Lcom/google/android/youtube/core/async/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/q;

.field private final synthetic b:Lcom/google/android/youtube/core/async/GDataRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/q;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/async/r;->a:Lcom/google/android/youtube/core/async/q;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/r;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;)Z
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/default/"

    const-string v3, "/[^/]+/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/google/android/youtube/core/async/r;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, v1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/r;->a(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v0

    return v0
.end method
