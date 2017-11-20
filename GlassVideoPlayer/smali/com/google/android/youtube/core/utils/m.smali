.class public final Lcom/google/android/youtube/core/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/android/common/http/UrlRules;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/m;->a:Landroid/content/ContentResolver;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/m;->b:Lcom/google/android/common/http/UrlRules;

    .line 29
    return-void
.end method

.method private a()Lcom/google/android/common/http/UrlRules;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/m;->b:Lcom/google/android/common/http/UrlRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/utils/m;->b:Lcom/google/android/common/http/UrlRules;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/m;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/common/http/UrlRules;->a(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/core/utils/m;->a()Lcom/google/android/common/http/UrlRules;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/common/http/UrlRules;->a(Ljava/lang/String;)Lcom/google/android/common/http/f;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
