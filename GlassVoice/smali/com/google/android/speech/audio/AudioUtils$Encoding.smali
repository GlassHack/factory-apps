.class public final enum Lcom/google/android/speech/audio/AudioUtils$Encoding;
.super Ljava/lang/Enum;
.source "AudioUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/speech/audio/AudioUtils$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/audio/AudioUtils$Encoding;

.field public static final enum AMR:Lcom/google/android/speech/audio/AudioUtils$Encoding;

.field public static final enum AMRWB:Lcom/google/android/speech/audio/AudioUtils$Encoding;


# instance fields
.field private final mCode:I

.field private final mExt:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;

.field private final mRecognizerEncoding:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 41
    new-instance v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    const-string v1, "AMR"

    const-string v3, "audio/AMR"

    const-string v4, "amr"

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/audio/AudioUtils$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMR:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    .line 42
    new-instance v3, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    const-string v4, "AMRWB"

    const-string v6, "audio/amr-wb"

    const-string v7, "amr"

    const/16 v9, 0x9

    invoke-direct/range {v3 .. v9}, Lcom/google/android/speech/audio/AudioUtils$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMRWB:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    .line 40
    new-array v0, v8, [Lcom/google/android/speech/audio/AudioUtils$Encoding;

    sget-object v1, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMR:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMRWB:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->$VALUES:[Lcom/google/android/speech/audio/AudioUtils$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "ext"    # Ljava/lang/String;
    .param p5, "code"    # I
    .param p6, "recognizerEncoding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mMimeType:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mExt:Ljava/lang/String;

    .line 52
    iput p5, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mCode:I

    .line 53
    iput p6, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mRecognizerEncoding:I

    .line 54
    return-void
.end method

.method public static fromCode(I)Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .locals 7
    .param p0, "code"    # I

    .prologue
    .line 73
    invoke-static {}, Lcom/google/android/speech/audio/AudioUtils$Encoding;->values()[Lcom/google/android/speech/audio/AudioUtils$Encoding;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/android/speech/audio/AudioUtils$Encoding;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 74
    .local v1, "e":Lcom/google/android/speech/audio/AudioUtils$Encoding;
    invoke-virtual {v1}, Lcom/google/android/speech/audio/AudioUtils$Encoding;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 75
    return-object v1

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "e":Lcom/google/android/speech/audio/AudioUtils$Encoding;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->$VALUES:[Lcom/google/android/speech/audio/AudioUtils$Encoding;

    invoke-virtual {v0}, [Lcom/google/android/speech/audio/AudioUtils$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/audio/AudioUtils$Encoding;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mCode:I

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mExt:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerEncoding()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mRecognizerEncoding:I

    return v0
.end method
