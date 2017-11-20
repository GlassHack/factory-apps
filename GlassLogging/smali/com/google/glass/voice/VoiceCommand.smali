.class public Lcom/google/glass/voice/VoiceCommand;
.super Ljava/lang/Object;
.source "VoiceCommand.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final commandCreationUpTimeMillis:J

.field private final literal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/google/glass/voice/VoiceCommand$1;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceCommand$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "customLiteral"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/VoiceCommand;->commandCreationUpTimeMillis:J

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "customLiteral"    # Ljava/lang/String;
    .param p2, "commandCreationUpTimeMillis"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/google/glass/voice/VoiceCommand;->commandCreationUpTimeMillis:J

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/glass/voice/VoiceCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/google/glass/voice/VoiceCommand$1;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    sget v1, Lcom/google/glass/common/R$string;->voice_label_ok_glass:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVoiceCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .param p0, "literal"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final normalizeSemanticTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 74
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 77
    .local v0, "other":Lcom/google/glass/voice/VoiceCommand;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 78
    iget-object v3, v0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 82
    goto :goto_0
.end method

.method public getCommandCreationUpTimeMillis()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/glass/voice/VoiceCommand;->commandCreationUpTimeMillis:J

    return-wide v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x1f

    .line 60
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 61
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 62
    return v1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lcom/google/glass/voice/VoiceCommand;->commandCreationUpTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    return-void
.end method
