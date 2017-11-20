.class public final Lcom/google/n/b/e/b/a/a;
.super Lcom/google/n/b/c/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/n/b/c/a/a;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/n/b/b/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 53
    instance-of v1, p1, Lcom/google/n/b/e/a/b;

    if-nez v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected SubscribedFeedsEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    check-cast p1, Lcom/google/n/b/e/a/b;

    .line 58
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "feedurl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Lcom/google/n/b/e/a/a;

    invoke-direct {v2}, Lcom/google/n/b/e/a/a;-><init>()V

    .line 61
    const-string v3, "value"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/n/b/e/a/a;->a:Ljava/lang/String;

    .line 62
    const-string v3, "service"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/n/b/e/a/a;->b:Ljava/lang/String;

    .line 63
    const-string v3, "authtoken"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/n/b/e/a/a;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v2}, Lcom/google/n/b/e/a/b;->a(Lcom/google/n/b/e/a/a;)V

    .line 66
    :cond_1
    const-string v2, "routingInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/n/b/e/a/b;->b(Ljava/lang/String;)V

    .line 70
    :cond_2
    const-string v2, "clientToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/n/b/e/a/b;->a(Ljava/lang/String;)V

    .line 74
    :cond_3
    return-void
.end method

.method protected final f()Lcom/google/n/b/b/b;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/n/b/e/a/c;

    invoke-direct {v0}, Lcom/google/n/b/e/a/c;-><init>()V

    return-object v0
.end method

.method protected final g()Lcom/google/n/b/b/a;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/n/b/e/a/b;

    invoke-direct {v0}, Lcom/google/n/b/e/a/b;-><init>()V

    return-object v0
.end method
