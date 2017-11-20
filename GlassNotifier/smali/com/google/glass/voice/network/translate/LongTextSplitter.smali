.class public Lcom/google/glass/voice/network/translate/LongTextSplitter;
.super Ljava/lang/Object;
.source "LongTextSplitter.java"


# static fields
.field private static final LIMIT:I = 0x64

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPACE_PATTERN:Ljava/lang/String; = "([ \\u3000\\n\\r\\t\\s]+)"

.field private static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "([\\?\\.\\,\\;\\:\\!][ ]+)|([\\u3001\\u3002\\uFF01\\uFF08\\uFF09\\uFF0C\\uFF0E\\uFF1A\\uFF1B\\uFF1F][ ]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->result:Ljava/util/List;

    return-void
.end method

.method private scanMergeRefine(Ljava/lang/String;Ljava/util/regex/Pattern;Z)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "splitterRegx"    # Ljava/util/regex/Pattern;
    .param p3, "refileToLength"    # Z

    .prologue
    const/16 v11, 0x64

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/translate/LongTextSplitter;->splitIncludingPattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v5

    .line 42
    .local v5, "units":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 43
    .local v0, "current":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 45
    .local v4, "unit":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "withoutEndSpace":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v11, :cond_3

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_0

    .line 45
    .end local v6    # "withoutEndSpace":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    .restart local v6    # "withoutEndSpace":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/String;

    .end local v0    # "current":Ljava/lang/String;
    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 50
    .restart local v0    # "current":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 51
    iget-object v7, p0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->result:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, ""

    .line 54
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v11, :cond_5

    .line 59
    move-object v0, v4

    goto :goto_0

    .line 62
    :cond_5
    if-eqz p3, :cond_6

    .line 63
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 64
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "start":I
    :goto_3
    if-ge v3, v2, :cond_0

    .line 65
    add-int/lit8 v7, v3, 0x64

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 66
    .local v1, "end":I
    iget-object v7, p0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->result:Ljava/util/List;

    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v3, v3, 0x64

    goto :goto_3

    .line 69
    .end local v1    # "end":I
    .end local v2    # "length":I
    .end local v3    # "start":I
    :cond_6
    sget-object v7, Lcom/google/glass/voice/network/translate/LongTextSplitter;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v9}, Lcom/google/glass/voice/network/translate/LongTextSplitter;->scanMergeRefine(Ljava/lang/String;Ljava/util/regex/Pattern;Z)V

    goto/16 :goto_0

    .line 74
    .end local v4    # "unit":Ljava/lang/String;
    .end local v6    # "withoutEndSpace":Ljava/lang/String;
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 75
    iget-object v7, p0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->result:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_8
    return-void
.end method

.method private splitIncludingPattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/List;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "regx"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 81
    .local v3, "splits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "last":I
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 84
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 86
    .local v2, "pos":I
    if-le v2, v0, :cond_0

    .line 87
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    .line 91
    .end local v2    # "pos":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    return-object v3
.end method


# virtual methods
.method public split(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    const-string v0, "([ \\u3000\\n\\r\\t\\s]+)"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/translate/LongTextSplitter;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/voice/network/translate/LongTextSplitter;->scanMergeRefine(Ljava/lang/String;Ljava/util/regex/Pattern;Z)V

    .line 30
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextSplitter;->result:Ljava/util/List;

    return-object v0
.end method
