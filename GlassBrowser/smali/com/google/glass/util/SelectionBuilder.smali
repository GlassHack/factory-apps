.class public Lcom/google/glass/util/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# instance fields
.field private args:[Ljava/lang/String;

.field private selection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "baseSelection"    # Ljava/lang/String;
    .param p2, "baseArgs"    # [Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "baseSelection":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 19
    if-nez p2, :cond_1

    const/4 v0, 0x0

    new-array p2, v0, [Ljava/lang/String;

    .end local p2    # "baseArgs":[Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public addSelection(Lcom/google/glass/util/SelectionBuilder;)Lcom/google/glass/util/SelectionBuilder;
    .locals 5
    .param p1, "sb"    # Lcom/google/glass/util/SelectionBuilder;

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-object v1, p1, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-object p0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p1, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND ("

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p1, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 67
    .local v0, "newArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v1, p1, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, p1, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    goto :goto_0
.end method

.method public addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    iput-object p1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 26
    if-nez p2, :cond_1

    .line 27
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    .line 45
    :cond_0
    :goto_0
    return-object p0

    .line 29
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    iput-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND ("

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 40
    .local v0, "newArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v1, v1

    aput-object p2, v0, v1

    .line 42
    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    return-object v0
.end method
