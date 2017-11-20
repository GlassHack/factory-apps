.class public Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
.super Ljava/lang/Object;
.source "RemoteVoiceMenuItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final label:Ljava/lang/String;

.field private final subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;

    invoke-direct {v0}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;-><init>(Ljava/lang/String;[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "subMenu"    # [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .line 23
    iput-object p3, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->extras:Landroid/os/Bundle;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 65
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .line 68
    .local v0, "other":Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 69
    iget-object v3, v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_5
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    iget-object v4, v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 76
    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMenu()[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 49
    const/16 v0, 0x1f

    .line 50
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 51
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 52
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 53
    return v1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->subMenu:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
