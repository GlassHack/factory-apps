.class Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;
.super Ljava/lang/Object;
.source "AtResultValueParser.java"


# static fields
.field private static final INT_PATTERN:Ljava/util/regex/Pattern;

.field private static final STRING_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private index:I

.field private final intMatcher:Ljava/util/regex/Matcher;

.field private final stringMatcher:Ljava/util/regex/Matcher;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->INT_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    const-string v0, "\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->STRING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->INT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->intMatcher:Ljava/util/regex/Matcher;

    .line 30
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->stringMatcher:Ljava/util/regex/Matcher;

    .line 31
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 33
    return-void
.end method

.method private parse()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "parsedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parseSingle()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :goto_0
    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 40
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    .line 41
    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    const/4 v1, 0x0

    .line 57
    :goto_1
    return-object v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    .line 45
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Expected comma separated list: "

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget v3, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-direct {v2, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 47
    :cond_3
    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 48
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parseSingle()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 57
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private parseInt()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->intMatcher:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Expected integer value: "

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->intMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 118
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->intMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private parseIntOrRange()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parseInt()Ljava/lang/Integer;

    move-result-object v1

    .line 103
    .local v1, "low":Ljava/lang/Integer;
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 104
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 105
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parseInt()Ljava/lang/Integer;

    move-result-object v0

    .line 106
    .local v0, "high":Ljava/lang/Integer;
    new-instance v2, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;-><init>(II)V

    move-object v1, v2

    .line 108
    .end local v0    # "high":Ljava/lang/Integer;
    .end local v1    # "low":Ljava/lang/Integer;
    :cond_0
    return-object v1
.end method

.method private parseNested()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "parser":Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 95
    invoke-direct {v0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 96
    .local v1, "ret":Ljava/lang/Object;
    iget v2, v0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    iput v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 97
    return-object v1
.end method

.method private parseSingle()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    :goto_0
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    goto :goto_0

    .line 66
    :cond_0
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 67
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Unexpected end of value reached: "

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 78
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parseIntOrRange()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    .line 72
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_2

    .line 74
    :sswitch_1
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parseString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 76
    :sswitch_2
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parseNested()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x28 -> :sswitch_2
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private parseString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->stringMatcher:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Expected string type: "

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->stringMatcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->index:I

    .line 88
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->stringMatcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
