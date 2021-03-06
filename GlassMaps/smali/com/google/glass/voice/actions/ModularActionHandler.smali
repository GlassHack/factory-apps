.class Lcom/google/glass/voice/actions/ModularActionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/actions/ActionHandler;


# static fields
.field private static final argumentIndex:[Ljava/lang/String;


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%1$s"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%2$s"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%3$s"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%4$s"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%5$s"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "%6$s"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%7$s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "%8$s"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "%9$s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/actions/ModularActionHandler;->argumentIndex:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/actions/ModularActionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private makeActionDecision(Lcom/google/e/a/gw;)Lcom/google/glass/voice/actions/ActionDecision;
    .locals 2

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/glass/voice/actions/ModularActionParser;->getModularAction(Lcom/google/e/a/gw;)Lcom/google/e/a/gp;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/google/glass/voice/actions/ActionDecision;->NO_OP_DECISON:Lcom/google/glass/voice/actions/ActionDecision;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;

    invoke-direct {v1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->makeActionDecision(Lcom/google/e/a/gp;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v0

    goto :goto_0
.end method

.method private makePhoneCallWithGracePeriod(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Landroid/content/Context;Ljava/lang/String;)Z

    .line 58
    return-void
.end method

.method public static varargs transformArgument(Lcom/google/e/a/gc;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 28
    array-length v0, p1

    sget-object v2, Lcom/google/glass/voice/actions/ModularActionHandler;->argumentIndex:[Ljava/lang/String;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/google/e/a/gc;->a()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 31
    sget-object v2, Lcom/google/glass/voice/actions/ModularActionHandler;->argumentIndex:[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 28
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method


# virtual methods
.method public handleAction(Landroid/content/Context;Lcom/google/e/a/gw;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p2}, Lcom/google/glass/voice/actions/ModularActionHandler;->makeActionDecision(Lcom/google/e/a/gw;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/glass/voice/actions/ActionDecision;->shouldAutoExecute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/google/glass/voice/actions/ModularActionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Modular action found."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1}, Lcom/google/glass/voice/actions/ActionDecision;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v1}, Lcom/google/glass/voice/actions/ActionDecision;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/google/glass/voice/actions/ActionDecision;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.glass.search.actions.CONTACT_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/actions/ModularActionHandler;->makePhoneCallWithGracePeriod(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/actions/ModularActionHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t make a decision."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
