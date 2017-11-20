.class public abstract Lcom/google/android/speech/grammar/GrammarBuilder;
.super Ljava/lang/Object;
.source "GrammarBuilder.java"


# static fields
.field private static final ABNF_RESERVED_TOKENS:Ljava/util/regex/Pattern;

.field public static final SEMANTIC_INTERP_PREFIX:Ljava/lang/String; = "XX_"

.field private static final TAG:Ljava/lang/String; = "GrammarBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "[\\Q/|*+?=;[]()<>${}\"\\\\E]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/speech/grammar/GrammarBuilder;->ABNF_RESERVED_TOKENS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v2, "_"

    const-string v3, "XX_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 25
    .local v1, "start":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 28
    .local v0, "decoded":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static decodeWeight(Ljava/lang/String;)D
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v1, "_"

    const-string v2, "XX_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "len":I
    const-string v1, "XX_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method static getWords(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/android/speech/grammar/GrammarBuilder;->stripAbnfTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "escaped":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/shared/util/SplitIterator;->splitOnWhitespaceOmitEmptyStrings(Ljava/lang/CharSequence;)Lcom/google/android/shared/util/SplitIterator;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/collect/Iterators;->toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 46
    .local v1, "words":[Ljava/lang/String;
    return-object v1
.end method

.method static stripAbnfTokens(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/speech/grammar/GrammarBuilder;->ABNF_RESERVED_TOKENS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/speech/grammar/GrammarBuilder;->getGrammarTokens()Ljava/util/Collection;

    move-result-object v2

    .line 63
    .local v2, "grammarTokens":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/speech/grammar/GrammarToken;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/speech/grammar/GrammarBuilder;->appendEmptyTokensRules(Ljava/lang/StringBuilder;)V

    .line 81
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/speech/grammar/GrammarBuilder;->appendBeforeDisjunctionRules(Ljava/lang/StringBuilder;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/speech/grammar/GrammarBuilder;->appendDisjunctionAssignment(Ljava/lang/StringBuilder;)V

    .line 71
    const/4 v0, 0x1

    .line 72
    .local v0, "first":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/grammar/GrammarToken;

    .line 73
    .local v1, "grammarToken":Lcom/google/android/speech/grammar/GrammarToken;
    if-nez v0, :cond_1

    .line 74
    const-string v4, " | "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    const/4 v0, 0x0

    .line 77
    invoke-virtual {v1, p1}, Lcom/google/android/speech/grammar/GrammarToken;->append(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 79
    .end local v1    # "grammarToken":Lcom/google/android/speech/grammar/GrammarToken;
    :cond_2
    const-string v4, ";\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected abstract appendBeforeDisjunctionRules(Ljava/lang/StringBuilder;)V
.end method

.method protected abstract appendDisjunctionAssignment(Ljava/lang/StringBuilder;)V
.end method

.method protected abstract appendEmptyTokensRules(Ljava/lang/StringBuilder;)V
.end method

.method protected abstract getGrammarTokens()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/speech/grammar/GrammarToken;",
            ">;"
        }
    .end annotation
.end method
