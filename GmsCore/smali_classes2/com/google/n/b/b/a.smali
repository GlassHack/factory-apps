.class public Lcom/google/n/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/n/b/b/a;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/n/b/b/a;->b:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/google/n/b/b/a;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/google/n/b/b/a;->d:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/google/n/b/b/a;->e:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/n/b/b/a;->f:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/n/b/b/a;->g:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/n/b/b/a;->h:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/n/b/b/a;->i:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/n/b/b/a;->j:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/n/b/b/a;->k:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/n/b/b/a;->l:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/n/b/b/a;->m:Z

    .line 33
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    invoke-static {p2}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 249
    const-string v0, "ID"

    iget-object v1, p0, Lcom/google/n/b/b/a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "TITLE"

    iget-object v1, p0, Lcom/google/n/b/b/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "EDIT URI"

    iget-object v1, p0, Lcom/google/n/b/b/a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "HTML URI"

    iget-object v1, p0, Lcom/google/n/b/b/a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "SUMMARY"

    iget-object v1, p0, Lcom/google/n/b/b/a;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "CONTENT"

    iget-object v1, p0, Lcom/google/n/b/b/a;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "AUTHOR"

    iget-object v1, p0, Lcom/google/n/b/b/a;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "CATEGORY"

    iget-object v1, p0, Lcom/google/n/b/b/a;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "CATEGORY SCHEME"

    iget-object v1, p0, Lcom/google/n/b/b/a;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "PUBLICATION DATE"

    iget-object v1, p0, Lcom/google/n/b/b/a;->k:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "UPDATE DATE"

    iget-object v1, p0, Lcom/google/n/b/b/a;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "DELETED"

    iget-boolean v1, p0, Lcom/google/n/b/b/a;->m:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/n/b/b/a;->a(Ljava/lang/StringBuffer;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
