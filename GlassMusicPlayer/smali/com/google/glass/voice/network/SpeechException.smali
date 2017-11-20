.class public final Lcom/google/glass/voice/network/SpeechException;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final detail:Ljava/lang/String;

.field private final simpleName:Ljava/lang/String;

.field private final type:Lcom/google/glass/voice/network/SpeechException$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/glass/voice/network/SpeechException$1;

    invoke-direct {v0}, Lcom/google/glass/voice/network/SpeechException$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/SpeechException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    .line 39
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/SpeechException$Type;->values()[Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 30
    iput-object p2, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_3
    check-cast p1, Lcom/google/glass/voice/network/SpeechException;

    .line 100
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 101
    iget-object v2, p1, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_5
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 108
    iget-object v2, p1, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_6
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_7
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    iget-object v3, p1, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 115
    goto :goto_0
.end method

.method public final getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimpleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    .line 82
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 83
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 85
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v1}, Lcom/google/glass/voice/network/SpeechException$Type;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/SpeechException$Type;->ordinal()I

    move-result v0

    goto :goto_0
.end method
