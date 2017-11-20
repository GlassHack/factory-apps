.class public final Lcom/google/wireless/gdata2/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/google/wireless/gdata2/a/a/a;


# direct methods
.method private a(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 375
    const-string v0, "ID"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "TITLE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "EDIT URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "HTML URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "SUMMARY"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "CONTENT"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "AUTHOR"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "CATEGORY"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "CATEGORY SCHEME"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "PUBLICATION DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "UPDATE DATE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->k:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "DELETED"

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/a/a;->m:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "ETAG"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/google/wireless/gdata2/a/a;->n:Lcom/google/wireless/gdata2/a/a/a;

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "BATCH"

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->n:Lcom/google/wireless/gdata2/a/a/a;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/a/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 359
    invoke-static {p2}, Lcom/google/wireless/gdata2/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    invoke-direct {p0, v0}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
