.class public final Lcom/google/wireless/gdata2/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/google/wireless/gdata2/a/a/c;

.field d:Lcom/google/wireless/gdata2/a/a/b;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    const-string v1, " op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a/a;->c:Lcom/google/wireless/gdata2/a/a/c;

    if-eqz v1, :cond_0

    .line 23
    const-string v1, " sc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a/a;->c:Lcom/google/wireless/gdata2/a/a/c;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/a/a/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a/a;->d:Lcom/google/wireless/gdata2/a/a/b;

    if-eqz v1, :cond_1

    .line 26
    const-string v1, " interrupted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a/a;->d:Lcom/google/wireless/gdata2/a/a/b;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
