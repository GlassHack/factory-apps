.class final Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;
.super Lcom/google/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaFull"
.end annotation


# static fields
.field private static final UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ListFieldSchema;-><init>(Lcom/google/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ListFieldSchema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ListFieldSchema$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>()V

    return-void
.end method

.method static getList(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 5
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "additionalCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    instance-of v3, v0, Lcom/google/protobuf/LazyStringList;

    if-eqz v3, :cond_1

    .line 47
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-direct {v0, p3}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    .line 49
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    :cond_0
    :goto_1
    return-object v0

    .line 48
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 50
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    :cond_2
    sget-object v3, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    move-object v0, v2

    .line 54
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 55
    .end local v2    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    :cond_3
    instance-of v3, v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    if-eqz v3, :cond_0

    .line 56
    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, v3}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    .line 57
    .local v1, "newList":Lcom/google/protobuf/LazyStringArrayList;
    check-cast v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-virtual {v1, v0}, Lcom/google/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    move-object v0, v1

    .line 59
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "otherMsg"    # Ljava/lang/Object;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "other":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p1, p3, p4, v5}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "mine":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 70
    .local v4, "size":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 71
    .local v3, "otherSize":I
    if-lez v4, :cond_0

    if-lez v3, :cond_0

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_0
    if-lez v4, :cond_1

    move-object v0, v1

    .line 76
    .local v0, "merged":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    invoke-static {p1, p3, p4, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    return-void

    .end local v0    # "merged":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    move-object v0, v2

    .line 75
    goto :goto_0
.end method

.method mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
