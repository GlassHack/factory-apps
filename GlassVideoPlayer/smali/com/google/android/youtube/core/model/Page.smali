.class public final Lcom/google/android/youtube/core/model/Page;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# instance fields
.field public final elementsPerPage:I

.field public final entries:Ljava/util/List;

.field public final nextUri:Landroid/net/Uri;

.field public final previousUri:Landroid/net/Uri;

.field public final startIndex:I

.field public final totalResults:I


# direct methods
.method public constructor <init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    .line 65
    iput p2, p0, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    .line 66
    iput p3, p0, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    .line 67
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    .line 68
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    .line 69
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    .line 70
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page;->buildUpon()Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    .line 79
    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults(I)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage(I)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    .line 81
    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex(I)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 98
    const/4 v0, 0x1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    instance-of v1, p1, Lcom/google/android/youtube/core/model/Page;

    if-eqz v1, :cond_0

    .line 103
    check-cast p1, Lcom/google/android/youtube/core/model/Page;

    .line 105
    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    iget v2, p1, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    if-ne v1, v2, :cond_0

    .line 106
    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    iget v2, p1, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    if-ne v1, v2, :cond_0

    .line 107
    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    iget v2, p1, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 112
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    if-nez v1, :cond_5

    .line 120
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 123
    :cond_5
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{totalResults: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elementsPerPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, ", startIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, ", entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
