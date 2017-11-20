.class public Lcom/google/glass/feedback/FeedbackParams;
.super Ljava/lang/Object;
.source "FeedbackParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/feedback/FeedbackParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/feedback/FeedbackParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final additionalFiles:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final allowVoiceNote:Z

.field private final bugId:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

.field private final screenshotFilePath:Ljava/lang/String;

.field private final shouldBugReport:Z

.field private final shouldScreenshot:Z

.field private final shouldUpload:Z

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/feedback/FeedbackParams$1;

    invoke-direct {v0}, Lcom/google/glass/feedback/FeedbackParams$1;-><init>()V

    sput-object v0, Lcom/google/glass/feedback/FeedbackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringListFromParcel(Landroid/os/Parcel;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    .line 56
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    .line 57
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/feedback/RecoveryAction;

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    .line 60
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    .line 62
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    .line 63
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    .line 64
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/feedback/FeedbackParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/glass/feedback/FeedbackParams$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/glass/feedback/FeedbackParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/feedback/FeedbackParams$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/glass/feedback/FeedbackParams$Builder;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$100(Lcom/google/glass/feedback/FeedbackParams$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    .line 43
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$200(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    .line 44
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$300(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$400(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$500(Lcom/google/glass/feedback/FeedbackParams$Builder;)Lcom/google/glass/feedback/RecoveryAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    .line 47
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$600(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$700(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    .line 49
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$800(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    .line 50
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$900(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    .line 51
    invoke-static {p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$1000(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/feedback/FeedbackParams$Builder;Lcom/google/glass/feedback/FeedbackParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/feedback/FeedbackParams$Builder;
    .param p2, "x1"    # Lcom/google/glass/feedback/FeedbackParams$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/glass/feedback/FeedbackParams;-><init>(Lcom/google/glass/feedback/FeedbackParams$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/google/glass/feedback/FeedbackParams$Builder;

    invoke-direct {v0}, Lcom/google/glass/feedback/FeedbackParams$Builder;-><init>()V

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
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/glass/feedback/FeedbackParams;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/google/glass/feedback/FeedbackParams;

    .line 71
    .local v0, "p":Lcom/google/glass/feedback/FeedbackParams;
    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getAdditionalFiles()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    .line 72
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getAllowVoiceNote()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    .line 75
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getRecoveryAction()Lcom/google/glass/feedback/RecoveryAction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    .line 76
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getScreenshotFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    .line 77
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getShouldBugReport()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    .line 78
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getShouldScreenshot()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    .line 79
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getShouldUpload()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Lcom/google/glass/feedback/FeedbackParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 82
    .end local v0    # "p":Lcom/google/glass/feedback/FeedbackParams;
    :cond_0
    return v1
.end method

.method public getAdditionalFiles()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getAllowVoiceNote()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    return v0
.end method

.method public getBugId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoveryAction()Lcom/google/glass/feedback/RecoveryAction;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    return-object v0
.end method

.method public getScreenshotFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldBugReport()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    return v0
.end method

.method public getShouldScreenshot()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    return v0
.end method

.method public getShouldUpload()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    .line 94
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    .line 96
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 87
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/google/glass/feedback/FeedbackParams$Builder;

    invoke-direct {v0}, Lcom/google/glass/feedback/FeedbackParams$Builder;-><init>()V

    .line 178
    .local v0, "builder":Lcom/google/glass/feedback/FeedbackParams$Builder;
    iget-object v1, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$302(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$1002(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$402(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$602(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    iget-boolean v1, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$702(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z

    .line 183
    iget-object v1, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$102(Lcom/google/glass/feedback/FeedbackParams$Builder;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    .line 184
    iget-boolean v1, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$202(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z

    .line 185
    iget-object v1, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$502(Lcom/google/glass/feedback/FeedbackParams$Builder;Lcom/google/glass/feedback/RecoveryAction;)Lcom/google/glass/feedback/RecoveryAction;

    .line 186
    iget-boolean v1, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$802(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z

    .line 187
    iget-boolean v1, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    invoke-static {v0, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->access$902(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z

    .line 188
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "additionalFiles"

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "allowVoiceNote"

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "bugId"

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "recoveryAction"

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "screenshotFilePath"

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "shouldBugReport"

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "shouldScreenshot"

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "shouldUpload"

    iget-boolean v2, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringListToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 108
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->allowVoiceNote:Z

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->bugId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->description:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->screenshotFilePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldBugReport:Z

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 114
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldScreenshot:Z

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 115
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams;->shouldUpload:Z

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 116
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    return-void
.end method
