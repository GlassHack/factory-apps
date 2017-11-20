.class final Lcom/google/android/youtube/core/converter/o;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field private final b:Lcom/google/android/youtube/core/converter/c;

.field private final c:Lcom/google/android/youtube/core/utils/k;

.field private final d:Lcom/google/android/youtube/core/utils/k;

.field private final e:Lcom/google/android/youtube/core/utils/k;

.field private final f:Lcom/google/android/youtube/core/utils/k;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/c;)V
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/o;->b:Lcom/google/android/youtube/core/converter/c;

    .line 197
    new-instance v0, Lcom/google/android/youtube/core/utils/k;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/o;->d:Lcom/google/android/youtube/core/utils/k;

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->d:Lcom/google/android/youtube/core/utils/k;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/google/android/youtube/core/utils/k;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/o;->e:Lcom/google/android/youtube/core/utils/k;

    .line 201
    new-instance v0, Lcom/google/android/youtube/core/utils/k;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/o;->f:Lcom/google/android/youtube/core/utils/k;

    .line 202
    new-instance v0, Lcom/google/android/youtube/core/utils/k;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/o;->c:Lcom/google/android/youtube/core/utils/k;

    .line 203
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->d:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->f:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->d:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/k;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/p;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->e:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/k;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/Attributes;

    .line 223
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->f:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/k;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->c:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_1

    :goto_0
    iput-object v1, p0, Lcom/google/android/youtube/core/converter/o;->a:Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->c:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v2, v1, v0, v3}, Lcom/google/android/youtube/core/converter/p;->a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->d:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->d:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/o;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/p;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 211
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/o;->e:Lcom/google/android/youtube/core/utils/k;

    if-eqz p4, :cond_1

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0, p4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->f:Lcom/google/android/youtube/core/utils/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/o;->c:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v1, v0, p4}, Lcom/google/android/youtube/core/converter/p;->a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V

    .line 215
    :cond_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Lcom/google/android/youtube/core/converter/l;->b()Lorg/xml/sax/Attributes;

    move-result-object v0

    goto :goto_0
.end method
