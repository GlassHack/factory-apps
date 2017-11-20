.class public final Lcom/google/n/b/e/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/n/b/a/b;


# instance fields
.field private final a:Lcom/google/n/b/c/a/b;


# direct methods
.method public constructor <init>(Lcom/google/n/b/c/a/b;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/n/b/e/b/a/b;->a:Lcom/google/n/b/c/a/b;

    .line 27
    return-void
.end method

.method private a(Ljava/io/InputStream;)Lcom/google/n/b/c/a;
    .locals 3

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/e/b/a/b;->a:Lcom/google/n/b/c/a/b;

    invoke-interface {v0}, Lcom/google/n/b/c/a/b;->a()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/n/b/e/b/a/a;

    invoke-direct {v1, p1, v0}, Lcom/google/n/b/e/b/a/a;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/n/b/c/a;
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/google/n/b/e/a/b;

    if-eq p1, v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SubscribedFeeds supports only a single feed type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/n/b/e/b/a/b;->a(Ljava/io/InputStream;)Lcom/google/n/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/n/b/b/a;)Lcom/google/n/b/d/a;
    .locals 2

    .prologue
    .line 72
    instance-of v0, p1, Lcom/google/n/b/e/a/b;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected SubscribedFeedsEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    check-cast p1, Lcom/google/n/b/e/a/b;

    .line 78
    new-instance v0, Lcom/google/n/b/e/c/a/a;

    iget-object v1, p0, Lcom/google/n/b/e/b/a/b;->a:Lcom/google/n/b/c/a/b;

    invoke-direct {v0, v1, p1}, Lcom/google/n/b/e/c/a/a;-><init>(Lcom/google/n/b/c/a/b;Lcom/google/n/b/e/a/b;)V

    return-object v0
.end method
