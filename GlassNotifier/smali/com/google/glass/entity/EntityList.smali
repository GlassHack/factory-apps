.class public Lcom/google/glass/entity/EntityList;
.super Ljava/lang/Object;
.source "EntityList.java"


# instance fields
.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final numRecentContacts:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/glass/entity/EntityList;->entities:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/entity/EntityList;->numRecentContacts:I

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "numRecentContacts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/glass/entity/EntityList;->entities:Ljava/util/List;

    .line 16
    iput p2, p0, Lcom/google/glass/entity/EntityList;->numRecentContacts:I

    .line 17
    return-void
.end method


# virtual methods
.method public getEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/entity/EntityList;->entities:Ljava/util/List;

    return-object v0
.end method

.method public getNumRecentContacts()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/entity/EntityList;->numRecentContacts:I

    return v0
.end method
