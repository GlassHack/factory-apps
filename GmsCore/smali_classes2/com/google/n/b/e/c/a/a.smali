.class public final Lcom/google/n/b/e/c/a/a;
.super Lcom/google/n/b/d/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/n/b/c/a/b;Lcom/google/n/b/e/a/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/n/b/d/a/a;-><init>(Lcom/google/n/b/c/a/b;Lcom/google/n/b/b/a;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "gsync"

    const-string v1, "http://schemas.google.com/gsync/data"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected final b(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    check-cast v0, Lcom/google/n/b/e/a/b;

    .line 44
    invoke-virtual {v0}, Lcom/google/n/b/e/a/b;->b()Lcom/google/n/b/e/a/a;

    move-result-object v1

    const-string v2, "http://schemas.google.com/gsync/data"

    const-string v3, "feedurl"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget-object v3, v1, Lcom/google/n/b/e/a/a;->a:Ljava/lang/String;

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "service"

    iget-object v3, v1, Lcom/google/n/b/e/a/a;->b:Ljava/lang/String;

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "authtoken"

    iget-object v1, v1, Lcom/google/n/b/e/a/a;->c:Ljava/lang/String;

    invoke-interface {p1, v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://schemas.google.com/gsync/data"

    const-string v2, "feedurl"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    invoke-virtual {v0}, Lcom/google/n/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "http://schemas.google.com/gsync/data"

    const-string v3, "clientToken"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://schemas.google.com/gsync/data"

    const-string v2, "clientToken"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-virtual {v0}, Lcom/google/n/b/e/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "http://schemas.google.com/gsync/data"

    const-string v2, "routingInfo"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "routingInfo"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    return-void
.end method
