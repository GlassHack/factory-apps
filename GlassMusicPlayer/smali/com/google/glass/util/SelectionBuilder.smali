.class public Lcom/google/glass/util/SelectionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 19
    if-nez p2, :cond_1

    const/4 v0, 0x0

    new-array p2, v0, [Ljava/lang/String;

    :cond_1
    iput-object p2, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public addSelection(Lcom/google/glass/util/SelectionBuilder;)Lcom/google/glass/util/SelectionBuilder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-object v0, p1, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-object p0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p1, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 67
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

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iput-object p1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 26
    if-nez p2, :cond_1

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    .line 45
    :cond_0
    :goto_0
    return-object p0

    .line 29
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v3

    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->selection:Ljava/lang/String;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/glass/util/SelectionBuilder;->args:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 40
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
