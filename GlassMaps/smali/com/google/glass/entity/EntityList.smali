.class public Lcom/google/glass/entity/EntityList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final entities:Ljava/util/List;

.field private final numRecentContacts:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/glass/entity/EntityList;->entities:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/entity/EntityList;->numRecentContacts:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/glass/entity/EntityList;->entities:Ljava/util/List;

    .line 17
    iput p2, p0, Lcom/google/glass/entity/EntityList;->numRecentContacts:I

    .line 18
    return-void
.end method


# virtual methods
.method public getEntities()Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/entity/EntityList;->entities:Ljava/util/List;

    return-object v0
.end method

.method public getNumRecentContacts()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/google/glass/entity/EntityList;->numRecentContacts:I

    return v0
.end method
