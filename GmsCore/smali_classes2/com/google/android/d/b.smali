.class public final Lcom/google/android/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 23
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 25
    if-ge v2, v7, :cond_4

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_4

    if-eq v2, v6, :cond_4

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    invoke-virtual {v2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 33
    if-ge v1, v7, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v6, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    :cond_3
    return-object p0

    .line 23
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p3}, Lcom/google/android/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final cdsect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final comment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public final docdecl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final endDocument()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 74
    return-void
.end method

.method public final endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final entityRef(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 91
    return-void
.end method

.method public final getDepth()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getDepth()I

    move-result v0

    return v0
.end method

.method public final getFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ignorableWhitespace(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final setFeature(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public final setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public final setOutput(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 152
    return-void
.end method

.method public final setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public final startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    return-void
.end method

.method public final startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/d/b;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Lcom/google/android/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/google/android/d/b;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method
