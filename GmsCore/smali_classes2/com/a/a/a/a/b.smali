.class public final Lcom/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/a/a/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/a/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/a/a/a/a/d;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/a/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/d;

    return-object v0
.end method

.method public final a(Lcom/a/a/a/a/d;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/a/a/a/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 86
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->a()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 93
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v3

    iget v3, v3, Lcom/a/a/a/a/d;->b:I

    .line 94
    if-eq v3, v1, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 98
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
