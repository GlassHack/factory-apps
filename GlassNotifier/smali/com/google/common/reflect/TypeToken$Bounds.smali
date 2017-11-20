.class Lcom/google/common/reflect/TypeToken$Bounds;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final bounds:[Ljava/lang/reflect/Type;

.field private final target:Z


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Z)V
    .locals 0
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .param p2, "target"    # Z

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .line 973
    iput-boolean p2, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 974
    return-void
.end method


# virtual methods
.method isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 7
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    .line 977
    iget-object v3, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 978
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v5, v6, :cond_1

    .line 979
    iget-boolean v1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 982
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_0
    :goto_1
    return v1

    .line 977
    .restart local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 982
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_2
    iget-boolean v2, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 8
    .param p1, "subtype"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x0

    .line 986
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 987
    .local v1, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v4, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 988
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v6

    iget-boolean v7, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v6, v7, :cond_1

    .line 989
    iget-boolean v2, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 992
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_0
    :goto_1
    return v2

    .line 987
    .restart local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 992
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_2
    iget-boolean v3, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method
