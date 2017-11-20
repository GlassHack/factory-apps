.class public Lcom/google/glass/browser/TipsViewHelper;
.super Ljava/lang/Object;
.source "TipsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/browser/TipsViewHelper$1;,
        Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;,
        Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;,
        Lcom/google/glass/browser/TipsViewHelper$Tip;
    }
.end annotation


# static fields
.field private static final NO_VALUE:I = -0x1

.field private static final NUMBER_OF_TIMES_TO_SHOW_A_TIP:I = 0x5

.field private static final TIP_DISPLAY_DURATION_MS:J = 0x1388L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static tipDisplayDelayMs:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final handler:Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final tipsShown:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/browser/TipsViewHelper$Tip;",
            ">;"
        }
    .end annotation
.end field

.field private final tipsView:Lcom/google/glass/widget/TipsView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "browser"

    .line 56
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/browser/TipsViewHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 74
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/google/glass/browser/TipsViewHelper;->tipDisplayDelayMs:J

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/glass/widget/TipsView;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "tipsView"    # Lcom/google/glass/widget/TipsView;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-class v0, Lcom/google/glass/browser/TipsViewHelper$Tip;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/browser/TipsViewHelper;->tipsShown:Ljava/util/EnumSet;

    .line 96
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 97
    iput-object p1, p0, Lcom/google/glass/browser/TipsViewHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 98
    iput-object p2, p0, Lcom/google/glass/browser/TipsViewHelper;->tipsView:Lcom/google/glass/widget/TipsView;

    .line 99
    new-instance v0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;-><init>(Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/browser/TipsViewHelper$1;)V

    iput-object v0, p0, Lcom/google/glass/browser/TipsViewHelper;->handler:Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

    .line 100
    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/browser/TipsViewHelper;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/TipsViewHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/browser/TipsViewHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/browser/TipsViewHelper;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/TipsViewHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper;->tipsShown:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/TipsViewHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper;->handler:Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/widget/TipsView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/TipsViewHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper;->tipsView:Lcom/google/glass/widget/TipsView;

    return-object v0
.end method

.method static setTipDelayDurationMs(J)V
    .locals 0
    .param p0, "delayMs"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 278
    sput-wide p0, Lcom/google/glass/browser/TipsViewHelper;->tipDisplayDelayMs:J

    .line 279
    return-void
.end method


# virtual methods
.method public dontShowTip(Lcom/google/glass/browser/TipsViewHelper$Tip;)V
    .locals 1
    .param p1, "tip"    # Lcom/google/glass/browser/TipsViewHelper$Tip;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper;->tipsShown:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public showTip(Lcom/google/glass/browser/TipsViewHelper$Tip;Lcom/google/common/base/Predicate;)V
    .locals 9
    .param p1, "tip"    # Lcom/google/glass/browser/TipsViewHelper$Tip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/browser/TipsViewHelper$Tip;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "condition":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper;->tipsShown:Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

    const-wide/16 v3, 0x1388

    sget-wide v5, Lcom/google/glass/browser/TipsViewHelper;->tipDisplayDelayMs:J

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;-><init>(Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/browser/TipsViewHelper$Tip;JJLcom/google/common/base/Predicate;Lcom/google/glass/browser/TipsViewHelper$1;)V

    .line 122
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
