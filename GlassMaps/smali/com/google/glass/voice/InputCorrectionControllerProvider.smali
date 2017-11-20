.class public final Lcom/google/glass/voice/InputCorrectionControllerProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/voice/InputCorrectionControllerProvider;


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/voice/InputCorrectionControllerProvider;

    invoke-direct {v0}, Lcom/google/glass/voice/InputCorrectionControllerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/voice/InputCorrectionControllerProvider;->instance:Lcom/google/glass/voice/InputCorrectionControllerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/InputCorrectionControllerProvider;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getInstance()Lcom/google/glass/voice/InputCorrectionControllerProvider;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/voice/InputCorrectionControllerProvider;->instance:Lcom/google/glass/voice/InputCorrectionControllerProvider;

    return-object v0
.end method


# virtual methods
.method public final from(Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;Landroid/content/Context;Z)Lcom/google/glass/voice/InputCorrectionController;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;-><init>(Lcom/google/glass/voice/InputCorrectionControllerProvider;ZLcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/InputCorrectionControllerProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputCorrectionController;

    return-object v0
.end method
