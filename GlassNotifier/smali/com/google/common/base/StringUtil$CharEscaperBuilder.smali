.class final Lcom/google/common/base/StringUtil$CharEscaperBuilder;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/StringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharEscaperBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;
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
    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->max:I

    .line 2134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->map:Ljava/util/Map;

    .line 2135
    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/common/base/StringUtil$CharEscaperBuilder;
    .locals 2
    .param p1, "c"    # C
    .param p2, "r"    # Ljava/lang/String;

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iget v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->max:I

    if-le p1, v0, :cond_0

    .line 2143
    iput p1, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->max:I

    .line 2145
    :cond_0
    return-object p0
.end method

.method public toArray()[[C
    .locals 5

    .prologue
    .line 2156
    iget v2, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->max:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [[C

    .line 2157
    .local v1, "result":[[C
    iget-object v2, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->map:Ljava/util/Map;

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

    .line 2158
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

    .line 2160
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public toEscaper()Lcom/google/common/base/StringUtil$CharEscaper;
    .locals 2

    .prologue
    .line 2170
    new-instance v0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;

    invoke-virtual {p0}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;-><init>([[C)V

    return-object v0
.end method
