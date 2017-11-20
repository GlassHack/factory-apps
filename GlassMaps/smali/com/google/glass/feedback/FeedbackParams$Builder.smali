.class public final Lcom/google/glass/feedback/FeedbackParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private additionalFiles:Lcom/google/common/collect/ImmutableList;

.field private allowVoiceNote:Z

.field private bugId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

.field private screenshotFilePath:Ljava/lang/String;

.field private shouldBugReport:Z

.field private shouldScreenshot:Z

.field private shouldUpload:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldUpload:Z

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/feedback/FeedbackParams$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/glass/feedback/FeedbackParams$Builder;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->allowVoiceNote:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->allowVoiceNote:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->bugId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->bugId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/feedback/FeedbackParams$Builder;)Lcom/google/glass/feedback/RecoveryAction;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/feedback/FeedbackParams$Builder;Lcom/google/glass/feedback/RecoveryAction;)Lcom/google/glass/feedback/RecoveryAction;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/feedback/FeedbackParams$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->screenshotFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/feedback/FeedbackParams$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->screenshotFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldBugReport:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldBugReport:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldScreenshot:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldScreenshot:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/feedback/FeedbackParams$Builder;)Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldUpload:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/glass/feedback/FeedbackParams$Builder;Z)Z
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldUpload:Z

    return p1
.end method


# virtual methods
.method public final build()Lcom/google/glass/feedback/FeedbackParams;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    const-string v1, "A recovery action must be set."

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    .line 282
    :cond_0
    new-instance v0, Lcom/google/glass/feedback/FeedbackParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/feedback/FeedbackParams;-><init>(Lcom/google/glass/feedback/FeedbackParams$Builder;Lcom/google/glass/feedback/FeedbackParams$1;)V

    return-object v0
.end method

.method public final setAdditionalFiles(Ljava/lang/Iterable;)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 1

    .prologue
    .line 228
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->additionalFiles:Lcom/google/common/collect/ImmutableList;

    .line 229
    return-object p0
.end method

.method public final setAllowVoiceNote(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->allowVoiceNote:Z

    .line 234
    return-object p0
.end method

.method public final setBugId(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->bugId:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->description:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public final setRecoveryAction(Lcom/google/glass/feedback/RecoveryAction;)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    .line 249
    return-object p0
.end method

.method public final setScreenshotFilePath(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->screenshotFilePath:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method public final setShouldBugReport(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldBugReport:Z

    .line 259
    return-object p0
.end method

.method public final setShouldScreenshot(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldScreenshot:Z

    .line 264
    return-object p0
.end method

.method public final setShouldUpload(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->shouldUpload:Z

    .line 269
    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackParams$Builder;->title:Ljava/lang/String;

    .line 274
    return-object p0
.end method
