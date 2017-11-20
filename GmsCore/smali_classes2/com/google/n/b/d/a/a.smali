.class public Lcom/google/n/b/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/n/b/d/a;


# instance fields
.field public final a:Lcom/google/n/b/b/a;

.field private final b:Lcom/google/n/b/c/a/b;


# direct methods
.method public constructor <init>(Lcom/google/n/b/c/a/b;Lcom/google/n/b/b/a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/n/b/d/a/a;->b:Lcom/google/n/b/c/a/b;

    .line 39
    iput-object p2, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/d/a/a;->b:Lcom/google/n/b/c/a/b;

    invoke-interface {v0}, Lcom/google/n/b/c/a/b;->b()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 71
    const-string v1, "UTF-8"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    const-string v1, ""

    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gd"

    const-string v2, "http://schemas.google.com/g/2005"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/n/b/d/a/a;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 74
    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v1, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    iget-object v1, v1, Lcom/google/n/b/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "title"

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "title"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v1, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    iget-object v1, v1, Lcom/google/n/b/b/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "summary"

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "summary"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v1, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    iget-object v1, v1, Lcom/google/n/b/b/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "content"

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "type"

    const-string v3, "text"

    invoke-interface {v0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "content"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v1, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    iget-object v1, v1, Lcom/google/n/b/b/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    iget-object v2, v2, Lcom/google/n/b/b/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    iget-object v1, v1, Lcom/google/n/b/b/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/n/b/d/a/a;->a:Lcom/google/n/b/b/a;

    iget-object v2, v2, Lcom/google/n/b/b/a;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_4
    const-string v3, "category"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "term"

    invoke-interface {v0, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-static {v2}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "scheme"

    invoke-interface {v0, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const-string v1, "category"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/n/b/d/a/a;->b(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 78
    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 80
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 81
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :cond_8
    const-string v3, "author"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "name"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "name"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "email"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "email"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "author"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method protected a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected b(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
