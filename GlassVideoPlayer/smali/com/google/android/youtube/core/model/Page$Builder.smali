.class public Lcom/google/android/youtube/core/model/Page$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private elementsPerPage:I

.field private entries:Ljava/util/List;

.field private nextUri:Landroid/net/Uri;

.field private previousUri:Landroid/net/Uri;

.field private startIndex:I

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    .line 137
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    .line 209
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    .line 210
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    .line 211
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    .line 212
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    .line 213
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    .line 214
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 200
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 204
    return-void
.end method


# virtual methods
.method public addEntries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 1

    .prologue
    .line 178
    const-string v0, "entries can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    return-object p0
.end method

.method public addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Page;
    .locals 7

    .prologue
    .line 190
    new-instance v0, Lcom/google/android/youtube/core/model/Page;

    iget v1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    iget v2, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    iget v3, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Page;-><init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    return-object v0
.end method

.method public elementsPerPage(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    .line 152
    return-object p0
.end method

.method public entries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 1

    .prologue
    .line 171
    const-string v0, "entries can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    return-object p0
.end method

.method public nextUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    .line 167
    return-object p0
.end method

.method public previousUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    .line 162
    return-object p0
.end method

.method public startIndex(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    .line 157
    return-object p0
.end method

.method public totalResults(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    .line 147
    return-object p0
.end method
