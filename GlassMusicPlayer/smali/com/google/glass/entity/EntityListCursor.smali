.class public Lcom/google/glass/entity/EntityListCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field private final columns:[Ljava/lang/String;

.field public list:Ljava/util/List;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/google/glass/entity/EntityListCursor;->list:Ljava/util/List;

    .line 22
    return-void
.end method

.method private getCurrentEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListCursor;->checkPosition()V

    .line 36
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->list:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/entity/EntityListCursor;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 65
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListCursor;->getCurrentEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 66
    const-string v2, "protobuf_blob"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown column: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 42
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListCursor;->getCurrentEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 43
    const-string v2, "display_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-string v2, "email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const-string v2, "image_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_3
    const-string v2, "_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_4
    const-string v2, "source"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown column: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
