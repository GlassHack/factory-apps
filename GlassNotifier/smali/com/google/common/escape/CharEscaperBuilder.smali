.class public final Lcom/google/common/escape/CharEscaperBuilder;
.super Ljava/lang/Object;
.source "CharEscaperBuilder.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    .line 83
    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .locals 3
    .param p1, "c"    # C
    .param p2, "r"    # Ljava/lang/String;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    if-le p1, v0, :cond_0

    .line 92
    iput p1, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    .line 94
    :cond_0
    return-object p0
.end method

.method public addEscapes([CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .locals 3
    .param p1, "cs"    # [C
    .param p2, "r"    # Ljava/lang/String;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 102
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v0, p1, v1

    .line 104
    .local v0, "c":C
    invoke-virtual {p0, v0, p2}, Lcom/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "c":C
    :cond_0
    return-object p0
.end method

.method public toArray()[[C
    .locals 5

    .prologue
    .line 117
    iget v2, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [[C

    .line 118
    .local v1, "result":[[C
    iget-object v2, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 121
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public toEscaper()Lcom/google/common/escape/Escaper;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;

    invoke-virtual {p0}, Lcom/google/common/escape/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;-><init>([[C)V

    return-object v0
.end method
