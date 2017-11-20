.class Lcom/google/android/speech/grammar/GrammarToken;
.super Ljava/lang/Object;
.source "GrammarToken.java"


# static fields
.field private static final sFormatter:Ljava/util/Formatter;

.field private static final sSb:Ljava/lang/StringBuilder;


# instance fields
.field private final token:Ljava/lang/String;

.field private weight:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/speech/grammar/GrammarToken;->sSb:Ljava/lang/StringBuilder;

    .line 17
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/google/android/speech/grammar/GrammarToken;->sSb:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lcom/google/android/speech/grammar/GrammarToken;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "weight"    # D

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/speech/grammar/GrammarToken;->token:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/google/android/speech/grammar/GrammarToken;->weight:D

    .line 26
    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncodeWeight(D)Ljava/lang/String;
    .locals 5
    .param p0, "d"    # D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 34
    sget-object v0, Lcom/google/android/speech/grammar/GrammarToken;->sSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    sget-object v0, Lcom/google/android/speech/grammar/GrammarToken;->sFormatter:Ljava/util/Formatter;

    const-string v1, "%f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 37
    sget-object v0, Lcom/google/android/speech/grammar/GrammarToken;->sSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 2
    .param p1, "weight"    # D

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/android/speech/grammar/GrammarToken;->weight:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/speech/grammar/GrammarToken;->weight:D

    .line 30
    return-void
.end method

.method public append(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 41
    iget-wide v1, p0, Lcom/google/android/speech/grammar/GrammarToken;->weight:D

    invoke-static {v1, v2}, Lcom/google/android/speech/grammar/GrammarToken;->getEncodeWeight(D)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "w":Ljava/lang/String;
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "/ "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/google/android/speech/grammar/GrammarToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " {"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "XX_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v1, 0x2e

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/google/android/speech/grammar/GrammarToken;->token:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/speech/grammar/GrammarToken;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "})"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method
