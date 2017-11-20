.class public final enum Lcom/google/android/speech/embedded/Greco3Mode;
.super Ljava/lang/Enum;
.source "Greco3Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/speech/embedded/Greco3Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/embedded/Greco3Mode;

.field private static final ASCII_SUFFIX:Ljava/lang/String; = ".ascii_proto"

.field public static final enum COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

.field public static final enum HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

.field private static final MODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v1, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v2, "DICTATION"

    invoke-direct {v1, v2, v4}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 13
    new-instance v1, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v2, "ENDPOINTER_VOICESEARCH"

    invoke-direct {v1, v2, v5}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 14
    new-instance v1, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v2, "ENDPOINTER_DICTATION"

    invoke-direct {v1, v2, v6}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 15
    new-instance v1, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v2, "HOTWORD"

    invoke-direct {v1, v2, v7}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 16
    new-instance v1, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v2, "COMPILER"

    invoke-direct {v1, v2, v8}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 17
    new-instance v1, Lcom/google/android/speech/embedded/Greco3Mode;

    const-string v2, "GRAMMAR"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/google/android/speech/embedded/Greco3Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 11
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->$VALUES:[Lcom/google/android/speech/embedded/Greco3Mode;

    .line 21
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 22
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;>;"
    const-string v1, "dictation"

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "endpointer_voicesearch"

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "endpointer_dictation"

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "google_hotword"

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "hotword"

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->HOTWORD:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "compile_grammar"

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "grammar"

    sget-object v2, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sput-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->MODE_MAP:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "separator":I
    if-lez v1, :cond_0

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    return-object v0
.end method

.method public static isAsciiConfiguration(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ascii_proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/io/File;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/speech/embedded/Greco3Mode;->getFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "fileName":Ljava/lang/String;
    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->MODE_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->$VALUES:[Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {v0}, [Lcom/google/android/speech/embedded/Greco3Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method


# virtual methods
.method public isEndpointerMode()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
