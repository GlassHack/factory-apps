.class Lcom/google/glass/bluetooth/handsfree/AtResultParser;
.super Ljava/lang/Object;
.source "AtResultParser.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->reader:Ljava/io/BufferedReader;

    .line 26
    return-void
.end method

.method private parseBasicResult(Ljava/lang/String;)Lcom/google/glass/bluetooth/handsfree/AtResult;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/AtResult;

    invoke-direct {v0, p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseExtendedResult(Ljava/lang/String;)Lcom/google/glass/bluetooth/handsfree/AtResult;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 58
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 59
    .local v1, "valueSeparatorIndex":I
    if-ne v1, v4, :cond_0

    .line 60
    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 61
    if-ne v1, v4, :cond_0

    .line 62
    new-instance v3, Lcom/google/glass/bluetooth/handsfree/AtResult;

    invoke-direct {v3, p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;-><init>(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-object v3

    .line 66
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "command":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "valueString":Ljava/lang/String;
    new-instance v3, Lcom/google/glass/bluetooth/handsfree/AtResult;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/AtResultValueParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/glass/bluetooth/handsfree/AtResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->reader:Ljava/io/BufferedReader;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 51
    return-void
.end method

.method public getNextResult()Lcom/google/glass/bluetooth/handsfree/AtResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 33
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    .line 37
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->parseExtendedResult(Ljava/lang/String;)Lcom/google/glass/bluetooth/handsfree/AtResult;

    move-result-object v2

    .line 40
    :goto_1
    return-object v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->parseBasicResult(Ljava/lang/String;)Lcom/google/glass/bluetooth/handsfree/AtResult;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 41
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/text/ParseException;
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error parsing AT result."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
